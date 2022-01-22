;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Sat Jan 22 19:18:12 2022
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _finish_setup
	.globl _server_initial
	.globl _server_action
	.globl _time_count_add
	.globl _timer0_isr
	.globl _time_initial
	.globl _ser_intr
	.globl _UART_Init
	.globl _delay_ms
	.globl _SSD_Initial
	.globl _Write7219
	.globl _sendbyte
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _i
	.globl _BT_data_flag
	.globl _BT_data
	.globl _change_time
	.globl _Action
	.globl _PWM_state
	.globl _T_sec
	.globl _T_min
	.globl _T_hour
	.globl _time_count
	.globl _temp
	.globl _toff
	.globl _ton
	.globl _dutytime
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_dutytime::
	.ds 2
_ton::
	.ds 2
_toff::
	.ds 2
_temp::
	.ds 2
_time_count::
	.ds 2
_T_hour::
	.ds 1
_T_min::
	.ds 1
_T_sec::
	.ds 1
_PWM_state::
	.ds 1
_Action::
	.ds 1
_change_time::
	.ds 1
_BT_data::
	.ds 1
_BT_data_flag::
	.ds 1
_i::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_isr
	.ds	5
	reti
	.ds	7
	ljmp	_time_count_add
	.ds	5
	reti
	.ds	7
	ljmp	_ser_intr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:14: unsigned int dutytime = 35536; //65536-45536就是責任週期
	mov	_dutytime,#0xD0
	mov	(_dutytime + 1),#0x8A
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:15: unsigned int ton = 15000; //高電位比例=50%
	mov	_ton,#0x98
	mov	(_ton + 1),#0x3A
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:16: unsigned int toff = 15000; //低電位比例=50%
	mov	_toff,#0x98
	mov	(_toff + 1),#0x3A
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:18: unsigned int time_count = 0;
	clr	a
	mov	_time_count,a
	mov	(_time_count + 1),a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:19: signed char T_hour = 3, T_min = 28, T_sec = 0;
	mov	_T_hour,#0x03
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:19: unsigned char PWM_state = 0;
	mov	_T_min,#0x1C
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:19: signed char T_hour = 3, T_min = 28, T_sec = 0;
	mov	_T_sec,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:20: unsigned char PWM_state = 0;
	mov	_PWM_state,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:21: unsigned char Action = 0; // 1: open, 2: close
	mov	_Action,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:22: unsigned char change_time = 0;
	mov	_change_time,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:23: char BT_data = ' ';
	mov	_BT_data,#0x20
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:24: char BT_data_flag = 0;
	mov	_BT_data_flag,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'sendbyte'
;------------------------------------------------------------
;dat                       Allocated to stack - offset -3
;address                   Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:27: void sendbyte(unsigned char address,unsigned char dat) {
;	-----------------------------------------
;	 function sendbyte
;	-----------------------------------------
_sendbyte:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:29: for (i=0;i<8;i++) {
	mov	r3,#0x00
00101$:
	cjne	r3,#0x08,00117$
00117$:
	jnc	00104$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:30: CLK=0;
	clr	_P3_6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:31: DIN=(address&0x80);
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:32: address<<=1;
	mov	a,r2
	add	a,r2
	mov	_P3_4,c
	mov	r2,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:33: CLK=1;
	setb	_P3_6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:29: for (i=0;i<8;i++) {
	inc	r3
	sjmp	00101$
00104$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:35: for (i=0;i<8;i++) {
	mov	r2,#0x00
00105$:
	cjne	r2,#0x08,00119$
00119$:
	jnc	00109$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:36: CLK=0;
	clr	_P3_6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:37: DIN=(dat&0x80);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	rlc	a
	mov	_P3_4,c
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:38: dat<<=1;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,acc
	mov	@r0,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:39: CLK=1;
	setb	_P3_6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:35: for (i=0;i<8;i++) {
	inc	r2
	sjmp	00105$
00109$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219'
;------------------------------------------------------------
;dat                       Allocated to stack - offset -3
;address                   Allocated to registers r2 
;cnt                       Allocated to registers r3 
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:43: void Write7219(unsigned char address,unsigned char dat) {
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:45: LOAD=0;
	clr	_P3_5
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:46: for(cnt=1;cnt<=matrixnum;cnt++) sendbyte(address,dat);
	mov	r3,#0x01
00103$:
	push	ar2
	push	ar3
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r2
	lcall	_sendbyte
	dec	sp
	pop	ar3
	pop	ar2
	djnz	r3,00103$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:47: LOAD=1;                  
	setb	_P3_5
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD_Initial'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:50: void SSD_Initial(void) {
;	-----------------------------------------
;	 function SSD_Initial
;	-----------------------------------------
_SSD_Initial:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:52: Write7219(SHUT_DOWN,0x01);
	mov	a,#0x01
	push	acc
	mov	dpl,#0x0C
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:53: Write7219(DISPLAY_TEST,0x00);
	clr	a
	push	acc
	mov	dpl,#0x0F
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:54: Write7219(DECODE_MODE,0xff);
	mov	a,#0xFF
	push	acc
	mov	dpl,#0x09
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:55: Write7219(SCAN_LIMIT,0x07);
	mov	a,#0x07
	push	acc
	mov	dpl,#0x0B
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:56: Write7219(INTENSITY,0x00);
	clr	a
	push	acc
	mov	dpl,#0x0A
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:57: for(i=1;i<=8;i++) Write7219(i,0x0f);
	mov	r2,#0x01
00101$:
	mov	a,#0x08
	cjne	a,ar2,00110$
00110$:
	jc	00105$
	push	ar2
	mov	a,#0x0F
	push	acc
	mov	dpl,r2
	lcall	_Write7219
	dec	sp
	pop	ar2
	inc	r2
	sjmp	00101$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:60: void delay_ms(int ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r2,dpl
	mov	r3,dph
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:63: for (i = 0; i < ms; i++) {
	mov	r4,#0x00
	mov	r5,#0x00
00104$:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	00108$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:64: for (j = 0; j < 90; j++);
	mov	r6,#0x5A
00103$:
	djnz	r6,00103$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:63: for (i = 0; i < ms; i++) {
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
	sjmp	00104$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:68: void UART_Init()
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:70: TMOD |= 0x200;
	mov	r2,_TMOD
	mov	r3,#0x00
	orl	ar3,#0x02
	mov	_TMOD,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:71: TH2 = 0xFD;
	mov	_TH2,#0xFD
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:72: TL2 = 1;
	mov	_TL2,#0x01
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:73: SCON = 0x50;
	mov	_SCON,#0x50
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:74: IE |= 0x90;
	orl	_IE,#0x90
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:75: TR2 = 1;
	setb	_TR2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_intr'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:78: void ser_intr(void) __interrupt 5      //Subroutine for Interrupt  
;	-----------------------------------------
;	 function ser_intr
;	-----------------------------------------
_ser_intr:
	push	acc
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:80: while(RI==0);
00101$:
	jnb	_RI,00101$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:81: BT_data = SBUF;
	mov	_BT_data,_SBUF
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:82: TH2 = 0xFD;
	mov	_TH2,#0xFD
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:83: TL2 = 1;
	mov	_TL2,#0x01
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:84: TF2 = 0;
	clr	_TF2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:85: EXF2 = 0;
	clr	_EXF2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:86: P1 = ~P1;
	mov	a,_P1
	cpl	a
	mov	_P1,a
	pop	acc
	reti
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'time_initial'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:91: void time_initial(void) {
;	-----------------------------------------
;	 function time_initial
;	-----------------------------------------
_time_initial:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:92: TMOD = 0x11;  // Set Timer 1 to  mode 0 & Timer 0 mode 1. (16-bit timer)
	mov	_TMOD,#0x11
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:93: IE|=0x02; //開啟計時器中斷功能
	orl	_IE,#0x02
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:94: temp = 65536 - dutytime; //設定中斷一次的時間(預設是dutytime)
	mov	r2,_dutytime
	mov	r3,(_dutytime + 1)
	clr	a
	mov	r4,a
	mov	r5,a
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	a,#0x01
	subb	a,r4
	clr	a
	subb	a,r5
	mov	_temp,r2
	mov	(_temp + 1),r3
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:95: TH0 = temp / 256; //填入高八位
	mov	r2,(_temp + 1)
	mov	_TH0,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:96: TL0 = temp % 256; //填入低八位
	mov	r2,_temp
	mov	_TL0,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:97: TH1 = (65536-1000) / 256;   // Load initial higher 8 bits into Timer 1
	mov	_TH1,#0xFC
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:98: TL1 = (65536-1000) % 256;   // Load initial lower 8 bits into Timer 1
	mov	_TL1,#0x18
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:99: EA = 1;                // Enable all interrupt
	setb	_EA
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:100: ET0 = 1;            // Enable Timer 0 interrupt
	setb	_ET0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:101: TR0 = 1;            // Start Timer 0
	setb	_TR0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:102: ET1 = 1;            // Enable Timer 1 interrupt
	setb	_ET1
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:103: TR1 = 1;             // Start Timer 1
	setb	_TR1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:107: void timer0_isr(void) __interrupt TF0_VECTOR __using 1 {
;	-----------------------------------------
;	 function timer0_isr
;	-----------------------------------------
_timer0_isr:
	ar2 = 0x0a
	ar3 = 0x0b
	ar4 = 0x0c
	ar5 = 0x0d
	ar6 = 0x0e
	ar7 = 0x0f
	ar0 = 0x08
	ar1 = 0x09
	push	acc
	push	psw
	mov	psw,#0x08
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:108: if (PWM_state == 1) {
	mov	a,#0x01
	cjne	a,_PWM_state,00112$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:109: temp = 65536 - toff;
	mov	r2,_toff
	mov	r3,(_toff + 1)
	clr	a
	mov	r4,a
	mov	r5,a
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	a,#0x01
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	mov	_temp,r2
	mov	(_temp + 1),r3
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:110: TH0 = temp / 256;
	mov	r2,(_temp + 1)
	mov	_TH0,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:111: TL0 = temp % 256;
	mov	r2,_temp
	mov	r3,#0x00
	mov	_TL0,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:112: if (Action == 1) {
	mov	a,#0x01
	cjne	a,_Action,00104$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:113: P2_7 = 0;
	clr	_P2_7
	sjmp	00105$
00104$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:114: } else if (Action == 2) {
	mov	a,#0x02
	cjne	a,_Action,00105$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:115: P2_6 = 0;
	clr	_P2_6
00105$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:117: PWM_state = 0;
	mov	_PWM_state,#0x00
	sjmp	00114$
00112$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:119: temp = 65536 - ton;
	mov	r2,_ton
	mov	r3,(_ton + 1)
	clr	a
	mov	r4,a
	mov	r5,a
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	a,#0x01
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	mov	_temp,r2
	mov	(_temp + 1),r3
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:120: TH0 = temp / 256;
	mov	r2,(_temp + 1)
	mov	_TH0,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:121: TL0 = temp % 256;
	mov	r2,_temp
	mov	r3,#0x00
	mov	_TL0,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:122: if (Action == 1) {
	mov	a,#0x01
	cjne	a,_Action,00109$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:123: P2_7 = 1;
	setb	_P2_7
	sjmp	00110$
00109$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:124: } else if (Action == 2) {
	mov	a,#0x02
	cjne	a,_Action,00110$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:125: P2_6 = 1;
	setb	_P2_6
00110$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:127: PWM_state = 1;
	mov	_PWM_state,#0x01
00114$:
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'time_count_add'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:131: void time_count_add(void) __interrupt 3 {   // 10ms
;	-----------------------------------------
;	 function time_count_add
;	-----------------------------------------
_time_count_add:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	acc
	push	psw
	mov	psw,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:132: TH1 = (65536 - 10000) / 256;
	mov	_TH1,#0xD8
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:133: TL1 = (65536 - 10000) % 256; 
	mov	_TL1,#0xF0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:134: time_count++;
	inc	_time_count
	clr	a
	cjne	a,_time_count,00115$
	inc	(_time_count + 1)
00115$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:135: if (time_count == 100) {
	mov	a,#0x64
	cjne	a,_time_count,00116$
	clr	a
	cjne	a,(_time_count + 1),00116$
	sjmp	00117$
00116$:
	sjmp	00109$
00117$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:136: time_count = 0;
	clr	a
	mov	_time_count,a
	mov	(_time_count + 1),a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:137: if (++T_sec == 60) {
	inc	_T_sec
	mov	a,#0x3C
	cjne	a,_T_sec,00109$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:138: T_sec = 0;
	mov	_T_sec,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:139: if (++T_min == 60) {
	inc	_T_min
	mov	a,#0x3C
	cjne	a,_T_min,00109$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:140: T_min = 0;
	mov	_T_min,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:141: if (++T_hour == 24) {
	inc	_T_hour
	mov	a,#0x18
	cjne	a,_T_hour,00109$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:142: T_hour = 0;
	mov	_T_hour,#0x00
00109$:
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'server_action'
;------------------------------------------------------------
;act                       Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:151: void server_action(int act) {
;	-----------------------------------------
;	 function server_action
;	-----------------------------------------
_server_action:
	mov	r2,dpl
	mov	r3,dph
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:152: Action = act;
	mov	_Action,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:153: if (act == 1) {
	cjne	r2,#0x01,00104$
	cjne	r3,#0x00,00104$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:154: ton = 2100; //2.2ms 左轉
	mov	_ton,#0x34
	mov	(_ton + 1),#0x08
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:155: delay_ms(2000);
	mov	dptr,#0x07D0
	lcall	_delay_ms
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:156: ton = 1000;
	mov	_ton,#0xE8
	mov	(_ton + 1),#0x03
	ret
00104$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:157: } else if (act == 2) {
	cjne	r2,#0x02,00106$
	cjne	r3,#0x00,00106$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:158: ton = 1000;
	mov	_ton,#0xE8
	mov	(_ton + 1),#0x03
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:159: delay_ms(2000);
	mov	dptr,#0x07D0
	lcall	_delay_ms
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:160: ton = 2100;
	mov	_ton,#0x34
	mov	(_ton + 1),#0x08
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'server_initial'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:164: void server_initial(void) {
;	-----------------------------------------
;	 function server_initial
;	-----------------------------------------
_server_initial:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:165: server_action(1);
	mov	dptr,#0x0001
	lcall	_server_action
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:166: delay_ms(2000);
	mov	dptr,#0x07D0
	lcall	_delay_ms
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:167: server_action(2);
	mov	dptr,#0x0002
	ljmp	_server_action
;------------------------------------------------------------
;Allocation info for local variables in function 'finish_setup'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:170: void finish_setup(void) {
;	-----------------------------------------
;	 function finish_setup
;	-----------------------------------------
_finish_setup:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:171: P1 = 0xff;
	mov	_P1,#0xFF
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:172: for (i = 0; i < 10; i++) {
	mov	_i,#0x00
00101$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x8a
	jnc	00104$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:173: P1 = ~P1;
	mov	a,_P1
	cpl	a
	mov	_P1,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:174: delay_ms(300);
	mov	dptr,#0x012C
	lcall	_delay_ms
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:172: for (i = 0; i < 10; i++) {
	inc	_i
	sjmp	00101$
00104$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:176: P1 = 0xff;
	mov	_P1,#0xFF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;prebtn0                   Allocated to registers r2 
;prebtn1                   Allocated to registers r3 
;prebtn2                   Allocated to registers r4 
;prebtn3                   Allocated to registers r5 
;mode2_change_place        Allocated to stack - offset 1
;open_close_time           Allocated to stack - offset 2
;mode                      Allocated to stack - offset 8
;BT_data                   Allocated to stack - offset 9
;sloc0                     Allocated to stack - offset 10
;sloc1                     Allocated to stack - offset 11
;sloc2                     Allocated to stack - offset 12
;sloc3                     Allocated to stack - offset 17
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:179: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0c
	mov	sp,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:180: char prebtn0 = 0, prebtn1 = 0, prebtn2 = 0, prebtn3 = 0;
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:181: char mode2_change_place = 0;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:182: char open_close_time[6] = {0, 0, 0, 0, 0, 0}; //open: Hour, Minute, Second. close: Hour, Minute, Second.
	mov	a,_bp
	add	a,#0x02
	mov	r0,a
	mov	@r0,#0x00
	mov	a,r0
	inc	a
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x02
	add	a,r0
	mov	r7,a
	push	ar0
	mov	r0,ar7
	mov	@r0,#0x00
	pop	ar0
	push	ar1
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x03
	add	a,r0
	mov	@r1,a
	pop	ar1
	push	ar0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0x00
	pop	ar0
	push	ar1
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,#0x04
	add	a,r0
	mov	@r1,a
	pop	ar1
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0x00
	pop	ar0
	push	ar1
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,#0x05
	add	a,r0
	mov	@r1,a
	pop	ar1
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:183: char mode = 1;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x01
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:185: INT0 = 1; INT1 = 1; P2_0 = 1; P2_1 = 1;
	setb	_INT0
	setb	_INT1
	setb	_P2_0
	setb	_P2_1
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:186: ton = 1500;
	mov	_ton,#0xDC
	mov	(_ton + 1),#0x05
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:187: toff = 30000 - 1500;
	mov	_toff,#0x54
	mov	(_toff + 1),#0x6F
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:188: SSD_Initial();
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_SSD_Initial
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:189: time_initial();
	lcall	_time_initial
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:190: UART_Init();
	lcall	_UART_Init
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:191: server_initial();
	lcall	_server_initial
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:192: finish_setup();
	lcall	_finish_setup
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:194: while (1) {
00273$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:195: if (BT_data == '1') {
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	cjne	@r0,#0x31,00357$
	sjmp	00358$
00357$:
	pop	ar0
	sjmp	00104$
00358$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:196: server_action(1);
	mov	dptr,#0x0001
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_server_action
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:197: BT_data = ' ';
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0x20
	pop	ar0
	sjmp	00105$
00104$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:198: } else if (BT_data == '2') {
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	cjne	@r0,#0x32,00359$
	sjmp	00360$
00359$:
	pop	ar0
	sjmp	00105$
00360$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:199: server_action(2);
	mov	dptr,#0x0002
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_server_action
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:200: BT_data = ' ';
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0x20
	pop	ar0
00105$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:203: if (INT0 == 0 && prebtn0 == 1) {
	jnb	_INT0,00361$
	ljmp	00138$
00361$:
	cjne	r2,#0x01,00362$
	sjmp	00363$
00362$:
	ljmp	00138$
00363$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:204: delay_ms(10);
	mov	dptr,#0x000A
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_delay_ms
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
	pop	ar3
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:205: if (INT0 == 0) {
	jnb	_INT0,00364$
	ljmp	00138$
00364$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:206: if (mode == 1) { // 開燈
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x01,00365$
	sjmp	00366$
00365$:
	pop	ar0
	sjmp	00133$
00366$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:207: server_action(1);
	mov	dptr,#0x0001
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_server_action
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
	pop	ar3
	ljmp	00138$
00133$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:208: } else if (mode == 2) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x02,00367$
	sjmp	00368$
00367$:
	pop	ar0
	sjmp	00130$
00368$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:209: switch(mode2_change_place) {
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x00,00369$
	pop	ar0
	sjmp	00107$
00369$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x03,00370$
	sjmp	00371$
00370$:
	pop	ar0
	sjmp	00110$
00371$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:211: case 3:
00107$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:212: if (++open_close_time[mode2_change_place] == 24) {
	push	ar5
	push	ar1
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,r0
	mov	r2,a
	pop	ar1
	push	ar0
	mov	r0,ar2
	inc	@r0
	mov	ar5,@r0
	pop	ar0
	cjne	r5,#0x18,00372$
	sjmp	00373$
00372$:
	pop	ar5
	ljmp	00138$
00373$:
	pop	ar5
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:213: open_close_time[mode2_change_place] = 0;
	push	ar0
	mov	r0,ar2
	mov	@r0,#0x00
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:215: break;
	ljmp	00138$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:216: default:
00110$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:217: if (++open_close_time[mode2_change_place] == 60) {
	push	ar5
	push	ar1
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,r0
	mov	r2,a
	pop	ar1
	push	ar0
	mov	r0,ar2
	inc	@r0
	mov	ar5,@r0
	pop	ar0
	cjne	r5,#0x3C,00374$
	sjmp	00375$
00374$:
	pop	ar5
	sjmp	00138$
00375$:
	pop	ar5
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:218: open_close_time[mode2_change_place] = 0;
	push	ar0
	mov	r0,ar2
	mov	@r0,#0x00
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:220: }
	sjmp	00138$
00130$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:221: } else if (mode == 3) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x03,00376$
	pop	ar0
	sjmp	00138$
00376$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:223: } else if (mode == 4) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x04,00377$
	sjmp	00378$
00377$:
	pop	ar0
	sjmp	00138$
00378$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:224: switch (change_time) {
	clr	a
	cjne	a,_change_time,00379$
	sjmp	00114$
00379$:
	mov	a,#0x01
	cjne	a,_change_time,00380$
	sjmp	00117$
00380$:
	mov	a,#0x02
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:225: case 0:
	cjne	a,_change_time,00138$
	sjmp	00120$
00114$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:226: if (++T_hour >= 24) {
	inc	_T_hour
	clr	c
	mov	a,_T_hour
	xrl	a,#0x80
	subb	a,#0x98
	jc	00138$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:227: T_hour = 0;
	mov	_T_hour,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:229: break;
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:230: case 1:
	sjmp	00138$
00117$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:231: if (++T_min >= 60) {
	inc	_T_min
	clr	c
	mov	a,_T_min
	xrl	a,#0x80
	subb	a,#0xbc
	jc	00138$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:232: T_min = 0;
	mov	_T_min,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:234: break;
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:235: case 2:
	sjmp	00138$
00120$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:236: if (++T_sec >= 60) {
	inc	_T_sec
	clr	c
	mov	a,_T_sec
	xrl	a,#0x80
	subb	a,#0xbc
	jc	00138$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:237: T_sec = 0;
	mov	_T_sec,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:239: }
00138$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:243: if (INT1 == 0 && prebtn1 == 1) {
	jnb	_INT1,00385$
	ljmp	00176$
00385$:
	cjne	r3,#0x01,00386$
	sjmp	00387$
00386$:
	ljmp	00176$
00387$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:244: delay_ms(10);
	mov	dptr,#0x000A
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_delay_ms
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:245: if (INT1 == 0) {
	jnb	_INT1,00388$
	ljmp	00176$
00388$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:246: if (mode == 1) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x01,00389$
	sjmp	00390$
00389$:
	pop	ar0
	sjmp	00171$
00390$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:247: server_action(2);
	mov	dptr,#0x0002
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_server_action
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
	ljmp	00176$
00171$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:248: } else if (mode == 2) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x02,00391$
	sjmp	00392$
00391$:
	pop	ar0
	sjmp	00168$
00392$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:249: switch(mode2_change_place) {
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x00,00393$
	pop	ar0
	sjmp	00141$
00393$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x03,00394$
	sjmp	00395$
00394$:
	pop	ar0
	sjmp	00144$
00395$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:251: case 3:
00141$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:252: if (--open_close_time[mode2_change_place] <= 0) {
	push	ar5
	push	ar1
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,r0
	mov	r2,a
	pop	ar1
	push	ar0
	mov	r0,ar2
	dec	@r0
	mov	ar5,@r0
	pop	ar0
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	pop	ar5
	jnc	00396$
	ljmp	00176$
00396$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:253: open_close_time[mode2_change_place] = 23;
	push	ar0
	mov	r0,ar2
	mov	@r0,#0x17
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:255: break;
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:256: default:
	sjmp	00176$
00144$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:257: if (--open_close_time[mode2_change_place] <= 0) {
	push	ar5
	push	ar1
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,r0
	mov	r2,a
	pop	ar1
	push	ar0
	mov	r0,ar2
	dec	@r0
	mov	ar5,@r0
	pop	ar0
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	pop	ar5
	jc	00176$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:258: open_close_time[mode2_change_place] = 59;
	push	ar0
	mov	r0,ar2
	mov	@r0,#0x3B
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:260: }
	sjmp	00176$
00168$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:261: } else if (mode == 3) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x03,00398$
	pop	ar0
	sjmp	00176$
00398$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:263: } else if (mode == 4) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x04,00399$
	sjmp	00400$
00399$:
	pop	ar0
	sjmp	00176$
00400$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:264: if (change_time == 0) {
	mov	a,_change_time
	jnz	00160$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:265: if (--T_hour < 0) {
	dec	_T_hour
	mov	a,_T_hour
	jnb	acc.7,00176$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:266: T_hour = 23;
	mov	_T_hour,#0x17
	sjmp	00176$
00160$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:268: } else if (change_time == 1) {
	mov	a,#0x01
	cjne	a,_change_time,00157$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:269: if (--T_min < 0) {
	dec	_T_min
	mov	a,_T_min
	jnb	acc.7,00176$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:270: T_min = 59;
	mov	_T_min,#0x3B
	sjmp	00176$
00157$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:272: } else if (change_time == 2) {
	mov	a,#0x02
	cjne	a,_change_time,00176$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:273: if (--T_sec < 0) {
	dec	_T_sec
	mov	a,_T_sec
	jnb	acc.7,00176$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:274: T_sec = 59;
	mov	_T_sec,#0x3B
00176$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:280: if (P2_0 == 0 && prebtn2 == 1) {
	jnb	_P2_0,00409$
	ljmp	00192$
00409$:
	cjne	r4,#0x01,00410$
	sjmp	00411$
00410$:
	ljmp	00192$
00411$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:281: delay_ms(10);
	mov	dptr,#0x000A
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_delay_ms
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:282: if (P2_0 == 0) {
	jb	_P2_0,00192$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:283: if (mode == 1) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x01,00413$
	sjmp	00414$
00413$:
	pop	ar0
	sjmp	00187$
00414$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:284: mode = 2;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x02
	pop	ar0
	sjmp	00192$
00187$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:285: } else if (mode == 2) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x02,00415$
	sjmp	00416$
00415$:
	pop	ar0
	sjmp	00184$
00416$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:286: mode = 3;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x03
	pop	ar0
	sjmp	00192$
00184$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:287: } else if (mode == 3) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x03,00417$
	sjmp	00418$
00417$:
	pop	ar0
	sjmp	00181$
00418$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:288: mode = 4;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x04
	pop	ar0
	sjmp	00192$
00181$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:289: } else if (mode == 4) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x04,00419$
	sjmp	00420$
00419$:
	pop	ar0
	sjmp	00192$
00420$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:290: mode = 1;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x01
	pop	ar0
00192$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:294: if (P2_1 == 0 && prebtn3 == 1) {
	jb	_P2_1,00212$
	cjne	r5,#0x01,00212$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:295: delay_ms(10);
	mov	dptr,#0x000A
	push	ar7
	push	ar0
	push	ar1
	lcall	_delay_ms
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:296: if (P2_1 == 0) {
	jb	_P2_1,00212$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:297: if (mode == 1) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x01,00425$
	pop	ar0
	sjmp	00212$
00425$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:299: } else if (mode == 2) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x02,00426$
	sjmp	00427$
00426$:
	pop	ar0
	sjmp	00204$
00427$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:300: if (++mode2_change_place == 6) {
	mov	r0,_bp
	inc	r0
	inc	@r0
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x06,00428$
	sjmp	00429$
00428$:
	pop	ar0
	sjmp	00212$
00429$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:301: mode2_change_place = 0;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
	pop	ar0
	sjmp	00212$
00204$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:303: } else if (mode == 3) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x03,00430$
	pop	ar0
	sjmp	00212$
00430$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:305: } else if (mode == 4) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x04,00431$
	sjmp	00432$
00431$:
	pop	ar0
	sjmp	00212$
00432$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:306: if (++change_time == 3) {
	inc	_change_time
	mov	a,#0x03
	cjne	a,_change_time,00212$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:307: change_time = 0;
	mov	_change_time,#0x00
00212$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:314: if (mode == 1) { // 一般模式
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x01,00435$
	sjmp	00436$
00435$:
	pop	ar0
	sjmp	00270$
00436$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:315: for (i = 0; i <= 8; i++) {
	mov	_i,#0x00
00275$:
	clr	c
	mov	a,#(0x08 ^ 0x80)
	mov	b,_i
	xrl	b,#0x80
	subb	a,b
	jc	00278$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:316: Write7219(i, 0x0f);
	mov	dpl,_i
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:315: for (i = 0; i <= 8; i++) {
	inc	_i
	sjmp	00275$
00278$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:318: Write7219(1, 1);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x01
	push	acc
	mov	dpl,#0x01
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	ljmp	00271$
00270$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:319: } else if (mode == 2) { // 設定自動時間模式
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x02,00438$
	sjmp	00439$
00438$:
	pop	ar0
	ljmp	00267$
00439$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:320: if (mode2_change_place < 3) {
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x83
	pop	ar0
	jc	00440$
	ljmp	00249$
00440$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:321: if (mode2_change_place == 0) {
	push	ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	pop	ar0
	jz	00441$
	ljmp	00229$
00441$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:322: if (time_count >= 50) {
	clr	c
	mov	a,_time_count
	subb	a,#0x32
	mov	a,(_time_count + 1)
	subb	a,#0x00
	jc	00215$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:323: Write7219(8, open_close_time[0] / 10);
	push	ar7
	mov	ar7,@r0
	clr	F0
	mov	b,#0x0a
	mov	a,r7
	jnb	acc.7,00443$
	cpl	F0
	cpl	a
	inc	a
00443$:
	div	ab
	jnb	F0,00444$
	cpl	a
	inc	a
00444$:
	mov	r7,a
	push	ar7
	push	ar0
	push	ar1
	push	ar7
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:324: Write7219(7, open_close_time[0] % 10); 
	mov	ar7,@r0
	mov	b,#0x0a
	mov	a,r7
	clr	F0
	jnb	acc.7,00445$
	setb	F0
	cpl	a
	inc	a
00445$:
	div	ab
	mov	a,b
	jnb	F0,00446$
	cpl	a
	inc	a
00446$:
	mov	r7,a
	push	ar7
	push	ar0
	push	ar1
	push	ar7
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar7
	sjmp	00216$
00215$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:326: Write7219(8, 0x0f);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:327: Write7219(7, 0x0f); 
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00216$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:329: Write7219(6, open_close_time[1] / 10);
	push	ar0
	mov	ar6,@r1
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00447$
	cpl	F0
	cpl	a
	inc	a
00447$:
	div	ab
	jnb	F0,00448$
	cpl	a
	inc	a
00448$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:330: Write7219(5, open_close_time[1] % 10);
	mov	ar6,@r1
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00449$
	setb	F0
	cpl	a
	inc	a
00449$:
	div	ab
	mov	a,b
	jnb	F0,00450$
	cpl	a
	inc	a
00450$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:331: Write7219(4, open_close_time[2] / 10);
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00451$
	cpl	F0
	cpl	a
	inc	a
00451$:
	div	ab
	jnb	F0,00452$
	cpl	a
	inc	a
00452$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:332: Write7219(3, open_close_time[2] % 10);
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00453$
	setb	F0
	cpl	a
	inc	a
00453$:
	div	ab
	mov	a,b
	jnb	F0,00454$
	cpl	a
	inc	a
00454$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar0
	ljmp	00230$
00229$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:333: } else if (mode2_change_place == 1) {
	push	ar0
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x01,00455$
	sjmp	00456$
00455$:
	pop	ar0
	ljmp	00226$
00456$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:334: if (time_count >= 50) {
	clr	c
	mov	a,_time_count
	subb	a,#0x32
	mov	a,(_time_count + 1)
	subb	a,#0x00
	jc	00218$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:335: Write7219(6, open_close_time[1] / 10);
	mov	ar6,@r1
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00458$
	cpl	F0
	cpl	a
	inc	a
00458$:
	div	ab
	jnb	F0,00459$
	cpl	a
	inc	a
00459$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:336: Write7219(5, open_close_time[1] % 10);
	mov	ar6,@r1
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00460$
	setb	F0
	cpl	a
	inc	a
00460$:
	div	ab
	mov	a,b
	jnb	F0,00461$
	cpl	a
	inc	a
00461$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	sjmp	00219$
00218$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:338: Write7219(6, 0x0f);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:339: Write7219(5, 0x0f); 
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00219$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:341: Write7219(8, open_close_time[0] / 10);
	mov	ar6,@r0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00462$
	cpl	F0
	cpl	a
	inc	a
00462$:
	div	ab
	jnb	F0,00463$
	cpl	a
	inc	a
00463$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:342: Write7219(7, open_close_time[0] % 10); 
	mov	ar6,@r0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00464$
	setb	F0
	cpl	a
	inc	a
00464$:
	div	ab
	mov	a,b
	jnb	F0,00465$
	cpl	a
	inc	a
00465$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:343: Write7219(4, open_close_time[2] / 10);
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00466$
	cpl	F0
	cpl	a
	inc	a
00466$:
	div	ab
	jnb	F0,00467$
	cpl	a
	inc	a
00467$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:344: Write7219(3, open_close_time[2] % 10);
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00468$
	setb	F0
	cpl	a
	inc	a
00468$:
	div	ab
	mov	a,b
	jnb	F0,00469$
	cpl	a
	inc	a
00469$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	ljmp	00230$
00226$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:345: } else if (mode2_change_place == 2) {
	push	ar0
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x02,00470$
	sjmp	00471$
00470$:
	pop	ar0
	ljmp	00230$
00471$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:346: if (time_count >= 50) {
	clr	c
	mov	a,_time_count
	subb	a,#0x32
	mov	a,(_time_count + 1)
	subb	a,#0x00
	jc	00221$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:347: Write7219(4, open_close_time[2] / 10);
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00473$
	cpl	F0
	cpl	a
	inc	a
00473$:
	div	ab
	jnb	F0,00474$
	cpl	a
	inc	a
00474$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:348: Write7219(3, open_close_time[2] % 10);
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00475$
	setb	F0
	cpl	a
	inc	a
00475$:
	div	ab
	mov	a,b
	jnb	F0,00476$
	cpl	a
	inc	a
00476$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	sjmp	00222$
00221$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:350: Write7219(4, 0x0f);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:351: Write7219(3, 0x0f); 
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00222$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:353: Write7219(6, open_close_time[1] / 10);
	mov	ar6,@r1
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00477$
	cpl	F0
	cpl	a
	inc	a
00477$:
	div	ab
	jnb	F0,00478$
	cpl	a
	inc	a
00478$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:354: Write7219(5, open_close_time[1] % 10);
	mov	ar6,@r1
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00479$
	setb	F0
	cpl	a
	inc	a
00479$:
	div	ab
	mov	a,b
	jnb	F0,00480$
	cpl	a
	inc	a
00480$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:355: Write7219(8, open_close_time[0] / 10);
	mov	ar6,@r0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00481$
	cpl	F0
	cpl	a
	inc	a
00481$:
	div	ab
	jnb	F0,00482$
	cpl	a
	inc	a
00482$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:356: Write7219(7, open_close_time[0] % 10); 
	mov	ar6,@r0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00483$
	setb	F0
	cpl	a
	inc	a
00483$:
	div	ab
	mov	a,b
	jnb	F0,00484$
	cpl	a
	inc	a
00484$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00230$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:358: Write7219(2, 1);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x01
	push	acc
	mov	dpl,#0x02
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	ljmp	00250$
00249$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:360: if (mode2_change_place == 3) {
	push	ar0
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x03,00485$
	sjmp	00486$
00485$:
	pop	ar0
	ljmp	00246$
00486$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:361: if (time_count >= 50) {
	clr	c
	mov	a,_time_count
	subb	a,#0x32
	mov	a,(_time_count + 1)
	subb	a,#0x00
	jc	00232$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:362: Write7219(8, open_close_time[3] / 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00488$
	cpl	F0
	cpl	a
	inc	a
00488$:
	div	ab
	jnb	F0,00489$
	cpl	a
	inc	a
00489$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:363: Write7219(7, open_close_time[3] % 10); 
	push	ar0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00490$
	setb	F0
	cpl	a
	inc	a
00490$:
	div	ab
	mov	a,b
	jnb	F0,00491$
	cpl	a
	inc	a
00491$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	sjmp	00233$
00232$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:365: Write7219(8, 0x0f);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:366: Write7219(7, 0x0f); 
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00233$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:368: Write7219(6, open_close_time[4] / 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00492$
	cpl	F0
	cpl	a
	inc	a
00492$:
	div	ab
	jnb	F0,00493$
	cpl	a
	inc	a
00493$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:369: Write7219(5, open_close_time[4] % 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00494$
	setb	F0
	cpl	a
	inc	a
00494$:
	div	ab
	mov	a,b
	jnb	F0,00495$
	cpl	a
	inc	a
00495$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:370: Write7219(4, open_close_time[5] / 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00496$
	cpl	F0
	cpl	a
	inc	a
00496$:
	div	ab
	jnb	F0,00497$
	cpl	a
	inc	a
00497$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:371: Write7219(3, open_close_time[5] % 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00498$
	setb	F0
	cpl	a
	inc	a
00498$:
	div	ab
	mov	a,b
	jnb	F0,00499$
	cpl	a
	inc	a
00499$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	ljmp	00247$
00246$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:372: } else if (mode2_change_place == 4) {
	push	ar0
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x04,00500$
	sjmp	00501$
00500$:
	pop	ar0
	ljmp	00243$
00501$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:373: if (time_count >= 50) {
	clr	c
	mov	a,_time_count
	subb	a,#0x32
	mov	a,(_time_count + 1)
	subb	a,#0x00
	jc	00235$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:374: Write7219(6, open_close_time[4] / 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00503$
	cpl	F0
	cpl	a
	inc	a
00503$:
	div	ab
	jnb	F0,00504$
	cpl	a
	inc	a
00504$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:375: Write7219(5, open_close_time[4] % 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00505$
	setb	F0
	cpl	a
	inc	a
00505$:
	div	ab
	mov	a,b
	jnb	F0,00506$
	cpl	a
	inc	a
00506$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	sjmp	00236$
00235$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:377: Write7219(6, 0x0f);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:378: Write7219(5, 0x0f); 
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00236$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:380: Write7219(8, open_close_time[3] / 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00507$
	cpl	F0
	cpl	a
	inc	a
00507$:
	div	ab
	jnb	F0,00508$
	cpl	a
	inc	a
00508$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:381: Write7219(7, open_close_time[3] % 10); 
	push	ar0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00509$
	setb	F0
	cpl	a
	inc	a
00509$:
	div	ab
	mov	a,b
	jnb	F0,00510$
	cpl	a
	inc	a
00510$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:382: Write7219(4, open_close_time[5] / 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00511$
	cpl	F0
	cpl	a
	inc	a
00511$:
	div	ab
	jnb	F0,00512$
	cpl	a
	inc	a
00512$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:383: Write7219(3, open_close_time[5] % 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00513$
	setb	F0
	cpl	a
	inc	a
00513$:
	div	ab
	mov	a,b
	jnb	F0,00514$
	cpl	a
	inc	a
00514$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	ljmp	00247$
00243$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:384: } else if (mode2_change_place == 5) {
	push	ar0
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x05,00515$
	sjmp	00516$
00515$:
	pop	ar0
	ljmp	00247$
00516$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:385: if (time_count >= 50) {
	clr	c
	mov	a,_time_count
	subb	a,#0x32
	mov	a,(_time_count + 1)
	subb	a,#0x00
	jc	00238$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:386: Write7219(4, open_close_time[5] / 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00518$
	cpl	F0
	cpl	a
	inc	a
00518$:
	div	ab
	jnb	F0,00519$
	cpl	a
	inc	a
00519$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:387: Write7219(3, open_close_time[5] % 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00520$
	setb	F0
	cpl	a
	inc	a
00520$:
	div	ab
	mov	a,b
	jnb	F0,00521$
	cpl	a
	inc	a
00521$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	sjmp	00239$
00238$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:389: Write7219(4, 0x0f);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:390: Write7219(3, 0x0f); 
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00239$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:392: Write7219(5, open_close_time[4] % 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00522$
	setb	F0
	cpl	a
	inc	a
00522$:
	div	ab
	mov	a,b
	jnb	F0,00523$
	cpl	a
	inc	a
00523$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:393: Write7219(6, open_close_time[4] / 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00524$
	cpl	F0
	cpl	a
	inc	a
00524$:
	div	ab
	jnb	F0,00525$
	cpl	a
	inc	a
00525$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:394: Write7219(7, open_close_time[3] % 10); 
	push	ar0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00526$
	setb	F0
	cpl	a
	inc	a
00526$:
	div	ab
	mov	a,b
	jnb	F0,00527$
	cpl	a
	inc	a
00527$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:395: Write7219(8, open_close_time[3] / 10);
	push	ar0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00528$
	cpl	F0
	cpl	a
	inc	a
00528$:
	div	ab
	jnb	F0,00529$
	cpl	a
	inc	a
00529$:
	mov	r6,a
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00247$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:397: Write7219(2, 2);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x02
	push	acc
	mov	dpl,#0x02
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00250$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:399: Write7219(1, 2);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x02
	push	acc
	mov	dpl,#0x01
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:400: if (open_close_time[0] == T_hour && open_close_time[1] == T_min && open_close_time[2] == T_sec) {
	mov	a,@r0
	mov	r6,a
	cjne	a,_T_hour,00256$
	mov	a,@r1
	mov	r6,a
	cjne	a,_T_min,00256$
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	mov	a,r6
	cjne	a,_T_sec,00256$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:401: server_action(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar0
	push	ar1
	lcall	_server_action
	pop	ar1
	pop	ar0
	pop	ar7
	ljmp	00271$
00256$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:402: } else if (open_close_time[3] == T_hour && open_close_time[4] == T_min && open_close_time[5] == T_sec) {
	push	ar0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	a,r6
	cjne	a,_T_hour,00536$
	sjmp	00537$
00536$:
	ljmp	00271$
00537$:
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	a,r6
	cjne	a,_T_min,00538$
	sjmp	00539$
00538$:
	ljmp	00271$
00539$:
	push	ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	a,r6
	cjne	a,_T_sec,00540$
	sjmp	00541$
00540$:
	ljmp	00271$
00541$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:403: server_action(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar0
	push	ar1
	lcall	_server_action
	pop	ar1
	pop	ar0
	pop	ar7
	ljmp	00271$
00267$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:405: } else if (mode == 3 || mode == 4) { // 顯示當前時間
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	a
	cjne	@r0,#0x03,00542$
	inc	a
00542$:
	mov	r6,a
	pop	ar0
	mov	a,r6
	jnz	00263$
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x04,00545$
	sjmp	00546$
00545$:
	pop	ar0
	ljmp	00271$
00546$:
	pop	ar0
00263$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:406: Write7219(8, T_hour / 10);
	push	ar7
	clr	F0
	mov	b,#0x0a
	mov	a,_T_hour
	jnb	acc.7,00547$
	cpl	F0
	cpl	a
	inc	a
00547$:
	div	ab
	jnb	F0,00548$
	cpl	a
	inc	a
00548$:
	mov	r7,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar7
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:407: Write7219(7, T_hour % 10);
	mov	b,#0x0a
	mov	a,_T_hour
	clr	F0
	jnb	acc.7,00549$
	setb	F0
	cpl	a
	inc	a
00549$:
	div	ab
	mov	a,b
	jnb	F0,00550$
	cpl	a
	inc	a
00550$:
	mov	r7,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar7
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:408: Write7219(6, T_min / 10);
	clr	F0
	mov	b,#0x0a
	mov	a,_T_min
	jnb	acc.7,00551$
	cpl	F0
	cpl	a
	inc	a
00551$:
	div	ab
	jnb	F0,00552$
	cpl	a
	inc	a
00552$:
	mov	r7,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar7
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:409: Write7219(5, T_min % 10);
	mov	b,#0x0a
	mov	a,_T_min
	clr	F0
	jnb	acc.7,00553$
	setb	F0
	cpl	a
	inc	a
00553$:
	div	ab
	mov	a,b
	jnb	F0,00554$
	cpl	a
	inc	a
00554$:
	mov	r7,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar7
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:410: Write7219(4, T_sec / 10);
	clr	F0
	mov	b,#0x0a
	mov	a,_T_sec
	jnb	acc.7,00555$
	cpl	F0
	cpl	a
	inc	a
00555$:
	div	ab
	jnb	F0,00556$
	cpl	a
	inc	a
00556$:
	mov	r7,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar7
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:411: Write7219(3, T_sec % 10);
	mov	b,#0x0a
	mov	a,_T_sec
	clr	F0
	jnb	acc.7,00557$
	setb	F0
	cpl	a
	inc	a
00557$:
	div	ab
	mov	a,b
	jnb	F0,00558$
	cpl	a
	inc	a
00558$:
	mov	r7,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar7
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:412: if (mode == 3) Write7219(2, 0x0f);
	pop	ar7
	mov	a,r6
	jz	00261$
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x02
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	sjmp	00262$
00261$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:413: else Write7219(2, 0x7E);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x7E
	push	acc
	mov	dpl,#0x02
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00262$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:414: Write7219(1, mode);
	push	ar7
	push	ar0
	push	ar1
	mov	b,ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,#0x01
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00271$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:417: toff = 30000 - ton;
	mov	a,#0x30
	clr	c
	subb	a,_ton
	mov	_toff,a
	mov	a,#0x75
	subb	a,(_ton + 1)
	mov	(_toff + 1),a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:418: prebtn0 = INT0;
	mov	c,_INT0
	clr	a
	rlc	a
	mov	r2,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:419: prebtn1 = INT1;
	mov	c,_INT1
	clr	a
	rlc	a
	mov	r3,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:420: prebtn2 = P2_0;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	r4,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:421: prebtn3 = P2_1;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	r5,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:422: delay_ms(20);
	mov	dptr,#0x0014
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_delay_ms
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00273$
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
