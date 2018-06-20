

ltl spec{
	[]( principal_state != ROJO) -> [](secundario_state == ROJO) &&
	[](secundario_state != ROJO) -> []( principal_state == ROJO)
}

byte principal_state,secundario_state;
bit P,S,timerP,timerS;
bit Vp,Ap,Rp,Vs,As,Rs;
mtype{VERDE,ESPERA,AMBAR,ROJO};




active proctype principal_fsm(){
	principal_state = VERDE;
	timerP = 0;
	do
	::(principal_state == VERDE) -> atomic {
		if
		::(timerP > 50) -> principal_state = ESPERA; Vp = 1; Ap = 0; Rp = 0; timerP  = 0
		::(timerP < 50) -> principal_state =  VERDE; Vp = 1; Ap = 0; Rp = 0; timerP++
		fi
	}
	::(principal_state == ESPERA) -> atomic {
		if
		::(timerP  > 10 && !S ) -> principal_state = ESPERA; Vp = 1; Ap = 0; Rp = 0; timerP = 0
		::(timerP  < 10 && !S ) -> principal_state = ESPERA; Vp = 1; Ap = 0; Rp = 0; timerP++
		::(S) 					-> principal_state =  AMBAR; Vp = 0; Ap = 1; Rp = 0; timerP = 0
		fi
	}
	::(principal_state == AMBAR) -> atomic {
		if
		::(timerP < 10) -> principal_state = AMBAR;  Vp = 0; Ap = 0; Rp = 1; timerP++
		::(timerP > 10) -> principal_state =  ROJO;  Vp = 0; Ap = 1; Rp = 0; timerP = 0
		fi
	}
	::(principal_state == ROJO)  -> atomic {
		if
		::(P  && secundario_state == ROJO) -> principal_state = VERDE;  Vp = 1; Ap = 0; Rp = 0
		::(!P || secundario_state != ROJO) -> principal_state =  ROJO;  Vp = 0; Ap = 0; Rp = 1
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
		::(timerS > 30) -> secundario_state = ESPERA; Vs = 1; As = 0; Rs = 0; timerS = 0
		::(timerS < 30) -> secundario_state =  VERDE; Vs = 1; As = 0; Rs = 0; timerS++
		fi
	}
	::(secundario_state == ESPERA) -> atomic {
		if
		::(timerS > 10 && !P && S ) -> secundario_state = ESPERA; Vs = 1; As = 0; Rs = 0; timerS = 0
		::(timerS < 10 && !P && S ) -> secundario_state = ESPERA; Vs = 1; As = 0; Rs = 0; timerS++
		::(P || !S) 				-> secundario_state =  AMBAR; Vs = 0; As = 1; Rs = 0; timerS = 0
		fi
	}
	::(secundario_state == AMBAR) -> atomic {
		if
		::(timerS < 10) -> secundario_state = AMBAR;  Vs = 0; As = 0; Rs = 1; timerS++ 
		::(timerS > 10) -> secundario_state =  ROJO;  Vs = 0; As = 1; Rs = 0; timerS = 0
		fi
	}
	::(secundario_state == ROJO) -> atomic {
		if
		::(S  && principal_state == ROJO) -> secundario_state = VERDE;  Vs = 1; As = 0; Rs = 0
		::(!S || principal_state != ROJO) -> secundario_state =  ROJO;  Vs = 0; As = 0; Rs = 1
		fi
	}
	od

}
active proctype entorno(){
	S=0;
	P=0;
	do
	::   S = 1
	:: (!S) -> skip
	:: 	 P = 1
	:: (!P)	-> skip
	od



}