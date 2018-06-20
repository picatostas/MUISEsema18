

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
	do
	::(principal_state == VERDE) -> atomic {
		if
		::( timerP) -> principal_state = ESPERA; Vp = 1; Ap = 0; Rp = 0; timerP = 0
		::(!timerP) -> principal_state =  VERDE; Vp = 1; Ap = 0; Rp = 0; timerP = 1 
		fi
	}
	::(principal_state == ESPERA) -> atomic {
		if
		::( timerP && !S ) -> principal_state = ESPERA; Vp = 1; Ap = 0; Rp = 0; timerP = 0
		::(!timerP && !S ) -> principal_state = ESPERA; Vp = 1; Ap = 0; Rp = 0; timerP = 1
		::(S) 			   -> principal_state =  AMBAR; Vp = 0; Ap = 1; Rp = 0; timerP = 0
		fi
	}
	::(principal_state == AMBAR) -> atomic {
		if
		::(!timerP) -> principal_state = AMBAR;  Vp = 0; Ap = 0; Rp = 1;  timerP = 1
		::( timerP) -> principal_state =  ROJO;  Vp = 0; Ap = 1; Rp = 0;  timerP = 0
		fi
	}
	::(principal_state == ROJO)  -> atomic {
		if
		::( P && secundario_state == ROJO) -> principal_state = VERDE;  Vp = 1; Ap = 0; Rp = 0
		::(!P || secundario_state != ROJO) -> principal_state =  ROJO;  Vp = 0; Ap = 0; Rp = 1
		fi
	}
	od
}
active proctype secundario_fsm(){
	secundario_state = ROJO;
	do
	::(secundario_state == VERDE) -> atomic {
		if
		::( timerS) -> secundario_state = ESPERA; Vs = 1; As = 0; Rs = 0; timerS = 0
		::(!timerS) -> secundario_state =  VERDE; Vs = 1; As = 0; Rs = 0; timerS = 1
		fi
	}
	::(secundario_state == ESPERA) -> atomic {
		if
		::( timerS && !P && S ) -> secundario_state = ESPERA; Vs = 1; As = 0; Rs = 0; timerS = 0
		::(!timerS && !P && S ) -> secundario_state = ESPERA; Vs = 1; As = 0; Rs = 0; timerS = 1
		::(P || !S) 			-> secundario_state =  AMBAR; Vs = 0; As = 1; Rs = 0; timerS = 0
		fi
	}
	::(secundario_state == AMBAR) -> atomic {
		if
		::(!timerS) -> secundario_state = AMBAR;  Vs = 0; As = 0; Rs = 1; timerS = 1 
		::( timerS) -> secundario_state =  ROJO;  Vs = 0; As = 1; Rs = 0; timerS = 0
		fi
	}
	::(secundario_state == ROJO) -> atomic {
		if
		::( S && principal_state == ROJO) -> secundario_state = VERDE;  Vs = 1; As = 0; Rs = 0
		::(!S || principal_state != ROJO) -> secundario_state =  ROJO;  Vs = 0; As = 0; Rs = 1
		fi
	}
	od

}
active proctype entorno(){
	S=0;
	P=0;
	timerS = 0;
	timerP = 0;
	do
	::   S = 1
	:: (!S) -> skip
	:: 	 P = 1
	:: (!P)	-> skip
	::  timerS = 1
	:: !timerS -> skip
	::  timerP = 1
	:: !timerP -> skip
	od



}