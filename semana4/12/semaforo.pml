



byte principal_state,secundario_state;
bit P,S,timerP1,timerP2,timerS1,timerS2;
bit V,A,R,v,a,r;
mtype{VERDE,ESPERA,AMBAR,ROJO};




active proctype principal_fsm(){
	principal_state = VERDE;
	do
	::(principal_state == VERDE) -> atomic {
		if
		::(timerP1) -> principal_state = ESPERA; V = 1; A = 0; R = 0
		::(!timerP1) -> principal_state = VERDE; V = 1; A = 0; R = 0
		fi
	}
	::(principal_state == ESPERA) -> atomic {
		if
		::(timerP2 && !S ) -> principal_state = ESPERA;  V = 1; A = 0; R = 0
		::(!timerP2 && !S ) -> principal_state = ESPERA; V = 1; A = 0; R = 0
		::(S) -> principal_state = AMBAR; 				 V = 0; A = 1; R = 0
		fi
	}
	::(principal_state == AMBAR) -> atomic {
		if
		::(timerP2) -> principal_state = AMBAR;  V = 0; A = 0; R = 1
		::(!timerP2) -> principal_state = ROJO;  V = 0; A = 1; R = 0
		fi
	}
	::(principal_state == ROJO) -> atomic {
		if
		::(P && secundario_state == ROJO)  -> principal_state = VERDE;  V = 1; A = 0; R = 0
		::(!P || secundario_state != ROJO) -> principal_state = ROJO    V = 0; A = 0; R = 1
		fi
	}
	od
}
active proctype secundario_fsm(){
	secundario_state = ROJO;
	do
	::(secundario_state == VERDE) -> atomic {
		if
		::(timerS1) -> secundario_state = ESPERA; v = 1; a = 0; r = 0
		::(!timerS1) -> secundario_state = VERDE; v = 1; a = 0; r = 0
		fi
	}
	::(secundario_state == ESPERA) -> atomic {
		if
		::(timerS2 && !P && S ) -> secundario_state = ESPERA;  v = 1; a = 0; r = 0
		::(!timerS2 && !P && S ) -> secundario_state = ESPERA; v = 1; a = 0; r = 0
		::(P || !S) -> secundario_state = AMBAR; 		  	   v = 0; a = 1; r = 0
		fi
	}
	::(secundario_state == AMBAR) -> atomic {
		if
		::(timerS2) -> secundario_state = AMBAR;  v = 0; a = 0; r = 1
		::(!timerS2) -> secundario_state = ROJO;  v = 0; a = 1; r = 0
		fi
	}
	::(secundario_state == ROJO) -> atomic {
		if
		::(S  && primario_state == ROJO) -> secundario_state = VERDE;  v = 1; a = 0; r = 0
		::(!S || primario_state != ROJO) -> secundario_state = ROJO    v = 0; a = 0; r = 1
		fi
	}
	od

}
active proctype entorno(){


}