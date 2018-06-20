/*
 * sem_fsm.h
 *
 *  Created on: 20 jun. 2018
 *      Author: pablo
 */

#ifndef SEM_FSM_H_
#define SEM_FSM_H_
#include "fsm.h"
#include "stm32f0xx_hal.h"
uint8_t sens_P,sens_S,timerP,timerS,timerP_enable;
uint8_t timerS_enable,timer_50,timer_30,timer_p_10,timer_s_10;
uint16_t systick_preescaler;
uint8_t rojo_p,rojo_s;
extern TIM_HandleTypeDef htim6,htim14,htim16,htim17;
enum sem_state{
	VERDE,
	ESPERA,
	AMBAR,
	ROJO
};


fsm_t* new_sem_p_fsm();
fsm_t* new_sem_s_fsm();

#endif /* SEM_FSM_H_ */
