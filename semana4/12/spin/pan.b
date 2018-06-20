	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM spec */
;
		;
		;
		
	case 4: // STATE 3
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 11: // STATE 29
		goto R999;
;
		
	case 12: // STATE 37
		goto R999;
;
		;
		;
		;
		;
		
	case 15: // STATE 49
		goto R999;

	case 16: // STATE 58
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno */

	case 17: // STATE 1
		;
		now.S = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 2
		;
		now.P = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 3
		;
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: // STATE 6
		;
		now.P = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC secundario_fsm */

	case 24: // STATE 1
		;
		now.secundario_state = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 2
		;
		now.timerS = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 27: // STATE 9
		;
		now.timerS = trpt->bup.ovals[4];
		Rs = trpt->bup.ovals[3];
		As = trpt->bup.ovals[2];
		Vs = trpt->bup.ovals[1];
		now.secundario_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		
	case 28: // STATE 17
		goto R999;

	case 29: // STATE 15
		;
		now.timerS = trpt->bup.ovals[4];
		Rs = trpt->bup.ovals[3];
		As = trpt->bup.ovals[2];
		Vs = trpt->bup.ovals[1];
		now.secundario_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 31: // STATE 25
		;
		now.timerS = trpt->bup.ovals[4];
		Rs = trpt->bup.ovals[3];
		As = trpt->bup.ovals[2];
		Vs = trpt->bup.ovals[1];
		now.secundario_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		
	case 32: // STATE 39
		goto R999;

	case 33: // STATE 31
		;
		now.timerS = trpt->bup.ovals[4];
		Rs = trpt->bup.ovals[3];
		As = trpt->bup.ovals[2];
		Vs = trpt->bup.ovals[1];
		now.secundario_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 34: // STATE 37
		;
		now.timerS = trpt->bup.ovals[4];
		Rs = trpt->bup.ovals[3];
		As = trpt->bup.ovals[2];
		Vs = trpt->bup.ovals[1];
		now.secundario_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 36: // STATE 47
		;
		now.timerS = trpt->bup.ovals[4];
		Rs = trpt->bup.ovals[3];
		As = trpt->bup.ovals[2];
		Vs = trpt->bup.ovals[1];
		now.secundario_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		
	case 37: // STATE 55
		goto R999;

	case 38: // STATE 53
		;
		now.timerS = trpt->bup.ovals[4];
		Rs = trpt->bup.ovals[3];
		As = trpt->bup.ovals[2];
		Vs = trpt->bup.ovals[1];
		now.secundario_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 40: // STATE 62
		;
		Rs = trpt->bup.ovals[3];
		As = trpt->bup.ovals[2];
		Vs = trpt->bup.ovals[1];
		now.secundario_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		
	case 41: // STATE 69
		goto R999;

	case 42: // STATE 67
		;
		Rs = trpt->bup.ovals[3];
		As = trpt->bup.ovals[2];
		Vs = trpt->bup.ovals[1];
		now.secundario_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 43: // STATE 74
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC principal_fsm */

	case 44: // STATE 1
		;
		now.principal_state = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 2
		;
		now.timerP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 47: // STATE 9
		;
		now.timerP = trpt->bup.ovals[4];
		Rp = trpt->bup.ovals[3];
		Ap = trpt->bup.ovals[2];
		Vp = trpt->bup.ovals[1];
		now.principal_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		
	case 48: // STATE 17
		goto R999;

	case 49: // STATE 15
		;
		now.timerP = trpt->bup.ovals[4];
		Rp = trpt->bup.ovals[3];
		Ap = trpt->bup.ovals[2];
		Vp = trpt->bup.ovals[1];
		now.principal_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 51: // STATE 25
		;
		now.timerP = trpt->bup.ovals[4];
		Rp = trpt->bup.ovals[3];
		Ap = trpt->bup.ovals[2];
		Vp = trpt->bup.ovals[1];
		now.principal_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		
	case 52: // STATE 39
		goto R999;

	case 53: // STATE 31
		;
		now.timerP = trpt->bup.ovals[4];
		Rp = trpt->bup.ovals[3];
		Ap = trpt->bup.ovals[2];
		Vp = trpt->bup.ovals[1];
		now.principal_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 54: // STATE 37
		;
		now.timerP = trpt->bup.ovals[4];
		Rp = trpt->bup.ovals[3];
		Ap = trpt->bup.ovals[2];
		Vp = trpt->bup.ovals[1];
		now.principal_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 56: // STATE 47
		;
		now.timerP = trpt->bup.ovals[4];
		Rp = trpt->bup.ovals[3];
		Ap = trpt->bup.ovals[2];
		Vp = trpt->bup.ovals[1];
		now.principal_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		
	case 57: // STATE 55
		goto R999;

	case 58: // STATE 53
		;
		now.timerP = trpt->bup.ovals[4];
		Rp = trpt->bup.ovals[3];
		Ap = trpt->bup.ovals[2];
		Vp = trpt->bup.ovals[1];
		now.principal_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 60: // STATE 62
		;
		Rp = trpt->bup.ovals[3];
		Ap = trpt->bup.ovals[2];
		Vp = trpt->bup.ovals[1];
		now.principal_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		
	case 61: // STATE 69
		goto R999;

	case 62: // STATE 67
		;
		Rp = trpt->bup.ovals[3];
		Ap = trpt->bup.ovals[2];
		Vp = trpt->bup.ovals[1];
		now.principal_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 63: // STATE 74
		;
		p_restor(II);
		;
		;
		goto R999;
	}

