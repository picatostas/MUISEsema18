#ifndef ALARM_FSM_H_
#define ALARM_FSM_H_
#include "fsm.h"
#include "main.h"
#include "stm32f0xx_hal.h"

extern TIM_HandleTypeDef htim1,htim6,
htim14,
htim16,
htim17;

extern uint8_t system_flags;

enum alarm_state{
  ALM_ARMED,
  ALM_DISARMED,
  ALM_INTRUSION
};

void arm(fsm_t* this);
void disarm(fsm_t* this);
void intrusion(fsm_t* this);
int check_BT(fsm_t* this);
int sensor_detection(fsm_t* this);
fsm_t* new_alarm_fsm(void);


#endif