#include "alarm_fsm.h"


static fsm_trans_t alarm_tt[] = {
  { ALM_DISARMED,           check_BT,      ALM_ARMED,          arm},
  {    ALM_ARMED, 	      check_BT,   ALM_DISARMED,       disarm},
  {    ALM_ARMED,   sensor_detection,  ALM_INTRUSION,    intrusion},
  {ALM_INTRUSION,           check_BT,   ALM_DISARMED,       disarm},
  {-1, NULL, -1, NULL }
};

void arm(fsm_t* this){
	system_flags |=  (ALARM_FLAG);
	system_flags &= ~(BUZZ_FLAG);
	HAL_GPIO_WritePin(ALARM_LED_GPIO_Port,ALARM_LED_Pin,GPIO_PIN_SET);
	HAL_TIM_Base_Stop_IT(&htim14);
	HAL_GPIO_WritePin(LIGHT_LED_GPIO_Port,LIGHT_LED_Pin,GPIO_PIN_RESET);
}
void disarm(fsm_t* this){
	system_flags &= ~(ALARM_FLAG + BUZZ_FLAG);
	HAL_TIM_Base_Stop_IT(&htim14);
	HAL_GPIO_WritePin(ALARM_LED_GPIO_Port,ALARM_LED_Pin,GPIO_PIN_RESET);
	HAL_TIM_PWM_Stop(&htim1,TIM_CHANNEL_2);

}
void intrusion(fsm_t* this){
	system_flags &= ~(PIR_FLAG);
	HAL_TIM_Base_Start_IT(&htim14);
}
// GUARD ACTIONS

int check_BT(fsm_t* this){
	if (__CHECK_FLAG(system_flags,BUTTON_FLAG)){
		system_flags &= ~(BUTTON_FLAG);
		return 1;
	}
	else
		return 0;
}
int sensor_detection(fsm_t* this){
	if ((__CHECK_FLAG(system_flags,ALARM_FLAG)) && (__CHECK_FLAG(system_flags,PIR_FLAG))) {
		return 1;
	}
	else
		return 0;
}

fsm_t * new_alarm_fsm(void){
	return fsm_new(alarm_tt);
}