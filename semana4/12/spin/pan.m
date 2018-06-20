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
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(((!((principal_state==ROJO))&&(secundario_state!=ROJO))&&(secundario_state==ROJO)))] (0:0:0 - 1)
		
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
		reached[3][1] = 1;
		if (!((( !((((int)now.principal_state)==1))&&(((int)now.secundario_state)!=1))&&(((int)now.secundario_state)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:4 - [((!((principal_state!=ROJO))&&!((principal_state==ROJO))))] (14:0:0 - 1)
		
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
		reached[3][3] = 1;
		if (!(( !((((int)now.principal_state)!=1))&& !((((int)now.principal_state)==1)))))
			continue;
		/* merge: assert(!((!((principal_state!=ROJO))&&!((principal_state==ROJO)))))(0, 4, 14) */
		reached[3][4] = 1;
		spin_assert( !(( !((((int)now.principal_state)!=1))&& !((((int)now.principal_state)==1)))), " !(( !((principal_state!=1))&& !((principal_state==1))))", II, tt, t);
		/* merge: .(goto)(0, 15, 14) */
		reached[3][15] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 5: // STATE 6 - _spin_nvr.tmp:5 - [(!((principal_state==ROJO)))] (0:0:0 - 1)
		
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
		reached[3][6] = 1;
		if (!( !((((int)now.principal_state)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 8 - _spin_nvr.tmp:6 - [(((secundario_state!=ROJO)&&(secundario_state==ROJO)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][8] = 1;
		if (!(((((int)now.secundario_state)!=1)&&(((int)now.secundario_state)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 10 - _spin_nvr.tmp:7 - [(!((principal_state!=ROJO)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!( !((((int)now.principal_state)!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 17 - _spin_nvr.tmp:12 - [(((secundario_state!=ROJO)&&(secundario_state==ROJO)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][17] = 1;
		if (!(((((int)now.secundario_state)!=1)&&(((int)now.secundario_state)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 22 - _spin_nvr.tmp:16 - [(((!((principal_state==ROJO))&&(secundario_state!=ROJO))&&(secundario_state==ROJO)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][22] = 1;
		if (!((( !((((int)now.principal_state)==1))&&(((int)now.secundario_state)!=1))&&(((int)now.secundario_state)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 24 - _spin_nvr.tmp:17 - [(((secundario_state!=ROJO)&&(secundario_state==ROJO)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][24] = 1;
		if (!(((((int)now.secundario_state)!=1)&&(((int)now.secundario_state)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 29 - _spin_nvr.tmp:21 - [(!((principal_state==ROJO)))] (34:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported29 = 0;
			if (verbose && !reported29)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported29 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported29 = 0;
			if (verbose && !reported29)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported29 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][29] = 1;
		if (!( !((((int)now.principal_state)==1))))
			continue;
		/* merge: assert(!(!((principal_state==ROJO))))(0, 30, 34) */
		reached[3][30] = 1;
		spin_assert( !( !((((int)now.principal_state)==1))), " !( !((principal_state==1)))", II, tt, t);
		/* merge: .(goto)(0, 35, 34) */
		reached[3][35] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 37 - _spin_nvr.tmp:26 - [((!((principal_state!=ROJO))&&!((principal_state==ROJO))))] (46:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported37 = 0;
			if (verbose && !reported37)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported37 = 0;
			if (verbose && !reported37)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][37] = 1;
		if (!(( !((((int)now.principal_state)!=1))&& !((((int)now.principal_state)==1)))))
			continue;
		/* merge: assert(!((!((principal_state!=ROJO))&&!((principal_state==ROJO)))))(0, 38, 46) */
		reached[3][38] = 1;
		spin_assert( !(( !((((int)now.principal_state)!=1))&& !((((int)now.principal_state)==1)))), " !(( !((principal_state!=1))&& !((principal_state==1))))", II, tt, t);
		/* merge: .(goto)(0, 47, 46) */
		reached[3][47] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: // STATE 40 - _spin_nvr.tmp:27 - [(!((principal_state!=ROJO)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported40 = 0;
			if (verbose && !reported40)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported40 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported40 = 0;
			if (verbose && !reported40)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported40 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][40] = 1;
		if (!( !((((int)now.principal_state)!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 44 - _spin_nvr.tmp:29 - [(!((principal_state==ROJO)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported44 = 0;
			if (verbose && !reported44)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported44 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported44 = 0;
			if (verbose && !reported44)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported44 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][44] = 1;
		if (!( !((((int)now.principal_state)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 49 - _spin_nvr.tmp:33 - [(!((principal_state!=ROJO)))] (54:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported49 = 0;
			if (verbose && !reported49)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported49 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported49 = 0;
			if (verbose && !reported49)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported49 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][49] = 1;
		if (!( !((((int)now.principal_state)!=1))))
			continue;
		/* merge: assert(!(!((principal_state!=ROJO))))(0, 50, 54) */
		reached[3][50] = 1;
		spin_assert( !( !((((int)now.principal_state)!=1))), " !( !((principal_state!=1)))", II, tt, t);
		/* merge: .(goto)(0, 55, 54) */
		reached[3][55] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 16: // STATE 58 - _spin_nvr.tmp:38 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][58] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno */
	case 17: // STATE 1 - semaforo.pml:77 - [S = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 0;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 2 - semaforo.pml:78 - [P = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = ((int)now.P);
		now.P = 0;
#ifdef VAR_RANGES
		logval("P", ((int)now.P));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 3 - semaforo.pml:80 - [S = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 1;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 4 - semaforo.pml:81 - [(!(S))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!( !(((int)now.S))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 6 - semaforo.pml:82 - [P = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		(trpt+1)->bup.oval = ((int)now.P);
		now.P = 1;
#ifdef VAR_RANGES
		logval("P", ((int)now.P));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 7 - semaforo.pml:83 - [(!(P))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		if (!( !(((int)now.P))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 12 - semaforo.pml:88 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC secundario_fsm */
	case 24: // STATE 1 - semaforo.pml:45 - [secundario_state = ROJO] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.secundario_state);
		now.secundario_state = 1;
#ifdef VAR_RANGES
		logval("secundario_state", ((int)now.secundario_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 2 - semaforo.pml:46 - [timerS = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)now.timerS);
		now.timerS = 0;
#ifdef VAR_RANGES
		logval("timerS", ((int)now.timerS));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 3 - semaforo.pml:48 - [((secundario_state==VERDE))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((int)now.secundario_state)==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 4 - semaforo.pml:50 - [((timerS>30))] (71:0:5 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((int)now.timerS)>30)))
			continue;
		/* merge: secundario_state = ESPERA(71, 5, 71) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.secundario_state);
		now.secundario_state = 3;
#ifdef VAR_RANGES
		logval("secundario_state", ((int)now.secundario_state));
#endif
		;
		/* merge: Vs = 1(71, 6, 71) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vs);
		Vs = 1;
#ifdef VAR_RANGES
		logval("Vs", ((int)Vs));
#endif
		;
		/* merge: As = 0(71, 7, 71) */
		reached[1][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)As);
		As = 0;
#ifdef VAR_RANGES
		logval("As", ((int)As));
#endif
		;
		/* merge: Rs = 0(71, 8, 71) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rs);
		Rs = 0;
#ifdef VAR_RANGES
		logval("Rs", ((int)Rs));
#endif
		;
		/* merge: timerS = 0(71, 9, 71) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerS);
		now.timerS = 0;
#ifdef VAR_RANGES
		logval("timerS", ((int)now.timerS));
#endif
		;
		/* merge: .(goto)(71, 17, 71) */
		reached[1][17] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 28: // STATE 17 - semaforo.pml:53 - [.(goto)] (0:71:0 - 2)
		IfNotBlocked
		reached[1][17] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 29: // STATE 10 - semaforo.pml:51 - [((timerS<30))] (71:0:5 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((((int)now.timerS)<30)))
			continue;
		/* merge: secundario_state = VERDE(71, 11, 71) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.secundario_state);
		now.secundario_state = 4;
#ifdef VAR_RANGES
		logval("secundario_state", ((int)now.secundario_state));
#endif
		;
		/* merge: Vs = 1(71, 12, 71) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vs);
		Vs = 1;
#ifdef VAR_RANGES
		logval("Vs", ((int)Vs));
#endif
		;
		/* merge: As = 0(71, 13, 71) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[2] = ((int)As);
		As = 0;
#ifdef VAR_RANGES
		logval("As", ((int)As));
#endif
		;
		/* merge: Rs = 0(71, 14, 71) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rs);
		Rs = 0;
#ifdef VAR_RANGES
		logval("Rs", ((int)Rs));
#endif
		;
		/* merge: timerS = (timerS+1)(71, 15, 71) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerS);
		now.timerS = (((int)now.timerS)+1);
#ifdef VAR_RANGES
		logval("timerS", ((int)now.timerS));
#endif
		;
		/* merge: .(goto)(71, 17, 71) */
		reached[1][17] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 30: // STATE 19 - semaforo.pml:54 - [((secundario_state==ESPERA))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		if (!((((int)now.secundario_state)==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 20 - semaforo.pml:56 - [((((timerS>10)&&!(P))&&S))] (71:0:5 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (!((((((int)now.timerS)>10)&& !(((int)now.P)))&&((int)now.S))))
			continue;
		/* merge: secundario_state = ESPERA(71, 21, 71) */
		reached[1][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.secundario_state);
		now.secundario_state = 3;
#ifdef VAR_RANGES
		logval("secundario_state", ((int)now.secundario_state));
#endif
		;
		/* merge: Vs = 1(71, 22, 71) */
		reached[1][22] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vs);
		Vs = 1;
#ifdef VAR_RANGES
		logval("Vs", ((int)Vs));
#endif
		;
		/* merge: As = 0(71, 23, 71) */
		reached[1][23] = 1;
		(trpt+1)->bup.ovals[2] = ((int)As);
		As = 0;
#ifdef VAR_RANGES
		logval("As", ((int)As));
#endif
		;
		/* merge: Rs = 0(71, 24, 71) */
		reached[1][24] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rs);
		Rs = 0;
#ifdef VAR_RANGES
		logval("Rs", ((int)Rs));
#endif
		;
		/* merge: timerS = 0(71, 25, 71) */
		reached[1][25] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerS);
		now.timerS = 0;
#ifdef VAR_RANGES
		logval("timerS", ((int)now.timerS));
#endif
		;
		/* merge: .(goto)(71, 39, 71) */
		reached[1][39] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 32: // STATE 39 - semaforo.pml:60 - [.(goto)] (0:71:0 - 3)
		IfNotBlocked
		reached[1][39] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 33: // STATE 26 - semaforo.pml:57 - [((((timerS<10)&&!(P))&&S))] (71:0:5 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((((((int)now.timerS)<10)&& !(((int)now.P)))&&((int)now.S))))
			continue;
		/* merge: secundario_state = ESPERA(71, 27, 71) */
		reached[1][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.secundario_state);
		now.secundario_state = 3;
#ifdef VAR_RANGES
		logval("secundario_state", ((int)now.secundario_state));
#endif
		;
		/* merge: Vs = 1(71, 28, 71) */
		reached[1][28] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vs);
		Vs = 1;
#ifdef VAR_RANGES
		logval("Vs", ((int)Vs));
#endif
		;
		/* merge: As = 0(71, 29, 71) */
		reached[1][29] = 1;
		(trpt+1)->bup.ovals[2] = ((int)As);
		As = 0;
#ifdef VAR_RANGES
		logval("As", ((int)As));
#endif
		;
		/* merge: Rs = 0(71, 30, 71) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rs);
		Rs = 0;
#ifdef VAR_RANGES
		logval("Rs", ((int)Rs));
#endif
		;
		/* merge: timerS = (timerS+1)(71, 31, 71) */
		reached[1][31] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerS);
		now.timerS = (((int)now.timerS)+1);
#ifdef VAR_RANGES
		logval("timerS", ((int)now.timerS));
#endif
		;
		/* merge: .(goto)(71, 39, 71) */
		reached[1][39] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 34: // STATE 32 - semaforo.pml:58 - [((P||!(S)))] (71:0:5 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		if (!((((int)now.P)|| !(((int)now.S)))))
			continue;
		/* merge: secundario_state = AMBAR(71, 33, 71) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.secundario_state);
		now.secundario_state = 2;
#ifdef VAR_RANGES
		logval("secundario_state", ((int)now.secundario_state));
#endif
		;
		/* merge: Vs = 0(71, 34, 71) */
		reached[1][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vs);
		Vs = 0;
#ifdef VAR_RANGES
		logval("Vs", ((int)Vs));
#endif
		;
		/* merge: As = 1(71, 35, 71) */
		reached[1][35] = 1;
		(trpt+1)->bup.ovals[2] = ((int)As);
		As = 1;
#ifdef VAR_RANGES
		logval("As", ((int)As));
#endif
		;
		/* merge: Rs = 0(71, 36, 71) */
		reached[1][36] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rs);
		Rs = 0;
#ifdef VAR_RANGES
		logval("Rs", ((int)Rs));
#endif
		;
		/* merge: timerS = 0(71, 37, 71) */
		reached[1][37] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerS);
		now.timerS = 0;
#ifdef VAR_RANGES
		logval("timerS", ((int)now.timerS));
#endif
		;
		/* merge: .(goto)(71, 39, 71) */
		reached[1][39] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 35: // STATE 41 - semaforo.pml:61 - [((secundario_state==AMBAR))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!((((int)now.secundario_state)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 42 - semaforo.pml:63 - [((timerS<10))] (71:0:5 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		if (!((((int)now.timerS)<10)))
			continue;
		/* merge: secundario_state = AMBAR(71, 43, 71) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.secundario_state);
		now.secundario_state = 2;
#ifdef VAR_RANGES
		logval("secundario_state", ((int)now.secundario_state));
#endif
		;
		/* merge: Vs = 0(71, 44, 71) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vs);
		Vs = 0;
#ifdef VAR_RANGES
		logval("Vs", ((int)Vs));
#endif
		;
		/* merge: As = 0(71, 45, 71) */
		reached[1][45] = 1;
		(trpt+1)->bup.ovals[2] = ((int)As);
		As = 0;
#ifdef VAR_RANGES
		logval("As", ((int)As));
#endif
		;
		/* merge: Rs = 1(71, 46, 71) */
		reached[1][46] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rs);
		Rs = 1;
#ifdef VAR_RANGES
		logval("Rs", ((int)Rs));
#endif
		;
		/* merge: timerS = (timerS+1)(71, 47, 71) */
		reached[1][47] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerS);
		now.timerS = (((int)now.timerS)+1);
#ifdef VAR_RANGES
		logval("timerS", ((int)now.timerS));
#endif
		;
		/* merge: .(goto)(71, 55, 71) */
		reached[1][55] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 37: // STATE 55 - semaforo.pml:66 - [.(goto)] (0:71:0 - 2)
		IfNotBlocked
		reached[1][55] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 38: // STATE 48 - semaforo.pml:64 - [((timerS>10))] (71:0:5 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		if (!((((int)now.timerS)>10)))
			continue;
		/* merge: secundario_state = ROJO(71, 49, 71) */
		reached[1][49] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.secundario_state);
		now.secundario_state = 1;
#ifdef VAR_RANGES
		logval("secundario_state", ((int)now.secundario_state));
#endif
		;
		/* merge: Vs = 0(71, 50, 71) */
		reached[1][50] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vs);
		Vs = 0;
#ifdef VAR_RANGES
		logval("Vs", ((int)Vs));
#endif
		;
		/* merge: As = 1(71, 51, 71) */
		reached[1][51] = 1;
		(trpt+1)->bup.ovals[2] = ((int)As);
		As = 1;
#ifdef VAR_RANGES
		logval("As", ((int)As));
#endif
		;
		/* merge: Rs = 0(71, 52, 71) */
		reached[1][52] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rs);
		Rs = 0;
#ifdef VAR_RANGES
		logval("Rs", ((int)Rs));
#endif
		;
		/* merge: timerS = 0(71, 53, 71) */
		reached[1][53] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerS);
		now.timerS = 0;
#ifdef VAR_RANGES
		logval("timerS", ((int)now.timerS));
#endif
		;
		/* merge: .(goto)(71, 55, 71) */
		reached[1][55] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 39: // STATE 57 - semaforo.pml:67 - [((secundario_state==ROJO))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		if (!((((int)now.secundario_state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 58 - semaforo.pml:69 - [((S&&(principal_state==ROJO)))] (71:0:4 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		if (!((((int)now.S)&&(((int)now.principal_state)==1))))
			continue;
		/* merge: secundario_state = VERDE(71, 59, 71) */
		reached[1][59] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.secundario_state);
		now.secundario_state = 4;
#ifdef VAR_RANGES
		logval("secundario_state", ((int)now.secundario_state));
#endif
		;
		/* merge: Vs = 1(71, 60, 71) */
		reached[1][60] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vs);
		Vs = 1;
#ifdef VAR_RANGES
		logval("Vs", ((int)Vs));
#endif
		;
		/* merge: As = 0(71, 61, 71) */
		reached[1][61] = 1;
		(trpt+1)->bup.ovals[2] = ((int)As);
		As = 0;
#ifdef VAR_RANGES
		logval("As", ((int)As));
#endif
		;
		/* merge: Rs = 0(71, 62, 71) */
		reached[1][62] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rs);
		Rs = 0;
#ifdef VAR_RANGES
		logval("Rs", ((int)Rs));
#endif
		;
		/* merge: .(goto)(71, 69, 71) */
		reached[1][69] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 41: // STATE 69 - semaforo.pml:72 - [.(goto)] (0:71:0 - 2)
		IfNotBlocked
		reached[1][69] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 42: // STATE 63 - semaforo.pml:70 - [((!(S)||(principal_state!=ROJO)))] (71:0:4 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		if (!(( !(((int)now.S))||(((int)now.principal_state)!=1))))
			continue;
		/* merge: secundario_state = ROJO(71, 64, 71) */
		reached[1][64] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.secundario_state);
		now.secundario_state = 1;
#ifdef VAR_RANGES
		logval("secundario_state", ((int)now.secundario_state));
#endif
		;
		/* merge: Vs = 0(71, 65, 71) */
		reached[1][65] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vs);
		Vs = 0;
#ifdef VAR_RANGES
		logval("Vs", ((int)Vs));
#endif
		;
		/* merge: As = 0(71, 66, 71) */
		reached[1][66] = 1;
		(trpt+1)->bup.ovals[2] = ((int)As);
		As = 0;
#ifdef VAR_RANGES
		logval("As", ((int)As));
#endif
		;
		/* merge: Rs = 1(71, 67, 71) */
		reached[1][67] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rs);
		Rs = 1;
#ifdef VAR_RANGES
		logval("Rs", ((int)Rs));
#endif
		;
		/* merge: .(goto)(71, 69, 71) */
		reached[1][69] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 43: // STATE 74 - semaforo.pml:75 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC principal_fsm */
	case 44: // STATE 1 - semaforo.pml:14 - [principal_state = VERDE] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.principal_state);
		now.principal_state = 4;
#ifdef VAR_RANGES
		logval("principal_state", ((int)now.principal_state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 2 - semaforo.pml:15 - [timerP = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.timerP);
		now.timerP = 0;
#ifdef VAR_RANGES
		logval("timerP", ((int)now.timerP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 3 - semaforo.pml:17 - [((principal_state==VERDE))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)now.principal_state)==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 4 - semaforo.pml:19 - [((timerP>50))] (71:0:5 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)now.timerP)>50)))
			continue;
		/* merge: principal_state = ESPERA(71, 5, 71) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.principal_state);
		now.principal_state = 3;
#ifdef VAR_RANGES
		logval("principal_state", ((int)now.principal_state));
#endif
		;
		/* merge: Vp = 1(71, 6, 71) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vp);
		Vp = 1;
#ifdef VAR_RANGES
		logval("Vp", ((int)Vp));
#endif
		;
		/* merge: Ap = 0(71, 7, 71) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)Ap);
		Ap = 0;
#ifdef VAR_RANGES
		logval("Ap", ((int)Ap));
#endif
		;
		/* merge: Rp = 0(71, 8, 71) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rp);
		Rp = 0;
#ifdef VAR_RANGES
		logval("Rp", ((int)Rp));
#endif
		;
		/* merge: timerP = 0(71, 9, 71) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerP);
		now.timerP = 0;
#ifdef VAR_RANGES
		logval("timerP", ((int)now.timerP));
#endif
		;
		/* merge: .(goto)(71, 17, 71) */
		reached[0][17] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 48: // STATE 17 - semaforo.pml:22 - [.(goto)] (0:71:0 - 2)
		IfNotBlocked
		reached[0][17] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 49: // STATE 10 - semaforo.pml:20 - [((timerP<50))] (71:0:5 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)now.timerP)<50)))
			continue;
		/* merge: principal_state = VERDE(71, 11, 71) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.principal_state);
		now.principal_state = 4;
#ifdef VAR_RANGES
		logval("principal_state", ((int)now.principal_state));
#endif
		;
		/* merge: Vp = 1(71, 12, 71) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vp);
		Vp = 1;
#ifdef VAR_RANGES
		logval("Vp", ((int)Vp));
#endif
		;
		/* merge: Ap = 0(71, 13, 71) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[2] = ((int)Ap);
		Ap = 0;
#ifdef VAR_RANGES
		logval("Ap", ((int)Ap));
#endif
		;
		/* merge: Rp = 0(71, 14, 71) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rp);
		Rp = 0;
#ifdef VAR_RANGES
		logval("Rp", ((int)Rp));
#endif
		;
		/* merge: timerP = (timerP+1)(71, 15, 71) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerP);
		now.timerP = (((int)now.timerP)+1);
#ifdef VAR_RANGES
		logval("timerP", ((int)now.timerP));
#endif
		;
		/* merge: .(goto)(71, 17, 71) */
		reached[0][17] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 50: // STATE 19 - semaforo.pml:23 - [((principal_state==ESPERA))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((int)now.principal_state)==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 20 - semaforo.pml:25 - [(((timerP>10)&&!(S)))] (71:0:5 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(((((int)now.timerP)>10)&& !(((int)now.S)))))
			continue;
		/* merge: principal_state = ESPERA(71, 21, 71) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.principal_state);
		now.principal_state = 3;
#ifdef VAR_RANGES
		logval("principal_state", ((int)now.principal_state));
#endif
		;
		/* merge: Vp = 1(71, 22, 71) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vp);
		Vp = 1;
#ifdef VAR_RANGES
		logval("Vp", ((int)Vp));
#endif
		;
		/* merge: Ap = 0(71, 23, 71) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[2] = ((int)Ap);
		Ap = 0;
#ifdef VAR_RANGES
		logval("Ap", ((int)Ap));
#endif
		;
		/* merge: Rp = 0(71, 24, 71) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rp);
		Rp = 0;
#ifdef VAR_RANGES
		logval("Rp", ((int)Rp));
#endif
		;
		/* merge: timerP = 0(71, 25, 71) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerP);
		now.timerP = 0;
#ifdef VAR_RANGES
		logval("timerP", ((int)now.timerP));
#endif
		;
		/* merge: .(goto)(71, 39, 71) */
		reached[0][39] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 52: // STATE 39 - semaforo.pml:29 - [.(goto)] (0:71:0 - 3)
		IfNotBlocked
		reached[0][39] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 53: // STATE 26 - semaforo.pml:26 - [(((timerP<10)&&!(S)))] (71:0:5 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!(((((int)now.timerP)<10)&& !(((int)now.S)))))
			continue;
		/* merge: principal_state = ESPERA(71, 27, 71) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.principal_state);
		now.principal_state = 3;
#ifdef VAR_RANGES
		logval("principal_state", ((int)now.principal_state));
#endif
		;
		/* merge: Vp = 1(71, 28, 71) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vp);
		Vp = 1;
#ifdef VAR_RANGES
		logval("Vp", ((int)Vp));
#endif
		;
		/* merge: Ap = 0(71, 29, 71) */
		reached[0][29] = 1;
		(trpt+1)->bup.ovals[2] = ((int)Ap);
		Ap = 0;
#ifdef VAR_RANGES
		logval("Ap", ((int)Ap));
#endif
		;
		/* merge: Rp = 0(71, 30, 71) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rp);
		Rp = 0;
#ifdef VAR_RANGES
		logval("Rp", ((int)Rp));
#endif
		;
		/* merge: timerP = (timerP+1)(71, 31, 71) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerP);
		now.timerP = (((int)now.timerP)+1);
#ifdef VAR_RANGES
		logval("timerP", ((int)now.timerP));
#endif
		;
		/* merge: .(goto)(71, 39, 71) */
		reached[0][39] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 54: // STATE 32 - semaforo.pml:27 - [(S)] (71:0:5 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!(((int)now.S)))
			continue;
		/* merge: principal_state = AMBAR(71, 33, 71) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.principal_state);
		now.principal_state = 2;
#ifdef VAR_RANGES
		logval("principal_state", ((int)now.principal_state));
#endif
		;
		/* merge: Vp = 0(71, 34, 71) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vp);
		Vp = 0;
#ifdef VAR_RANGES
		logval("Vp", ((int)Vp));
#endif
		;
		/* merge: Ap = 1(71, 35, 71) */
		reached[0][35] = 1;
		(trpt+1)->bup.ovals[2] = ((int)Ap);
		Ap = 1;
#ifdef VAR_RANGES
		logval("Ap", ((int)Ap));
#endif
		;
		/* merge: Rp = 0(71, 36, 71) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rp);
		Rp = 0;
#ifdef VAR_RANGES
		logval("Rp", ((int)Rp));
#endif
		;
		/* merge: timerP = 0(71, 37, 71) */
		reached[0][37] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerP);
		now.timerP = 0;
#ifdef VAR_RANGES
		logval("timerP", ((int)now.timerP));
#endif
		;
		/* merge: .(goto)(71, 39, 71) */
		reached[0][39] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 55: // STATE 41 - semaforo.pml:30 - [((principal_state==AMBAR))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		if (!((((int)now.principal_state)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 42 - semaforo.pml:32 - [((timerP<10))] (71:0:5 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!((((int)now.timerP)<10)))
			continue;
		/* merge: principal_state = AMBAR(71, 43, 71) */
		reached[0][43] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.principal_state);
		now.principal_state = 2;
#ifdef VAR_RANGES
		logval("principal_state", ((int)now.principal_state));
#endif
		;
		/* merge: Vp = 0(71, 44, 71) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vp);
		Vp = 0;
#ifdef VAR_RANGES
		logval("Vp", ((int)Vp));
#endif
		;
		/* merge: Ap = 0(71, 45, 71) */
		reached[0][45] = 1;
		(trpt+1)->bup.ovals[2] = ((int)Ap);
		Ap = 0;
#ifdef VAR_RANGES
		logval("Ap", ((int)Ap));
#endif
		;
		/* merge: Rp = 1(71, 46, 71) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rp);
		Rp = 1;
#ifdef VAR_RANGES
		logval("Rp", ((int)Rp));
#endif
		;
		/* merge: timerP = (timerP+1)(71, 47, 71) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerP);
		now.timerP = (((int)now.timerP)+1);
#ifdef VAR_RANGES
		logval("timerP", ((int)now.timerP));
#endif
		;
		/* merge: .(goto)(71, 55, 71) */
		reached[0][55] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 57: // STATE 55 - semaforo.pml:35 - [.(goto)] (0:71:0 - 2)
		IfNotBlocked
		reached[0][55] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 58: // STATE 48 - semaforo.pml:33 - [((timerP>10))] (71:0:5 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		if (!((((int)now.timerP)>10)))
			continue;
		/* merge: principal_state = ROJO(71, 49, 71) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.principal_state);
		now.principal_state = 1;
#ifdef VAR_RANGES
		logval("principal_state", ((int)now.principal_state));
#endif
		;
		/* merge: Vp = 0(71, 50, 71) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vp);
		Vp = 0;
#ifdef VAR_RANGES
		logval("Vp", ((int)Vp));
#endif
		;
		/* merge: Ap = 1(71, 51, 71) */
		reached[0][51] = 1;
		(trpt+1)->bup.ovals[2] = ((int)Ap);
		Ap = 1;
#ifdef VAR_RANGES
		logval("Ap", ((int)Ap));
#endif
		;
		/* merge: Rp = 0(71, 52, 71) */
		reached[0][52] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rp);
		Rp = 0;
#ifdef VAR_RANGES
		logval("Rp", ((int)Rp));
#endif
		;
		/* merge: timerP = 0(71, 53, 71) */
		reached[0][53] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.timerP);
		now.timerP = 0;
#ifdef VAR_RANGES
		logval("timerP", ((int)now.timerP));
#endif
		;
		/* merge: .(goto)(71, 55, 71) */
		reached[0][55] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 59: // STATE 57 - semaforo.pml:36 - [((principal_state==ROJO))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!((((int)now.principal_state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 58 - semaforo.pml:38 - [((P&&(secundario_state==ROJO)))] (71:0:4 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (!((((int)now.P)&&(((int)now.secundario_state)==1))))
			continue;
		/* merge: principal_state = VERDE(71, 59, 71) */
		reached[0][59] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.principal_state);
		now.principal_state = 4;
#ifdef VAR_RANGES
		logval("principal_state", ((int)now.principal_state));
#endif
		;
		/* merge: Vp = 1(71, 60, 71) */
		reached[0][60] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vp);
		Vp = 1;
#ifdef VAR_RANGES
		logval("Vp", ((int)Vp));
#endif
		;
		/* merge: Ap = 0(71, 61, 71) */
		reached[0][61] = 1;
		(trpt+1)->bup.ovals[2] = ((int)Ap);
		Ap = 0;
#ifdef VAR_RANGES
		logval("Ap", ((int)Ap));
#endif
		;
		/* merge: Rp = 0(71, 62, 71) */
		reached[0][62] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rp);
		Rp = 0;
#ifdef VAR_RANGES
		logval("Rp", ((int)Rp));
#endif
		;
		/* merge: .(goto)(71, 69, 71) */
		reached[0][69] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 61: // STATE 69 - semaforo.pml:41 - [.(goto)] (0:71:0 - 2)
		IfNotBlocked
		reached[0][69] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 62: // STATE 63 - semaforo.pml:39 - [((!(P)||(secundario_state!=ROJO)))] (71:0:4 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!(( !(((int)now.P))||(((int)now.secundario_state)!=1))))
			continue;
		/* merge: principal_state = ROJO(71, 64, 71) */
		reached[0][64] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.principal_state);
		now.principal_state = 1;
#ifdef VAR_RANGES
		logval("principal_state", ((int)now.principal_state));
#endif
		;
		/* merge: Vp = 0(71, 65, 71) */
		reached[0][65] = 1;
		(trpt+1)->bup.ovals[1] = ((int)Vp);
		Vp = 0;
#ifdef VAR_RANGES
		logval("Vp", ((int)Vp));
#endif
		;
		/* merge: Ap = 0(71, 66, 71) */
		reached[0][66] = 1;
		(trpt+1)->bup.ovals[2] = ((int)Ap);
		Ap = 0;
#ifdef VAR_RANGES
		logval("Ap", ((int)Ap));
#endif
		;
		/* merge: Rp = 1(71, 67, 71) */
		reached[0][67] = 1;
		(trpt+1)->bup.ovals[3] = ((int)Rp);
		Rp = 1;
#ifdef VAR_RANGES
		logval("Rp", ((int)Rp));
#endif
		;
		/* merge: .(goto)(71, 69, 71) */
		reached[0][69] = 1;
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[0][72] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 63: // STATE 74 - semaforo.pml:43 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][74] = 1;
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

