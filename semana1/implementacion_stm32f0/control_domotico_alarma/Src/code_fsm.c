/*
 * code_fsm.c
 *
 *  Created on: 12 mar. 2018
 *      Author: Pablo
 */
#include "code_fsm.h"



static int code_introduced(fsm_t * this){
 return code_ready;
}
static int button_pressed(fsm_t * this){

	if((__CHECK_FLAG(system_flags,BUTTON_FLAG)) && !bt_timer_timeout)
		return 1;
	else
		return 0;
}
static int bt_timeout(fsm_t * this){
	return bt_timer_timeout;
}
static void check_code(fsm_t * this){

	code_ok = 0;
	for (int i = 0; i < 3; i++) {
		if(code_in[i] == alarm_code[i]){
			code_ok = 1;
		}
		else{
			code_ok = 0;
			break;
		}
		}

	code_ready = 0;
	for (int i = 0; i < 3; i++)
		code_in[i] = 0;
}
static void next_digit(fsm_t * this){

	bt_timer_timeout = 0;
	digit_count++;
	if (digit_count == 3){
		code_ready = 1;
		digit_count= 0;
	}
}
static void increment_digit(fsm_t * this){

	HAL_TIM_Base_Stop_IT(&htim3);
	HAL_TIM_Base_Start_IT(&htim3);
	code_in[digit_count]++;
	system_flags &= ~(BUTTON_FLAG);
	bt_timer_timeout = 0;

}

static fsm_trans_t code_tt[] = {
  {  CODE_PARSE,      button_pressed,       CODE_PARSE,   increment_digit  	 },
  {  CODE_PARSE,      	  bt_timeout, 	    CODE_PARSE,   next_digit		 },
  {  CODE_PARSE,     code_introduced,       CODE_PARSE,   check_code		 },
  {-1, NULL, -1, NULL }
};

fsm_t * new_code_fsm(void){
	return fsm_new(code_tt);
}
