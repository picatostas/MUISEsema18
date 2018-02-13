#include <assert.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/select.h>
#include <sys/time.h>
#include <time.h>
#include <signal.h>
#include "fsm.h"


#define LIGHT_TIME	3000


enum light_state{
  LIGHT_ON,
  LIGHT_OFF
};


static int button = 0;
static int button_pressed (fsm_t* this) { 
  if (button == 1)
  {
    return 1;
  }
  else
    return 0;

}



static int timer = 0;
static void timer_isr (union sigval arg){ timer = 1; }
static void timer_reset(){
    timer = 0;
}
static void timer_start (int ms){
  timer_t timerid;
  struct itimerspec spec;
  struct sigevent se;
  se.sigev_notify = SIGEV_THREAD;
  se.sigev_value.sival_ptr = &timerid;
  se.sigev_notify_function = timer_isr;
  se.sigev_notify_attributes = NULL;
  spec.it_value.tv_sec = ms / 1000;
  spec.it_value.tv_nsec = (ms % 1000) * 1000000;
  spec.it_interval.tv_sec = 0;
  spec.it_interval.tv_nsec = 0;
  timer_create (CLOCK_REALTIME, &se, &timerid);
  timer_settime (timerid, 0, &spec, NULL);
}
static int timer_finished (fsm_t* this) { return timer; }

static void turn_on (fsm_t* this){
  printf("Luz encendida\n");
  timer_reset();
  timer_start(LIGHT_TIME);
  button = 0;
}
static void turn_off (fsm_t* this){
  printf("Luz Apagada\n");
  button = 0;
}

// Explicit FSM description

static fsm_trans_t light_tt[] = {

  { LIGHT_OFF, button_pressed,   LIGHT_ON,    turn_on },
  {  LIGHT_ON, button_pressed,  LIGHT_OFF,   turn_off },
  {  LIGHT_ON, timer_finished,  LIGHT_OFF,   turn_off },
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

void delay_until (struct timeval* next_activation){

  struct timeval now, timeout;
  gettimeofday (&now, NULL);
  timeval_sub (&timeout, next_activation, &now);
  select (0, NULL, NULL, NULL, &timeout);

}


int main (){

  
  struct timeval clk_period = { 0, 250 * 1000 };
  struct timeval next_activation;


  fsm_t* light_fsm = fsm_new (light_tt);
  
  while (scanf("%d", &button)==1){       
      fsm_fire (light_fsm);
      gettimeofday (&next_activation, NULL);
      timeval_add (&next_activation, &next_activation, &clk_period);
      delay_until (&next_activation);
          
  }
  return 1;
}
