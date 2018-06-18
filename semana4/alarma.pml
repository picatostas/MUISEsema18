ltl spec{

	[](((alm_state == armed) && !code_ok) -> !<>(alm_state -> disarmed)) &&
	[](((alm_state == intrusion) && !code_ok) -> !<>(alm_state -> disarmed)) &&
	[](((alm_state == armed) && pir_sensor) -> <>(alm_state-> intrusion))
}

byte alm_state, light_state, code_state;
bit bt_user, bt_timer_finished, alm_led,buzzer, lights_led;
bit pir_sensor, code_ok, intrussion;
bit p1,p2,lights_timer;
mtype = {on,off}
mtype = {disarmed,armed,intrusion}
mtype = {parser}


active proctype alm_fsm(){
	alm_state = disarmed;
	do
	::(alm_state == disarmed) -> atomic{
		if
		::(code_ok) -> alm_state = armed; alm_led = 1; buzzer = 0
		fi
	}
	::(alm_state == armed) -> atomic{
		if
		::(code_ok) -> alm_state = disarmed; alm_led = 0; buzzer = 0
		::(pir_sensor) -> alm_state = intrusion; buzzer = 1
		fi
	}
	::(alm_state == intrusion) -> atomic{
		if
		::(code_ok) -> alm_state = disarmed; alm_led = 0; buzzer = 0
		fi
	}
	od

}
active proctype code_fsm(){
	code_state = parser;
	do
	::(code_state == parser)-> atomic{
		if
		::(bt_user) -> code_ok = 1
		::(!bt_user) -> code_ok = 0
		fi
	}
	od	
}
active proctype lights_fsm(){
	light_state = off;
	do
	::(light_state == off) -> atomic{
		if
		::(p1 || p2) -> lights_led = 1
		fi
	}
	::(light_state == on) -> atomic{
		if
		::(p1 || p2 || lights_timer ) -> lights_led = 0
		fi
	} 
	od
}
