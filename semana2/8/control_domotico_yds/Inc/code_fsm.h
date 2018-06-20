/*
 * code_fsm.h
 *
 *  Created on: 12 mar. 2018
 *      Author: Pablo
 */

#ifndef CODE_FSM_H_
#define CODE_FSM_H_

#include "fsm.h"
#include "main.h"
#include "stm32f0xx_hal.h"

uint8_t alarm_code[3], code_in[3];
uint8_t digit_count,code_ok,code_ready;
uint32_t  bt_timer_timeout;
extern TIM_HandleTypeDef  htim1,
						  htim6,
						  htim3,
						 htim14,
						 htim16,
						 htim17;

extern uint8_t system_flags;


enum code_state{
	CODE_PARSE
};


fsm_t * new_code_fsm(void);

#endif /* CODE_FSM_H_ */
