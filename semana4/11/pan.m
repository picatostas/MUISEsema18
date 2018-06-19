#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM spec */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(((alm_state==armed)&&pir_sensor)))&&!((!(alm_state)||intrusion))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!(( !( !(((((int)now.alm_state)==4)&&((int)now.pir_sensor))))&& !(( !(((int)now.alm_state))||3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:4 - [(((!(!(((alm_state==armed)&&!(code_ok))))&&(!(alm_state)||disarmed))||(!(!(((alm_state==intrusion)&&!(code_ok))))&&(!(alm_state)||disarmed))))] (10:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][3] = 1;
		if (!((( !( !(((((int)now.alm_state)==4)&& !(((int)now.code_ok)))))&&( !(((int)now.alm_state))||5))||( !( !(((((int)now.alm_state)==3)&& !(((int)now.code_ok)))))&&( !(((int)now.alm_state))||5)))))
			continue;
		/* merge: assert(!(((!(!(((alm_state==armed)&&!(code_ok))))&&(!(alm_state)||disarmed))||(!(!(((alm_state==intrusion)&&!(code_ok))))&&(!(alm_state)||disarmed)))))(0, 4, 10) */
		reached[4][4] = 1;
		spin_assert( !((( !( !(((((int)now.alm_state)==4)&& !(((int)now.code_ok)))))&&( !(((int)now.alm_state))||5))||( !( !(((((int)now.alm_state)==3)&& !(((int)now.code_ok)))))&&( !(((int)now.alm_state))||5)))), " !((( !( !(((alm_state==4)&& !(code_ok))))&&( !(alm_state)||5))||( !( !(((alm_state==3)&& !(code_ok))))&&( !(alm_state)||5))))", II, tt, t);
		/* merge: .(goto)(0, 11, 10) */
		reached[4][11] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 5: // STATE 6 - _spin_nvr.tmp:5 - [((!(!(((alm_state==armed)&&!(code_ok))))||!(!(((alm_state==intrusion)&&!(code_ok))))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][6] = 1;
		if (!(( !( !(((((int)now.alm_state)==4)&& !(((int)now.code_ok)))))|| !( !(((((int)now.alm_state)==3)&& !(((int)now.code_ok))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 13 - _spin_nvr.tmp:10 - [(!((!(alm_state)||intrusion)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][13] = 1;
		if (!( !(( !(((int)now.alm_state))||3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 18 - _spin_nvr.tmp:14 - [((!(alm_state)||disarmed))] (23:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][18] = 1;
		if (!(( !(((int)now.alm_state))||5)))
			continue;
		/* merge: assert(!((!(alm_state)||disarmed)))(0, 19, 23) */
		reached[4][19] = 1;
		spin_assert( !(( !(((int)now.alm_state))||5)), " !(( !(alm_state)||5))", II, tt, t);
		/* merge: .(goto)(0, 24, 23) */
		reached[4][24] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 27 - _spin_nvr.tmp:19 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported27 = 0;
			if (verbose && !reported27)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported27 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][27] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC enviroment */
	case 9: // STATE 1 - alarma.pml:63 - [bt_user = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		(trpt+1)->bup.oval = ((int)now.bt_user);
		now.bt_user = 1;
#ifdef VAR_RANGES
		logval("bt_user", ((int)now.bt_user));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 2 - alarma.pml:64 - [(!(bt_user))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!( !(((int)now.bt_user))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 4 - alarma.pml:65 - [p1 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		(trpt+1)->bup.oval = ((int)now.p1);
		now.p1 = 1;
#ifdef VAR_RANGES
		logval("p1", ((int)now.p1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 5 - alarma.pml:66 - [(!(p1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!( !(((int)now.p1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 7 - alarma.pml:67 - [p2 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		(trpt+1)->bup.oval = ((int)now.p2);
		now.p2 = 1;
#ifdef VAR_RANGES
		logval("p2", ((int)now.p2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 8 - alarma.pml:68 - [(!(p2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][8] = 1;
		if (!( !(((int)now.p2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 10 - alarma.pml:69 - [pir_sensor = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		(trpt+1)->bup.oval = ((int)now.pir_sensor);
		now.pir_sensor = 1;
#ifdef VAR_RANGES
		logval("pir_sensor", ((int)now.pir_sensor));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 11 - alarma.pml:70 - [(!(pir_sensor))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		if (!( !(((int)now.pir_sensor))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 16 - alarma.pml:73 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC lights_fsm */
	case 18: // STATE 1 - alarma.pml:46 - [light_state = off] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = ((int)now.light_state);
		now.light_state = 1;
#ifdef VAR_RANGES
		logval("light_state", ((int)now.light_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 2 - alarma.pml:48 - [((light_state==off))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((((int)now.light_state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 3 - alarma.pml:50 - [((p1||p2))] (14:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((((int)now.p1)||((int)now.p2))))
			continue;
		/* merge: lights_led = 1(14, 4, 14) */
		reached[2][4] = 1;
		(trpt+1)->bup.oval = ((int)lights_led);
		lights_led = 1;
#ifdef VAR_RANGES
		logval("lights_led", ((int)lights_led));
#endif
		;
		/* merge: .(goto)(14, 6, 14) */
		reached[2][6] = 1;
		;
		/* merge: .(goto)(0, 15, 14) */
		reached[2][15] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 21: // STATE 8 - alarma.pml:53 - [((light_state==on))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!((((int)now.light_state)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 9 - alarma.pml:55 - [(((p1||p2)||lights_timer))] (14:0:1 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!(((((int)now.p1)||((int)now.p2))||((int)now.lights_timer))))
			continue;
		/* merge: lights_led = 0(14, 10, 14) */
		reached[2][10] = 1;
		(trpt+1)->bup.oval = ((int)lights_led);
		lights_led = 0;
#ifdef VAR_RANGES
		logval("lights_led", ((int)lights_led));
#endif
		;
		/* merge: .(goto)(14, 12, 14) */
		reached[2][12] = 1;
		;
		/* merge: .(goto)(0, 15, 14) */
		reached[2][15] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 23: // STATE 17 - alarma.pml:59 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC code_fsm */
	case 24: // STATE 1 - alarma.pml:35 - [code_state = parser] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.code_state);
		now.code_state = 6;
#ifdef VAR_RANGES
		logval("code_state", ((int)now.code_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 2 - alarma.pml:37 - [((code_state==parser))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.code_state)==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 3 - alarma.pml:39 - [(bt_user)] (10:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((int)now.bt_user)))
			continue;
		/* merge: code_ok = 1(10, 4, 10) */
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.code_ok);
		now.code_ok = 1;
#ifdef VAR_RANGES
		logval("code_ok", ((int)now.code_ok));
#endif
		;
		/* merge: .(goto)(10, 8, 10) */
		reached[1][8] = 1;
		;
		/* merge: .(goto)(0, 11, 10) */
		reached[1][11] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 27: // STATE 8 - alarma.pml:42 - [.(goto)] (0:10:0 - 2)
		IfNotBlocked
		reached[1][8] = 1;
		;
		/* merge: .(goto)(0, 11, 10) */
		reached[1][11] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 28: // STATE 5 - alarma.pml:40 - [(!(bt_user))] (10:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!( !(((int)now.bt_user))))
			continue;
		/* merge: code_ok = 0(10, 6, 10) */
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.code_ok);
		now.code_ok = 0;
#ifdef VAR_RANGES
		logval("code_ok", ((int)now.code_ok));
#endif
		;
		/* merge: .(goto)(10, 8, 10) */
		reached[1][8] = 1;
		;
		/* merge: .(goto)(0, 11, 10) */
		reached[1][11] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 29: // STATE 13 - alarma.pml:44 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC alm_fsm */
	case 30: // STATE 1 - alarma.pml:13 - [alm_state = disarmed] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.alm_state);
		now.alm_state = 5;
#ifdef VAR_RANGES
		logval("alm_state", ((int)now.alm_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 2 - alarma.pml:15 - [((alm_state==disarmed))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.alm_state)==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 3 - alarma.pml:17 - [(code_ok)] (29:0:3 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((int)now.code_ok)))
			continue;
		/* merge: alm_state = armed(29, 4, 29) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.alm_state);
		now.alm_state = 4;
#ifdef VAR_RANGES
		logval("alm_state", ((int)now.alm_state));
#endif
		;
		/* merge: alm_led = 1(29, 5, 29) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = ((int)alm_led);
		alm_led = 1;
#ifdef VAR_RANGES
		logval("alm_led", ((int)alm_led));
#endif
		;
		/* merge: buzzer = 0(29, 6, 29) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[2] = ((int)buzzer);
		buzzer = 0;
#ifdef VAR_RANGES
		logval("buzzer", ((int)buzzer));
#endif
		;
		/* merge: .(goto)(29, 8, 29) */
		reached[0][8] = 1;
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 33: // STATE 10 - alarma.pml:20 - [((alm_state==armed))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)now.alm_state)==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 11 - alarma.pml:22 - [(code_ok)] (29:0:3 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!(((int)now.code_ok)))
			continue;
		/* merge: alm_state = disarmed(29, 12, 29) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.alm_state);
		now.alm_state = 5;
#ifdef VAR_RANGES
		logval("alm_state", ((int)now.alm_state));
#endif
		;
		/* merge: alm_led = 0(29, 13, 29) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)alm_led);
		alm_led = 0;
#ifdef VAR_RANGES
		logval("alm_led", ((int)alm_led));
#endif
		;
		/* merge: buzzer = 0(29, 14, 29) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[2] = ((int)buzzer);
		buzzer = 0;
#ifdef VAR_RANGES
		logval("buzzer", ((int)buzzer));
#endif
		;
		/* merge: .(goto)(29, 19, 29) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 35: // STATE 19 - alarma.pml:25 - [.(goto)] (0:29:0 - 2)
		IfNotBlocked
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 36: // STATE 15 - alarma.pml:23 - [(pir_sensor)] (29:0:2 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(((int)now.pir_sensor)))
			continue;
		/* merge: alm_state = intrusion(29, 16, 29) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.alm_state);
		now.alm_state = 3;
#ifdef VAR_RANGES
		logval("alm_state", ((int)now.alm_state));
#endif
		;
		/* merge: buzzer = 1(29, 17, 29) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)buzzer);
		buzzer = 1;
#ifdef VAR_RANGES
		logval("buzzer", ((int)buzzer));
#endif
		;
		/* merge: .(goto)(29, 19, 29) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 37: // STATE 21 - alarma.pml:26 - [((alm_state==intrusion))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!((((int)now.alm_state)==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 22 - alarma.pml:28 - [(code_ok)] (29:0:3 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		if (!(((int)now.code_ok)))
			continue;
		/* merge: alm_state = disarmed(29, 23, 29) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.alm_state);
		now.alm_state = 5;
#ifdef VAR_RANGES
		logval("alm_state", ((int)now.alm_state));
#endif
		;
		/* merge: alm_led = 0(29, 24, 29) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals[1] = ((int)alm_led);
		alm_led = 0;
#ifdef VAR_RANGES
		logval("alm_led", ((int)alm_led));
#endif
		;
		/* merge: buzzer = 0(29, 25, 29) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals[2] = ((int)buzzer);
		buzzer = 0;
#ifdef VAR_RANGES
		logval("buzzer", ((int)buzzer));
#endif
		;
		/* merge: .(goto)(29, 27, 29) */
		reached[0][27] = 1;
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 39: // STATE 32 - alarma.pml:33 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

