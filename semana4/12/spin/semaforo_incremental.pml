

ltl spec{
	[]( principal_state != ROJO) -> [](secundario_state == ROJO) &&
	[](secundario_state != ROJO) -> []( principal_state == ROJO)
}

byte principal_state,secundario_state;
bit P,S,timerP,timerS;
bit V,A,R,v,a,r;
mtype{VERDE,ESPERA,AMBAR,ROJO};




active proctype principal_fsm(){
	principal_state = VERDE;
	timerP = 0;
	do
	::(principal_state == VERDE) -> atomic {
		if
		::(timerP > 50) -> principal_state = ESPERA; V = 1; A = 0; R = 0; timerP  = 0
		::(timerP < 50) -> principal_state =  VERDE; V = 1; A = 0; R = 0; timerP++
		fi
	}
	::(principal_state == ESPERA) -> atomic {
		if
		::(timerP  > 10 && !S ) -> principal_state = ESPERA; V = 1; A = 0; R = 0; timerP = 0
		::(timerP  < 10 && !S ) -> principal_state = ESPERA; V = 1; A = 0; R = 0; timerP++
		::(S) 					-> principal_state =  AMBAR; V = 0; A = 1; R = 0; timerP = 0
		fi
	}
	::(principal_state == AMBAR) -> atomic {
		if
		::(timerP < 10) -> principal_state = AMBAR;  V = 0; A = 0; R = 1; timerP++
		::(timerP > 10) -> principal_state =  ROJO;  V = 0; A = 1; R = 0; timerP = 0
		fi
	}
	::(principal_state == ROJO)  -> atomic {
		if
		::(P  && secundario_state == ROJO) -> principal_state = VERDE;  V = 1; A = 0; R = 0
		::(!P || secundario_state != ROJO) -> principal_state =  ROJO;  V = 0; A = 0; R = 1
		fi
	}
	od
}
active proctype secundario_fsm(){
	secundario_state = ROJO;
	timerS = 0;
	do
	::(secundario_state == VERDE) -> atomic {
		if
		::(timerS > 30) -> secundario_state = ESPERA; v = 1; a = 0; r = 0; timerS = 0
		::(timerS < 30) -> secundario_state =  VERDE; v = 1; a = 0; r = 0; timerS++
		fi
	}
	::(secundario_state == ESPERA) -> atomic {
		if
		::(timerS > 10 && !P && S ) -> secundario_state = ESPERA; v = 1; a = 0; r = 0; timerS = 0
		::(timerS < 10 && !P && S ) -> secundario_state = ESPERA; v = 1; a = 0; r = 0; timerS++
		::(P || !S) 				-> secundario_state =  AMBAR; v = 0; a = 1; r = 0; timerS = 0
		fi
	}
	::(secundario_state == AMBAR) -> atomic {
		if
		::(timerS < 10) -> secundario_state = AMBAR;  v = 0; a = 0; r = 1; timerS++ 
		::(timerS > 10) -> secundario_state =  ROJO;  v = 0; a = 1; r = 0; timerS = 0
		fi
	}
	::(secundario_state == ROJO) -> atomic {
		if
		::(S  && principal_state == ROJO) -> secundario_state = VERDE;  v = 1; a = 0; r = 0
		::(!S || principal_state != ROJO) -> secundario_state =  ROJO;  v = 0; a = 0; r = 1
		fi
	}
	od

}
active proctype entorno(){
	do
	::   S = 1
	:: (!S) -> skip
	:: 	 P = 1
	:: (!P)	-> skip
	od



}