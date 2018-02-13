#include <assert.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/select.h>
#include <sys/time.h>
#include <time.h>
#include <signal.h>
#include "fsm.h"



#define COFFEE_PRICE    60
#define CUP_TIME	2500
#define COFFEE_TIME	3000
#define MILK_TIME	3000



enum foo_state {

  COFM_WAITING,
  COFM_CUP,
  COFM_COFFEE,
  COFM_MILK,

};


static int var1 = 0;
static int guard_1 (fsm_t* this) { return var1;}
static int var2 = 0;
static int guard_2 (fsm_t* this) { return var2;}
static int button = 0;
static int button_pressed (fsm_t* this) {if (button == 1) return 1; else return 0; }



static int timer = 0;
static void timer_reset(){timer = 0};
static void timer_isr (union sigval arg) { timer = 1; }
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

static void action1 (fsm_t* this){
  printf("Do something\n");
  timer_start(CUP_TIME);
  button = 0;

}

static void action2 (fsm_t* this){
  printf("Do something\n");
  timer_start(CUP_TIME);
  button = 0;

}


// Explicit FSM description

static fsm_trans_t foo_tt[] = {

  { COFM_WAITING, button_pressed, COFM_CUP,     cup    },
  { COFM_CUP,     timer_finished, COFM_COFFEE,  coffee }
  {-1, NULL, -1, NULL },

};

// res = a + b

void timeval_sub (struct timeval *res, struct timeval *a, struct timeval *b){

  res->tv_sec = a->tv_sec - b->tv_sec;
  res->tv_usec = a->tv_usec - b->tv_usec;
  if (res->tv_usec < 0) {
    --res->tv_sec;
    res->tv_usec += 1000000;
  }
}


// res = a + b

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


  fsm_t* foo_fsm = fsm_new (foo_tt);


  //gettimeofday (&next_activation, NULL);
  
  while (scanf("%d", &button)==1) {
       
      fsm_fire (cofm_fsm);
      gettimeofday (&next_activation, NULL);
      timeval_add (&next_activation, &next_activation, &clk_period);
      delay_until (&next_activation);
          
  }
  return 1;
}
