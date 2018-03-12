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

uint8_t alarm_code[3] = "123", code_in[3] = "000";
uint8_t count, digit_count = 0;
uint32_t bt_timer_timeout = 1;
extern TIM_HandleTypeDef  htim1,
						  htim6,
						 htim14,
						 htim16,
						 htim17;

extern uint8_t system_flags;


enum code_state{
	CODE_IDLE,
	CODE_PARSE_DIGIT,
	CODE_CHECK
};

int button_pressed(fsm_t * this);
int valid_pulse(fsm_t * this);
int pulse_timeout(fsm_t * this);
int check_ok_code(fsm_t * this);
int check_wrong_code(fsm_t * this);
void init_code(fsm_t * this);
void increment_digit(fsm_t * this);
void store_digit(fsm_t * this);
void change_alarm_status(fsm_t * this);
fsm_t * new_code_fsm(void);

#endif /* CODE_FSM_H_ */
