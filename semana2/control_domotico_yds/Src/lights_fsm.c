#include <lights_fsm.h>
 


static fsm_trans_t light_tt[] = {
  { LIGHT_OFF, button_pressed,   LIGHT_ON,    turn_on },
  {  LIGHT_ON, button_pressed,  LIGHT_OFF,   turn_off },
  {  LIGHT_ON, timer_finished,  LIGHT_OFF,   turn_off },
  {-1, NULL, -1, NULL }
};

void turn_on(fsm_t* this){

	HAL_GPIO_WritePin(LIGHT_LED_GPIO_Port,LIGHT_LED_Pin,GPIO_PIN_SET);
	HAL_TIM_Base_Start_IT(&htim16);
}
void turn_off(fsm_t* this){
	system_flags &= ~(TIMER_FLAG);
	HAL_GPIO_WritePin(LIGHT_LED_GPIO_Port,LIGHT_LED_Pin,GPIO_PIN_RESET);
	HAL_TIM_Base_Stop_IT(&htim16);
}
int button_pressed(fsm_t* this){
	if (__CHECK_FLAG(system_flags,LIGHT_FLAG)){
		system_flags &= ~(LIGHT_FLAG);
		return 1;
	}
	else
		return 0;
}
int timer_finished(fsm_t* this){
	if (__CHECK_FLAG(system_flags,TIMER_FLAG)) {
		return 1;
	}
	else
		return 0;
}
fsm_t * new_lights_fsm(void){

	return fsm_new(light_tt);
}