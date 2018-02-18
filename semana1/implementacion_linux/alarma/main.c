#include <assert.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/select.h>
#include <sys/time.h>
#include <time.h>
#include <signal.h>
#include "fsm.h"

enum alarm_state {

  ALM_ARMED,
  ALM_DISARMED,
  ALM_INTRUSION

};

static const char code[] = "1234";
static char typed_code[5];
static int check_ok_code(fsm_t* this){
  if (strcmp(typed_code,code) == 0)
  {
    return 1;
  }
  else
    return 0;
}

static int check_wrong_code(fsm_t* this){
  if (strcmp(typed_code,code) != 0)
  {
    return 1;
  }
  else
    return 0;
}


static int pir_sensor = 0;
static int sensor_detection (fsm_t* this) {return pir_sensor; }


static void arm (fsm_t* this){
  printf("Sistema Armado\n");  
}
static void disarm (fsm_t* this){
   printf("Sistema Desarmado\n");
}

static void wrong_code (fsm_t* this){
   printf("Código Incorrecto\n");
}

static void intrusion (fsm_t* this){
   printf("Intrusion detectada\n");
}

// Explicit FSM description

static fsm_trans_t alarm_tt[] = {

  { ALM_DISARMED,      check_ok_code,      ALM_ARMED,          arm},
  {    ALM_ARMED,      check_ok_code,   ALM_DISARMED,       disarm},
  {    ALM_ARMED,   sensor_detection,  ALM_INTRUSION,    intrusion},
  {ALM_INTRUSION,      check_ok_code,   ALM_DISARMED,       disarm},  
  {ALM_INTRUSION,   check_wrong_code,  ALM_INTRUSION,   wrong_code},
  {-1, NULL, -1, NULL }

};


void timeval_sub (struct timeval *res, struct timeval *a, struct timeval *b){

  res->tv_sec = a->tv_sec - b->tv_sec;
  res->tv_usec = a->tv_usec - b->tv_usec;
  if (res->tv_usec < 0) {
    --res->tv_sec;
    res->tv_usec += 1000000;
  }
}



void timeval_add (struct timeval *res, struct timeval *a, struct timeval *b){

  res->tv_sec = a->tv_sec + b->tv_sec
    + a->tv_usec / 1000000 + b->tv_usec / 1000000; 
  res->tv_usec = a->tv_usec % 1000000 + b->tv_usec % 1000000;

}



// wait until next_activation (absolute time)

void delay_until (struct timeval* next_activation){

  struct timeval now, timeout;
  gettimeofday (&now, NULL);
  timeval_sub (&timeout, next_activation, &now);
  select (0, NULL, NULL, NULL, &timeout);

}


int main (){

  
  struct timeval clk_period = { 0, 250 * 1000 };
  struct timeval next_activation;
  fsm_t* alarm_fsm = fsm_new (alarm_tt);
  //gettimeofday (&next_activation, NULL);
  
  while (scanf("%s %d",typed_code, &pir_sensor)==2){
       
      fsm_fire (alarm_fsm);
      gettimeofday (&next_activation, NULL);
      timeval_add (&next_activation, &next_activation, &clk_period);
      delay_until (&next_activation);
          
  }
  return 1;
}
