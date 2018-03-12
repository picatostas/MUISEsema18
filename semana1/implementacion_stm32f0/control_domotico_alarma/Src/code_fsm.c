/*
 * code_fsm.c
 *
 *  Created on: 12 mar. 2018
 *      Author: Pablo
 */
#include "code_fsm.h"

static fsm_trans_t code_tt[] = {
  { 		CODE_IDLE,    button_pressed,    CODE_PARSE_DIGIT,   init_code  		 },
  {  CODE_PARSE_DIGIT, 	     valid_pulse, 	 CODE_PARSE_DIGIT,   increment_digit 	 },
  {  CODE_PARSE_DIGIT,     pulse_timeout, 	 CODE_PARSE_DIGIT,   store_digit		 },
  {  CODE_PARSE_DIGIT,     check_ok_code, 		    CODE_IDLE,   change_alarm_status },
  {  CODE_PARSE_DIGIT,  check_wrong_code, 		    CODE_IDLE, 	 NULL   			 },
  {-1, NULL, -1, NULL }
};
int button_pressed(fsm_t * this){

	return (__CHECK_FLAG(system_flags,BUTTON_FLAG));
}
int valid_pulse(fsm_t * this){

	if((__CHECK_FLAG(system_flags,BUTTON_FLAG)) && bt_timer_timeout)
		return 1;
	else
		return 0;
}
int pulse_timeout(fsm_t * this){

	return bt_timer_timeout;
}
int check_ok_code(fsm_t * this){

	int code_ok = 0;
	for (int i = 0; i < 3; i++) {
		if(code_in[i] == alarm_code[i]){
			code_ok = 1;
		}
		else
			code_ok = 0;
			break;
	}
	return code_ok;
}
int check_wrong_code(fsm_t * this){

	return !(check_ok_code(this));
}
void init_code(fsm_t * this){
	count = 0;
	digit_count = 0;
}
void increment_digit(fsm_t * this){
	count++;

}
void store_digit(fsm_t * this){

	code_in[digit_count] = count;
	count = 0;
	digit_count++;
	if(digit_count>2){
		digit_count = 0;
	}
}
void change_alarm_status(fsm_t * this){

	system_flags ^= ALARM_FLAG;
}

fsm_t * new_code_fsm(void){
	return fsm_new(code_tt);
}
