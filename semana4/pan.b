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
		
	case 7: // STATE 18
		goto R999;

	case 8: // STATE 27
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC lights_fsm */

	case 9: // STATE 1
		;
		now.light_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 11: // STATE 4
		;
		lights_led = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 13: // STATE 10
		;
		lights_led = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 17
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC code_fsm */

	case 15: // STATE 1
		;
		now.code_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 17: // STATE 4
		;
		now.code_ok = trpt->bup.oval;
		;
		goto R999;
;
		
	case 18: // STATE 8
		goto R999;

	case 19: // STATE 6
		;
		now.code_ok = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC alm_fsm */

	case 21: // STATE 1
		;
		now.alm_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 6
		;
		buzzer = trpt->bup.ovals[2];
		alm_led = trpt->bup.ovals[1];
		now.alm_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 25: // STATE 14
		;
		buzzer = trpt->bup.ovals[2];
		alm_led = trpt->bup.ovals[1];
		now.alm_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		
	case 26: // STATE 19
		goto R999;

	case 27: // STATE 17
		;
		buzzer = trpt->bup.ovals[1];
		now.alm_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 29: // STATE 25
		;
		buzzer = trpt->bup.ovals[2];
		alm_led = trpt->bup.ovals[1];
		now.alm_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 30: // STATE 32
		;
		p_restor(II);
		;
		;
		goto R999;
	}

