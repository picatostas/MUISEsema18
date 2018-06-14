#ifndef LIGHTS_FSM_H_
#define LIGHTS_FSM_H_
#include "fsm.h"
#include "main.h"
#include "stm32f0xx_hal.h"

extern TIM_HandleTypeDef  htim1,
						  htim6,
						 htim14,
						 htim16,
						 htim17;

extern uint8_t system_flags;

enum light_state{
  LIGHT_ON,
  LIGHT_OFF
};

void turn_on(fsm_t* this);
void turn_off(fsm_t* this);
int button_pressed(fsm_t* this);
int timer_finished(fsm_t* this);
fsm_t * new_lights_fsm(void);
#endif
