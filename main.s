	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C17 (GCC) version 10.1.0 (avr)
 ; 	compiled by GNU C version 8.3-win32 20190406, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version isl-0.18-GMP

 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -imultilib avr5
 ;  -iprefix d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\bin\../lib/gcc/avr/10.1.0/
 ;  -D__AVR_ATmega32__ -D__AVR_DEVICE_NAME__=atmega32 -D F_CPU=1000000UL
 ;  main.c -mn-flash=1 -mno-skip-bug -mdouble=32 -mlong-double=64
 ;  -mmcu=avr5 -auxbase-strip main.s -fverbose-asm
 ;  options enabled:  -Wmisspelled-isr -faggressive-loop-optimizations
 ;  -fallocation-dce -fallow-store-data-races -fauto-inc-dec
 ;  -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-symbols
 ;  -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
 ;  -fgcse-lm -fgnu-unique -fident -finline-atomics -fipa-stack-alignment
 ;  -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
 ;  -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
 ;  -fmath-errno -fmerge-debug-strings -fpeephole -fplt
 ;  -fprefetch-loop-arrays -freg-struct-return
 ;  -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 ;  -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 ;  -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 ;  -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
 ;  -fshow-column -fshrink-wrap-separate -fsigned-zeros
 ;  -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
 ;  -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
 ;  -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
 ;  -ftree-phiprop -ftree-reassoc -ftree-scev-cprop -funit-at-a-time
 ;  -fverbose-asm -fzero-initialized-in-bss

	.text
.global	__mulsf3
.global	__ltsf2
.global	__gtsf2
.global	__fixunssfsi
.global	main
	.type	main, @function
main:
	push r28		 ; 
	push r29		 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	subi r28,68	 ; ,
	sbc r29,__zero_reg__	 ; 
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 68 */
/* stack size = 70 */
.L__stack_usage = 70
 ;  main.c:13: 	DDRD = 0x01;
	ldi r24,lo8(49)	 ;  _1,
	ldi r25,0		 ;  _1
 ;  main.c:13: 	DDRD = 0x01;
	ldi r18,lo8(1)	 ;  tmp48,
	movw r26,r24	 ; , _1
	st X,r18		 ;  *_1, tmp48
.L18:
 ;  main.c:16: 		PORTD = 0x01;
	ldi r24,lo8(50)	 ;  _2,
	ldi r25,0		 ;  _2
 ;  main.c:16: 		PORTD = 0x01;
	ldi r18,lo8(1)	 ;  tmp49,
	movw r30,r24	 ; , _2
	st Z,r18		 ;  *_2, tmp49
	ldi r24,0		 ;  tmp50
	ldi r25,0		 ; 
	ldi r26,lo8(-56)	 ; ,
	ldi r27,lo8(66)	 ; ,
	std Y+15,r24	 ;  __ms, tmp50
	std Y+16,r25	 ;  __ms, tmp50
	std Y+17,r26	 ;  __ms, tmp50
	std Y+18,r27	 ;  __ms, tmp50
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:191: 	__tmp = ((F_CPU) / 4e3) * __ms;
	ldi r18,0		 ; 
	ldi r19,0		 ; 
	ldi r20,lo8(122)	 ; ,
	ldi r21,lo8(67)	 ; ,
	ldd r22,Y+15	 ; , __ms
	ldd r23,Y+16	 ; , __ms
	ldd r24,Y+17	 ; , __ms
	ldd r25,Y+18	 ; , __ms
	call __mulsf3	 ; 
	std Y+37,r22	 ;  %sfp,
	std Y+38,r23	 ;  %sfp,
	std Y+39,r24	 ;  %sfp,
	std Y+40,r25	 ;  %sfp,
	ldd r24,Y+37	 ; , %sfp
	ldd r25,Y+38	 ; , %sfp
	ldd r26,Y+39	 ; , %sfp
	ldd r27,Y+40	 ; , %sfp
	std Y+19,r24	 ;  __tmp,
	std Y+20,r25	 ;  __tmp,
	std Y+21,r26	 ;  __tmp,
	std Y+22,r27	 ;  __tmp,
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:192: 	if (__tmp < 1.0)
	ldi r18,0		 ; 
	ldi r19,0		 ; 
	ldi r20,lo8(-128)	 ; ,
	ldi r21,lo8(63)	 ; ,
	ldd r22,Y+19	 ; , __tmp
	ldd r23,Y+20	 ; , __tmp
	ldd r24,Y+21	 ; , __tmp
	ldd r25,Y+22	 ; , __tmp
	call __ltsf2	 ; 
	tst r24		 ;  tmp52
	brge .L23		 ; ,
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:193: 		__ticks = 1;
	ldi r24,lo8(1)	 ;  tmp53,
	ldi r25,0		 ; 
	std Y+24,r25	 ;  __ticks, tmp53
	std Y+23,r24	 ;  __ticks, tmp53
	rjmp .L4		 ; 
.L23:
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:194: 	else if (__tmp > 65535)
	ldi r18,0		 ; 
	ldi r19,lo8(-1)	 ; ,
	ldi r20,lo8(127)	 ; ,
	ldi r21,lo8(71)	 ; ,
	ldd r22,Y+19	 ; , __tmp
	ldd r23,Y+20	 ; , __tmp
	ldd r24,Y+21	 ; , __tmp
	ldd r25,Y+22	 ; , __tmp
	call __gtsf2	 ; 
	cp __zero_reg__,r24	 ;  tmp54
	brge .L24		 ; ,
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:197: 		__ticks = (uint16_t) (__ms * 10.0);
	ldi r18,0		 ; 
	ldi r19,0		 ; 
	ldi r20,lo8(32)	 ; ,
	ldi r21,lo8(65)	 ; ,
	ldd r22,Y+15	 ; , __ms
	ldd r23,Y+16	 ; , __ms
	ldd r24,Y+17	 ; , __ms
	ldd r25,Y+18	 ; , __ms
	call __mulsf3	 ; 
	std Y+41,r22	 ;  %sfp,
	std Y+42,r23	 ;  %sfp,
	std Y+43,r24	 ;  %sfp,
	std Y+44,r25	 ;  %sfp,
	ldd r24,Y+41	 ; , %sfp
	ldd r25,Y+42	 ; , %sfp
	ldd r26,Y+43	 ; , %sfp
	ldd r27,Y+44	 ; , %sfp
	std Y+33,r24	 ;  %sfp,
	std Y+34,r25	 ;  %sfp,
	std Y+35,r26	 ;  %sfp,
	std Y+36,r27	 ;  %sfp,
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:197: 		__ticks = (uint16_t) (__ms * 10.0);
	ldd r22,Y+33	 ; , %sfp
	ldd r23,Y+34	 ; , %sfp
	ldd r24,Y+35	 ; , %sfp
	ldd r25,Y+36	 ; , %sfp
	call __fixunssfsi	 ; 
	std Y+45,r22	 ;  %sfp,
	std Y+46,r23	 ;  %sfp,
	std Y+47,r24	 ;  %sfp,
	std Y+48,r25	 ;  %sfp,
	ldd r26,Y+45	 ; , %sfp
	ldd r27,Y+46	 ; , %sfp
	std Y+24,r27	 ;  __ticks,
	std Y+23,r26	 ;  __ticks,
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:198: 		while(__ticks)
	rjmp .L7		 ; 
.L8:
	ldi r24,lo8(25)	 ;  tmp57,
	ldi r25,0		 ; 
	std Y+26,r25	 ;  __count, tmp57
	std Y+25,r24	 ;  __count, tmp57
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay_basic.h:113: 	__asm__ volatile (
	ldd r24,Y+25	 ;  tmp59, __count
	ldd r25,Y+26	 ;  tmp59, __count
/* #APP */
 ;  113 "d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay_basic.h" 1
	1: sbiw r24,1	 ;  __count
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	std Y+26,r25	 ;  __count, __count
	std Y+25,r24	 ;  __count, __count
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay_basic.h:120: }
	nop	
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:202: 			__ticks --;
	ldd r24,Y+23	 ;  tmp61, __ticks
	ldd r25,Y+24	 ;  tmp61, __ticks
	sbiw r24,1	 ;  tmp60,
	std Y+24,r25	 ;  __ticks, tmp60
	std Y+23,r24	 ;  __ticks, tmp60
.L7:
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:198: 		while(__ticks)
	ldd r24,Y+23	 ;  tmp62, __ticks
	ldd r25,Y+24	 ;  tmp62, __ticks
	or r24,r25	 ;  tmp62
	brne .L8		 ; ,
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:204: 		return;
	rjmp .L9		 ; 
.L24:
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:207: 		__ticks = (uint16_t)__tmp;
	ldd r22,Y+19	 ; , __tmp
	ldd r23,Y+20	 ; , __tmp
	ldd r24,Y+21	 ; , __tmp
	ldd r25,Y+22	 ; , __tmp
	call __fixunssfsi	 ; 
	std Y+49,r22	 ;  %sfp,
	std Y+50,r23	 ;  %sfp,
	std Y+51,r24	 ;  %sfp,
	std Y+52,r25	 ;  %sfp,
	ldd r30,Y+49	 ; , %sfp
	ldd r31,Y+50	 ; , %sfp
	std Y+24,r31	 ;  __ticks,
	std Y+23,r30	 ;  __ticks,
.L4:
	ldd r24,Y+23	 ;  tmp64, __ticks
	ldd r25,Y+24	 ;  tmp64, __ticks
	std Y+28,r25	 ;  __count, tmp64
	std Y+27,r24	 ;  __count, tmp64
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay_basic.h:113: 	__asm__ volatile (
	ldd r24,Y+27	 ;  tmp66, __count
	ldd r25,Y+28	 ;  tmp66, __count
/* #APP */
 ;  113 "d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay_basic.h" 1
	1: sbiw r24,1	 ;  __count
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	std Y+28,r25	 ;  __count, __count
	std Y+27,r24	 ;  __count, __count
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay_basic.h:120: }
	nop	
.L9:
 ;  main.c:18: 		PORTD = 0x00;
	ldi r24,lo8(50)	 ;  _3,
	ldi r25,0		 ;  _3
 ;  main.c:18: 		PORTD = 0x00;
	movw r26,r24	 ; , _3
	st X,__zero_reg__		 ;  *_3,
	ldi r24,0		 ;  tmp67
	ldi r25,0		 ; 
	ldi r26,lo8(-56)	 ; ,
	ldi r27,lo8(66)	 ; ,
	std Y+1,r24	 ;  __ms, tmp67
	std Y+2,r25	 ;  __ms, tmp67
	std Y+3,r26	 ;  __ms, tmp67
	std Y+4,r27	 ;  __ms, tmp67
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:191: 	__tmp = ((F_CPU) / 4e3) * __ms;
	ldi r18,0		 ; 
	ldi r19,0		 ; 
	ldi r20,lo8(122)	 ; ,
	ldi r21,lo8(67)	 ; ,
	ldd r22,Y+1	 ; , __ms
	ldd r23,Y+2	 ; , __ms
	ldd r24,Y+3	 ; , __ms
	ldd r25,Y+4	 ; , __ms
	call __mulsf3	 ; 
	std Y+53,r22	 ;  %sfp,
	std Y+54,r23	 ;  %sfp,
	std Y+55,r24	 ;  %sfp,
	std Y+56,r25	 ;  %sfp,
	ldd r24,Y+53	 ; , %sfp
	ldd r25,Y+54	 ; , %sfp
	ldd r26,Y+55	 ; , %sfp
	ldd r27,Y+56	 ; , %sfp
	std Y+5,r24	 ;  __tmp,
	std Y+6,r25	 ;  __tmp,
	std Y+7,r26	 ;  __tmp,
	std Y+8,r27	 ;  __tmp,
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:192: 	if (__tmp < 1.0)
	ldi r18,0		 ; 
	ldi r19,0		 ; 
	ldi r20,lo8(-128)	 ; ,
	ldi r21,lo8(63)	 ; ,
	ldd r22,Y+5	 ; , __tmp
	ldd r23,Y+6	 ; , __tmp
	ldd r24,Y+7	 ; , __tmp
	ldd r25,Y+8	 ; , __tmp
	call __ltsf2	 ; 
	tst r24		 ;  tmp69
	brge .L25		 ; ,
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:193: 		__ticks = 1;
	ldi r24,lo8(1)	 ;  tmp70,
	ldi r25,0		 ; 
	std Y+10,r25	 ;  __ticks, tmp70
	std Y+9,r24	 ;  __ticks, tmp70
	rjmp .L12		 ; 
.L25:
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:194: 	else if (__tmp > 65535)
	ldi r18,0		 ; 
	ldi r19,lo8(-1)	 ; ,
	ldi r20,lo8(127)	 ; ,
	ldi r21,lo8(71)	 ; ,
	ldd r22,Y+5	 ; , __tmp
	ldd r23,Y+6	 ; , __tmp
	ldd r24,Y+7	 ; , __tmp
	ldd r25,Y+8	 ; , __tmp
	call __gtsf2	 ; 
	cp __zero_reg__,r24	 ;  tmp71
	brlt .+2	 ; 
	rjmp .L26	 ; 
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:197: 		__ticks = (uint16_t) (__ms * 10.0);
	ldi r18,0		 ; 
	ldi r19,0		 ; 
	ldi r20,lo8(32)	 ; ,
	ldi r21,lo8(65)	 ; ,
	ldd r22,Y+1	 ; , __ms
	ldd r23,Y+2	 ; , __ms
	ldd r24,Y+3	 ; , __ms
	ldd r25,Y+4	 ; , __ms
	call __mulsf3	 ; 
	std Y+57,r22	 ;  %sfp,
	std Y+58,r23	 ;  %sfp,
	std Y+59,r24	 ;  %sfp,
	std Y+60,r25	 ;  %sfp,
	ldd r24,Y+57	 ; , %sfp
	ldd r25,Y+58	 ; , %sfp
	ldd r26,Y+59	 ; , %sfp
	ldd r27,Y+60	 ; , %sfp
	std Y+29,r24	 ;  %sfp,
	std Y+30,r25	 ;  %sfp,
	std Y+31,r26	 ;  %sfp,
	std Y+32,r27	 ;  %sfp,
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:197: 		__ticks = (uint16_t) (__ms * 10.0);
	ldd r22,Y+29	 ; , %sfp
	ldd r23,Y+30	 ; , %sfp
	ldd r24,Y+31	 ; , %sfp
	ldd r25,Y+32	 ; , %sfp
	call __fixunssfsi	 ; 
	adiw r28,61-60	 ;  %sfp
	std Y+60,r22	 ; 
	std Y+61,r23	 ; 
	std Y+62,r24	 ; 
	std Y+63,r25	 ; 
	sbiw r28,61-60	 ;  %sfp
	ldd r26,Y+61	 ; , %sfp
	ldd r27,Y+62	 ; , %sfp
	std Y+10,r27	 ;  __ticks,
	std Y+9,r26	 ;  __ticks,
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:198: 		while(__ticks)
	rjmp .L15		 ; 
.L16:
	ldi r24,lo8(25)	 ;  tmp74,
	ldi r25,0		 ; 
	std Y+12,r25	 ;  __count, tmp74
	std Y+11,r24	 ;  __count, tmp74
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay_basic.h:113: 	__asm__ volatile (
	ldd r24,Y+11	 ;  tmp76, __count
	ldd r25,Y+12	 ;  tmp76, __count
/* #APP */
 ;  113 "d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay_basic.h" 1
	1: sbiw r24,1	 ;  __count
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	std Y+12,r25	 ;  __count, __count
	std Y+11,r24	 ;  __count, __count
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay_basic.h:120: }
	nop	
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:202: 			__ticks --;
	ldd r24,Y+9	 ;  tmp78, __ticks
	ldd r25,Y+10	 ;  tmp78, __ticks
	sbiw r24,1	 ;  tmp77,
	std Y+10,r25	 ;  __ticks, tmp77
	std Y+9,r24	 ;  __ticks, tmp77
.L15:
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:198: 		while(__ticks)
	ldd r24,Y+9	 ;  tmp79, __ticks
	ldd r25,Y+10	 ;  tmp79, __ticks
	or r24,r25	 ;  tmp79
	brne .L16		 ; ,
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:204: 		return;
	rjmp .L17		 ; 
.L26:
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay.h:207: 		__ticks = (uint16_t)__tmp;
	ldd r22,Y+5	 ; , __tmp
	ldd r23,Y+6	 ; , __tmp
	ldd r24,Y+7	 ; , __tmp
	ldd r25,Y+8	 ; , __tmp
	call __fixunssfsi	 ; 
	adiw r28,65-60	 ;  %sfp
	std Y+60,r22	 ; 
	std Y+61,r23	 ; 
	std Y+62,r24	 ; 
	std Y+63,r25	 ; 
	sbiw r28,65-60	 ;  %sfp
	adiw r28,65-62	 ;  %sfp
	ldd r30,Y+62	 ; 
	ldd r31,Y+63	 ; 
	sbiw r28,65-62	 ;  %sfp
	std Y+10,r31	 ;  __ticks,
	std Y+9,r30	 ;  __ticks,
.L12:
	ldd r24,Y+9	 ;  tmp81, __ticks
	ldd r25,Y+10	 ;  tmp81, __ticks
	std Y+14,r25	 ;  __count, tmp81
	std Y+13,r24	 ;  __count, tmp81
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay_basic.h:113: 	__asm__ volatile (
	ldd r24,Y+13	 ;  tmp83, __count
	ldd r25,Y+14	 ;  tmp83, __count
/* #APP */
 ;  113 "d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay_basic.h" 1
	1: sbiw r24,1	 ;  __count
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	std Y+14,r25	 ;  __count, __count
	std Y+13,r24	 ;  __count, __count
 ;  d:\avr-c\avr-gcc-10.1.0-x86-windows\avr-gcc-10.1.0-x86-windows\avr\include\util\delay_basic.h:120: }
	nop	
.L17:
 ;  main.c:16: 		PORTD = 0x01;
	rjmp .L18		 ; 
	.size	main, .-main
	.ident	"GCC: (GNU) 10.1.0"
