/*
 * sem_fsm.c
 *
 *  Created on: 20 jun. 2018
 *      Author: pablo
 */
#include "sem_fsm.h"
#include "stm32f0xx_hal.h"
#include "stdint.h"



static int no_timeout_50(fsm_t * this){
	return !timer_50;
}
static int timeout_50(fsm_t * this){
	return timer_50;
}
static int timeout_p_10_sin_coche(fsm_t * this){
	if ( timer_p_10 && !sens_S)
		return 1;
	return 0;
}
static int no_timeout_p_10_sin_coche(fsm_t * this){
	if ( !timer_p_10 && !sens_S)
		return 1;
	return 0;
}
static int timeout_p_10(fsm_t * this){
	return timer_p_10;
}
static int no_timeout_p_10(fsm_t * this){
	return !timer_p_10;
}
static int coche_s(fsm_t * this){
	return sens_S;
}
static int verde_s_seguro(fsm_t * this){
	if(rojo_s && sens_P){
		return 1;
	}
	return 0;
}
static void verde_p_timeout(fsm_t * this){
	HAL_GPIO_WritePin(SEM_P_GPIO_Port,SEM_P_Pin,GPIO_PIN_SET);
	timer_50 = 0;
}
static void start_p_ambar(fsm_t * this){
	timerP = 0;
	HAL_TIM_Base_Start_IT(&htim16);
}
static void stop_p_ambar(fsm_t * this){
	HAL_TIM_Base_Stop_IT(&htim16);
	HAL_GPIO_WritePin(SEM_P_GPIO_Port,SEM_P_Pin,GPIO_PIN_RESET);
	timerP_enable = 0;


}
static void reset_p_10(fsm_t * this){
	timerP = 0;
}
static void verde_p(fsm_t * this){
	HAL_GPIO_WritePin(SEM_P_GPIO_Port,SEM_P_Pin,GPIO_PIN_SET);
	timerP_enable = 1;


}
static fsm_trans_t sem_p_tt[] = {
		{ VERDE,   			   timeout_50,ESPERA,verde_p_timeout},
		{ VERDE,       		no_timeout_50, VERDE,   NULL},
		{ESPERA,   timeout_p_10_sin_coche,ESPERA, 	reset_p_10},
		{ESPERA,no_timeout_p_10_sin_coche,ESPERA,	NULL},
		{ESPERA,        		  coche_s, AMBAR, start_p_ambar},
		{ AMBAR, 		  no_timeout_p_10, AMBAR,	NULL},
		{ AMBAR,   			 timeout_p_10,  ROJO,  stop_p_ambar},
		{  ROJO,    	   verde_s_seguro, VERDE,	verde_p},

};


static int timeout_30(fsm_t * this){
	return timer_30;
}
static int no_timeout_30(fsm_t * this){
	return timer_30;
}
static int timeout_s_10_sin_coche(fsm_t * this){
	if ( timer_s_10 && sens_S && !sens_P)
		return 1;
	return 0;
}
static int no_timeout_s_10_sin_coche(fsm_t * this){
	if ( !timer_s_10 && sens_S && !sens_P)
		return 1;
	return 0;
}
static int timeout_s_10(fsm_t * this){
	return timer_s_10;
}
static int no_timeout_s_10(fsm_t * this){
	return !timer_s_10;
}
static int coche_p(fsm_t * this){
	return sens_S;
}
static int verde_p_seguro(fsm_t * this){
	if(rojo_p && sens_S){
		return 1;
	}
	return 0;
}
static void verde_s_timeout(fsm_t * this){
	HAL_GPIO_WritePin(SEM_S_GPIO_Port,SEM_S_Pin,GPIO_PIN_SET);
	timer_30 = 0;
}
static void start_s_ambar(fsm_t * this){
	timerS = 0;
	HAL_TIM_Base_Start_IT(&htim17);
}
static void stop_s_ambar(fsm_t * this){
	HAL_TIM_Base_Stop_IT(&htim17);
	HAL_GPIO_WritePin(SEM_S_GPIO_Port,SEM_S_Pin,GPIO_PIN_RESET);
	timerS_enable = 0;
}
static void reset_s_10(fsm_t * this){
	timerS = 0;
}
static void verde_s(fsm_t * this){
	HAL_GPIO_WritePin(SEM_S_GPIO_Port,SEM_S_Pin,GPIO_PIN_SET);
	timerS_enable = 1;

}
static fsm_trans_t sem_s_tt[] = {
		{ VERDE,   			   timeout_30,ESPERA,verde_s_timeout},
		{ VERDE,       		no_timeout_30, VERDE,	NULL},
		{ESPERA,   timeout_s_10_sin_coche,ESPERA, reset_s_10	},
		{ESPERA,no_timeout_s_10_sin_coche,ESPERA,	NULL},
		{ESPERA,        		  coche_p, AMBAR,  start_s_ambar},
		{ AMBAR, 		  no_timeout_s_10, AMBAR,	NULL},
		{ AMBAR,   			 timeout_s_10,  ROJO,  stop_s_ambar},
		{  ROJO,    	   verde_p_seguro, VERDE,	verde_s},

};

fsm_t* new_sem_p_fsm(){
	return fsm_new(sem_p_tt);
}
fsm_t* new_sem_s_fsm(){
	return fsm_new(sem_s_tt);
}



void HAL_SYSTICK_Callback(){

	systick_preescaler ++;

	if(systick_preescaler == 1000){ // el systick va a 1ms


	if(timerP_enable){
		timerP++;
		if(timerP == 10) timer_p_10 = 1;
		if(timerP == 50) timer_50   = 1;

	}
	if(timerS_enable){
		timerS++;
		if(timerS == 10) timer_s_10 = 1;
		if(timerS == 30) timer_30   = 1;

	}	systick_preescaler = 0;
	}

}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin){

	if(GPIO_Pin == S_Pin){
		HAL_TIM_Base_Start_IT(&htim6);
	}
	if(GPIO_Pin == P_Pin){
		HAL_TIM_Base_Start_IT(&htim14);
	}

}
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim){

	if (htim->Instance == TIM6){
		sens_S = 1;
	}
	if (htim->Instance == TIM14){
		sens_P = 1;
	}
	if (htim->Instance == TIM16){
		HAL_GPIO_TogglePin(SEM_P_GPIO_Port,SEM_P_Pin);
	}
	if (htim->Instance == TIM17){
		HAL_GPIO_TogglePin(SEM_S_GPIO_Port,SEM_S_Pin);
	}
}



