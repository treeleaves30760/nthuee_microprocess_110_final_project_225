;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Sat Jan 22 23:47:24 2022
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
	.globl _Write7219ALL
	.globl _time_count_add
	.globl _timer0_isr
	.globl _time_initial
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
	.globl _ms1
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
_ms1::
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:19: unsigned int ms1 = 907; // 透過修正timer1的時間修正系統性的時間計算誤差
	mov	_ms1,#0x8B
	mov	(_ms1 + 1),#0x03
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:20: signed char T_hour = 0, T_min = 0, T_sec = 0;
	mov	_T_hour,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:20: unsigned char PWM_state = 0;
	mov	_T_min,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:20: signed char T_hour = 0, T_min = 0, T_sec = 0;
	mov	_T_sec,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:21: unsigned char PWM_state = 0;
	mov	_PWM_state,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:22: unsigned char Action = 0; // 1: open, 2: close
	mov	_Action,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:23: unsigned char change_time = 0;
	mov	_change_time,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:24: char BT_data = ' ';
	mov	_BT_data,#0x20
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:25: char BT_data_flag = 0;
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:28: void sendbyte(unsigned char address,unsigned char dat) {
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:30: for (i=0;i<8;i++) {
	mov	r3,#0x00
00101$:
	cjne	r3,#0x08,00117$
00117$:
	jnc	00104$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:31: CLK=0;
	clr	_P3_6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:32: DIN=(address&0x80);
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:33: address<<=1;
	mov	a,r2
	add	a,r2
	mov	_P3_4,c
	mov	r2,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:34: CLK=1;
	setb	_P3_6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:30: for (i=0;i<8;i++) {
	inc	r3
	sjmp	00101$
00104$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:36: for (i=0;i<8;i++) {
	mov	r2,#0x00
00105$:
	cjne	r2,#0x08,00119$
00119$:
	jnc	00109$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:37: CLK=0;
	clr	_P3_6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:38: DIN=(dat&0x80);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	rlc	a
	mov	_P3_4,c
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:39: dat<<=1;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,acc
	mov	@r0,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:40: CLK=1;
	setb	_P3_6
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:36: for (i=0;i<8;i++) {
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:44: void Write7219(unsigned char address,unsigned char dat) {
;	-----------------------------------------
;	 function Write7219
;	-----------------------------------------
_Write7219:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:46: LOAD=0;
	clr	_P3_5
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:47: for(cnt=1;cnt<=matrixnum;cnt++) sendbyte(address,dat);
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:48: LOAD=1;                  
	setb	_P3_5
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD_Initial'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:51: void SSD_Initial(void) {
;	-----------------------------------------
;	 function SSD_Initial
;	-----------------------------------------
_SSD_Initial:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:53: Write7219(SHUT_DOWN,0x01);
	mov	a,#0x01
	push	acc
	mov	dpl,#0x0C
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:54: Write7219(DISPLAY_TEST,0x00);
	clr	a
	push	acc
	mov	dpl,#0x0F
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:55: Write7219(DECODE_MODE,0xff);
	mov	a,#0xFF
	push	acc
	mov	dpl,#0x09
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:56: Write7219(SCAN_LIMIT,0x07);
	mov	a,#0x07
	push	acc
	mov	dpl,#0x0B
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:57: Write7219(INTENSITY,0x00);
	clr	a
	push	acc
	mov	dpl,#0x0A
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:58: for(i=1;i<=8;i++) Write7219(i,0x0f);
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:61: void delay_ms(int ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r2,dpl
	mov	r3,dph
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:64: for (i = 0; i < ms; i++) {
	mov	r4,#0x00
	mov	r5,#0x00
00104$:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	00108$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:65: for (j = 0; j < 90; j++);
	mov	r6,#0x5A
00103$:
	djnz	r6,00103$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:64: for (i = 0; i < ms; i++) {
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
	sjmp	00104$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'time_initial'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:70: void time_initial(void) {
;	-----------------------------------------
;	 function time_initial
;	-----------------------------------------
_time_initial:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:71: TMOD = 0x11;  // Set Timer 1 to  mode 0 & Timer 0 mode 1. (16-bit timer)
	mov	_TMOD,#0x11
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:72: IE|=0x02; //開啟計時器中斷功能
	orl	_IE,#0x02
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:73: temp = 65536 - dutytime; //設定中斷一次的時間(預設是dutytime)
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:74: TH0 = temp / 256; //填入高八位
	mov	r2,(_temp + 1)
	mov	_TH0,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:75: TL0 = temp % 256; //填入低八位
	mov	r2,_temp
	mov	_TL0,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:76: TH1 = (65536-1000) / 256;   // Load initial higher 8 bits into Timer 1
	mov	_TH1,#0xFC
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:77: TL1 = (65536-1000) % 256;   // Load initial lower 8 bits into Timer 1
	mov	_TL1,#0x18
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:78: EA = 1;                // Enable all interrupt
	setb	_EA
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:79: ET0 = 1;            // Enable Timer 0 interrupt
	setb	_ET0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:80: TR0 = 1;            // Start Timer 0
	setb	_TR0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:81: ET1 = 1;            // Enable Timer 1 interrupt
	setb	_ET1
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:82: TR1 = 1;             // Start Timer 1
	setb	_TR1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:86: void timer0_isr(void) __interrupt TF0_VECTOR __using 1 {
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:87: if (PWM_state == 1) {
	mov	a,#0x01
	cjne	a,_PWM_state,00112$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:88: temp = 65536 - toff;
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:89: TH0 = temp / 256;
	mov	r2,(_temp + 1)
	mov	_TH0,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:90: TL0 = temp % 256;
	mov	r2,_temp
	mov	r3,#0x00
	mov	_TL0,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:91: if (Action == 1) {
	mov	a,#0x01
	cjne	a,_Action,00104$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:92: P2_7 = 0;
	clr	_P2_7
	sjmp	00105$
00104$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:93: } else if (Action == 2) {
	mov	a,#0x02
	cjne	a,_Action,00105$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:94: P2_6 = 0;
	clr	_P2_6
00105$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:96: PWM_state = 0;
	mov	_PWM_state,#0x00
	sjmp	00114$
00112$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:98: temp = 65536 - ton;
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:99: TH0 = temp / 256;
	mov	r2,(_temp + 1)
	mov	_TH0,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:100: TL0 = temp % 256;
	mov	r2,_temp
	mov	r3,#0x00
	mov	_TL0,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:101: if (Action == 1) {
	mov	a,#0x01
	cjne	a,_Action,00109$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:102: P2_7 = 1;
	setb	_P2_7
	sjmp	00110$
00109$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:103: } else if (Action == 2) {
	mov	a,#0x02
	cjne	a,_Action,00110$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:104: P2_6 = 1;
	setb	_P2_6
00110$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:106: PWM_state = 1;
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:110: void time_count_add(void) __interrupt 3 {   // 10ms
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:111: TH1 = (65536 - 1000) / 256;
	mov	_TH1,#0xFC
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:112: TL1 = (65536 - 1000) % 256; 
	mov	_TL1,#0x18
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:113: time_count++;
	inc	_time_count
	clr	a
	cjne	a,_time_count,00115$
	inc	(_time_count + 1)
00115$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:114: if (time_count == ms1) {
	mov	a,_ms1
	cjne	a,_time_count,00109$
	mov	a,(_ms1 + 1)
	cjne	a,(_time_count + 1),00109$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:115: time_count = 0;
	clr	a
	mov	_time_count,a
	mov	(_time_count + 1),a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:116: if (++T_sec == 60) {
	inc	_T_sec
	mov	a,#0x3C
	cjne	a,_T_sec,00109$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:117: T_sec = 0;
	mov	_T_sec,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:118: if (++T_min == 60) {
	inc	_T_min
	mov	a,#0x3C
	cjne	a,_T_min,00109$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:119: T_min = 0;
	mov	_T_min,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:120: if (++T_hour == 24) {
	inc	_T_hour
	mov	a,#0x18
	cjne	a,_T_hour,00109$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:121: T_hour = 0;
	mov	_T_hour,#0x00
00109$:
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Write7219ALL'
;------------------------------------------------------------
;pl7                       Allocated to stack - offset -4
;pl6                       Allocated to stack - offset -6
;pl5                       Allocated to stack - offset -8
;pl4                       Allocated to stack - offset -10
;pl3                       Allocated to stack - offset -12
;pl2                       Allocated to stack - offset -14
;pl1                       Allocated to stack - offset -16
;pl8                       Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:128: void Write7219ALL(int pl8, int pl7, int pl6, int pl5, int pl4, int pl3, int pl2, int pl1) {
;	-----------------------------------------
;	 function Write7219ALL
;	-----------------------------------------
_Write7219ALL:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:129: Write7219(8, pl8);
	push	ar2
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:130: Write7219(7, pl7);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:131: Write7219(6, pl6);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:132: Write7219(5, pl5);
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:133: Write7219(4, pl4);
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:134: Write7219(3, pl3);
	mov	a,_bp
	add	a,#0xf4
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:135: Write7219(2, pl2);
	mov	a,_bp
	add	a,#0xf2
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x02
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:136: Write7219(1, pl1);
	mov	a,_bp
	add	a,#0xf0
	mov	r0,a
	mov	ar2,@r0
	push	ar2
	mov	dpl,#0x01
	lcall	_Write7219
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'server_action'
;------------------------------------------------------------
;act                       Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:140: void server_action(int act) {
;	-----------------------------------------
;	 function server_action
;	-----------------------------------------
_server_action:
	mov	r2,dpl
	mov	r3,dph
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:141: Action = act;
	mov	_Action,r2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:142: if (act == 1) {
	cjne	r2,#0x01,00104$
	cjne	r3,#0x00,00104$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:143: ton = 2100; //2.2ms 左轉
	mov	_ton,#0x34
	mov	(_ton + 1),#0x08
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:144: delay_ms(2000);
	mov	dptr,#0x07D0
	lcall	_delay_ms
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:145: ton = 1000;
	mov	_ton,#0xE8
	mov	(_ton + 1),#0x03
	ret
00104$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:146: } else if (act == 2) {
	cjne	r2,#0x02,00106$
	cjne	r3,#0x00,00106$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:147: ton = 1000;
	mov	_ton,#0xE8
	mov	(_ton + 1),#0x03
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:148: delay_ms(2000);
	mov	dptr,#0x07D0
	lcall	_delay_ms
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:149: ton = 2100;
	mov	_ton,#0x34
	mov	(_ton + 1),#0x08
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'server_initial'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:153: void server_initial(void) {
;	-----------------------------------------
;	 function server_initial
;	-----------------------------------------
_server_initial:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:154: server_action(1);
	mov	dptr,#0x0001
	lcall	_server_action
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:155: delay_ms(2000);
	mov	dptr,#0x07D0
	lcall	_delay_ms
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:156: server_action(2);
	mov	dptr,#0x0002
	ljmp	_server_action
;------------------------------------------------------------
;Allocation info for local variables in function 'finish_setup'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:159: void finish_setup(void) {
;	-----------------------------------------
;	 function finish_setup
;	-----------------------------------------
_finish_setup:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:160: P1 = 0xff;
	mov	_P1,#0xFF
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:161: for (i = 0; i < 10; i++) {
	mov	_i,#0x00
00101$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x8a
	jnc	00104$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:162: P1 = ~P1;
	mov	a,_P1
	cpl	a
	mov	_P1,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:163: delay_ms(300);
	mov	dptr,#0x012C
	lcall	_delay_ms
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:161: for (i = 0; i < 10; i++) {
	inc	_i
	sjmp	00101$
00104$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:165: P1 = 0xff;
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
;sloc0                     Allocated to stack - offset 9
;sloc1                     Allocated to stack - offset 10
;sloc2                     Allocated to stack - offset 11
;sloc3                     Allocated to stack - offset 16
;sloc4                     Allocated to stack - offset 12
;sloc5                     Allocated to stack - offset 14
;sloc6                     Allocated to stack - offset 16
;sloc7                     Allocated to stack - offset 18
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:168: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x13
	mov	sp,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:169: char prebtn0 = 0, prebtn1 = 0, prebtn2 = 0, prebtn3 = 0;
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:170: char mode2_change_place = 0;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:171: char open_close_time[6] = {8, 30, 0, 23, 30, 0}; //open: Hour, Minute, Second. close: Hour, Minute, Second.
	mov	a,_bp
	add	a,#0x02
	mov	r0,a
	mov	@r0,#0x08
	mov	a,r0
	inc	a
	mov	r1,a
	mov	@r1,#0x1E
	mov	a,#0x02
	add	a,r0
	mov	r7,a
	push	ar0
	mov	r0,ar7
	mov	@r0,#0x00
	pop	ar0
	push	ar1
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,#0x03
	add	a,r0
	mov	@r1,a
	pop	ar1
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0x17
	pop	ar0
	push	ar1
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x04
	add	a,r0
	mov	@r1,a
	pop	ar1
	push	ar0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0x1E
	pop	ar0
	push	ar1
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,#0x05
	add	a,r0
	mov	@r1,a
	pop	ar1
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar0,@r0
	mov	@r0,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:172: char mode = 1;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x01
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:173: INT0 = 1; INT1 = 1; P2_0 = 1; P2_1 = 1;
	setb	_INT0
	setb	_INT1
	setb	_P2_0
	setb	_P2_1
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:174: ton = 1500;
	mov	_ton,#0xDC
	mov	(_ton + 1),#0x05
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:175: toff = 30000 - 1500;
	mov	_toff,#0x54
	mov	(_toff + 1),#0x6F
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:176: SSD_Initial();
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_SSD_Initial
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:177: time_initial();
	lcall	_time_initial
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:178: server_initial();
	lcall	_server_initial
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:179: finish_setup();
	lcall	_finish_setup
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:181: while (1) {
00301$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:182: if (BT_data == '1') {
	mov	a,#0x31
	cjne	a,_BT_data,00104$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:183: server_action(1);
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:184: BT_data = ' ';
	mov	_BT_data,#0x20
	sjmp	00105$
00104$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:185: } else if (BT_data == '2') {
	mov	a,#0x32
	cjne	a,_BT_data,00105$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:186: server_action(2);
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:187: BT_data = ' ';
	mov	_BT_data,#0x20
00105$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:190: if (INT0 == 0 && prebtn0 == 1) {
	jnb	_INT0,00399$
	ljmp	00141$
00399$:
	cjne	r2,#0x01,00400$
	sjmp	00401$
00400$:
	ljmp	00141$
00401$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:191: delay_ms(10);
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:192: if (INT0 == 0) {
	jnb	_INT0,00402$
	ljmp	00141$
00402$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:193: if (mode == 1) { // 開燈
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x01,00403$
	sjmp	00404$
00403$:
	pop	ar0
	sjmp	00136$
00404$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:194: server_action(1);
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
	ljmp	00141$
00136$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:195: } else if (mode == 2) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x02,00405$
	sjmp	00406$
00405$:
	pop	ar0
	sjmp	00133$
00406$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:196: switch(mode2_change_place) {
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x00,00407$
	pop	ar0
	sjmp	00107$
00407$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x03,00408$
	sjmp	00409$
00408$:
	pop	ar0
	sjmp	00110$
00409$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:198: case 3:
00107$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:199: if (++open_close_time[mode2_change_place] == 24) {
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
	cjne	r5,#0x18,00410$
	sjmp	00411$
00410$:
	pop	ar5
	ljmp	00141$
00411$:
	pop	ar5
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:200: open_close_time[mode2_change_place] = 0;
	push	ar0
	mov	r0,ar2
	mov	@r0,#0x00
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:202: break;
	ljmp	00141$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:203: default:
00110$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:204: if (++open_close_time[mode2_change_place] == 60) {
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
	cjne	r5,#0x3C,00412$
	sjmp	00413$
00412$:
	pop	ar5
	ljmp	00141$
00413$:
	pop	ar5
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:205: open_close_time[mode2_change_place] = 0;
	push	ar0
	mov	r0,ar2
	mov	@r0,#0x00
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:207: }
	sjmp	00141$
00133$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:208: } else if (mode == 3) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x03,00414$
	pop	ar0
	sjmp	00141$
00414$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:210: } else if (mode == 4) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x04,00415$
	sjmp	00416$
00415$:
	pop	ar0
	sjmp	00127$
00416$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:211: switch (change_time) {
	clr	a
	cjne	a,_change_time,00417$
	sjmp	00114$
00417$:
	mov	a,#0x01
	cjne	a,_change_time,00418$
	sjmp	00117$
00418$:
	mov	a,#0x02
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:212: case 0:
	cjne	a,_change_time,00141$
	sjmp	00120$
00114$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:213: if (++T_hour >= 24) {
	inc	_T_hour
	clr	c
	mov	a,_T_hour
	xrl	a,#0x80
	subb	a,#0x98
	jc	00141$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:214: T_hour = 0;
	mov	_T_hour,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:216: break;
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:217: case 1:
	sjmp	00141$
00117$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:218: if (++T_min >= 60) {
	inc	_T_min
	clr	c
	mov	a,_T_min
	xrl	a,#0x80
	subb	a,#0xbc
	jc	00141$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:219: T_min = 0;
	mov	_T_min,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:221: break;
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:222: case 2:
	sjmp	00141$
00120$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:223: if (++T_sec >= 60) {
	inc	_T_sec
	clr	c
	mov	a,_T_sec
	xrl	a,#0x80
	subb	a,#0xbc
	jc	00141$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:224: T_sec = 0;
	mov	_T_sec,#0x00
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:226: }
	sjmp	00141$
00127$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:227: } else if (mode == 5) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x05,00423$
	sjmp	00424$
00423$:
	pop	ar0
	sjmp	00141$
00424$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:228: ms1++; // if time go too fast, then add ms1 to correct;
	inc	_ms1
	clr	a
	cjne	a,_ms1,00425$
	inc	(_ms1 + 1)
00425$:
00141$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:232: if (INT1 == 0 && prebtn1 == 1) {
	jnb	_INT1,00426$
	ljmp	00182$
00426$:
	cjne	r3,#0x01,00427$
	sjmp	00428$
00427$:
	ljmp	00182$
00428$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:233: delay_ms(10);
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:234: if (INT1 == 0) {
	jnb	_INT1,00429$
	ljmp	00182$
00429$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:235: if (mode == 1) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x01,00430$
	sjmp	00431$
00430$:
	pop	ar0
	sjmp	00177$
00431$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:236: server_action(2);
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
	ljmp	00182$
00177$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:237: } else if (mode == 2) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x02,00432$
	sjmp	00433$
00432$:
	pop	ar0
	sjmp	00174$
00433$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:238: switch(mode2_change_place) {
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x00,00434$
	pop	ar0
	sjmp	00144$
00434$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x03,00435$
	sjmp	00436$
00435$:
	pop	ar0
	sjmp	00147$
00436$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:240: case 3:
00144$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:241: if (--open_close_time[mode2_change_place] <= 0) {
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
	jnc	00437$
	ljmp	00182$
00437$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:242: open_close_time[mode2_change_place] = 23;
	push	ar0
	mov	r0,ar2
	mov	@r0,#0x17
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:244: break;
	ljmp	00182$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:245: default:
00147$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:246: if (--open_close_time[mode2_change_place] <= 0) {
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
	jc	00182$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:247: open_close_time[mode2_change_place] = 59;
	push	ar0
	mov	r0,ar2
	mov	@r0,#0x3B
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:249: }
	sjmp	00182$
00174$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:250: } else if (mode == 3) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x03,00439$
	pop	ar0
	sjmp	00182$
00439$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:252: } else if (mode == 4) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x04,00440$
	sjmp	00441$
00440$:
	pop	ar0
	sjmp	00168$
00441$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:253: if (change_time == 0) {
	mov	a,_change_time
	jnz	00163$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:254: if (--T_hour < 0) {
	dec	_T_hour
	mov	a,_T_hour
	jnb	acc.7,00182$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:255: T_hour = 23;
	mov	_T_hour,#0x17
	sjmp	00182$
00163$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:257: } else if (change_time == 1) {
	mov	a,#0x01
	cjne	a,_change_time,00160$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:258: if (--T_min < 0) {
	dec	_T_min
	mov	a,_T_min
	jnb	acc.7,00182$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:259: T_min = 59;
	mov	_T_min,#0x3B
	sjmp	00182$
00160$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:261: } else if (change_time == 2) {
	mov	a,#0x02
	cjne	a,_change_time,00182$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:262: if (--T_sec < 0) {
	dec	_T_sec
	mov	a,_T_sec
	jnb	acc.7,00182$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:263: T_sec = 59;
	mov	_T_sec,#0x3B
	sjmp	00182$
00168$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:266: } else if (mode == 5) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x05,00450$
	sjmp	00451$
00450$:
	pop	ar0
	sjmp	00182$
00451$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:267: ms1--; // if time go to slow substract to correct
	dec	_ms1
	mov	a,#0xff
	cjne	a,_ms1,00452$
	dec	(_ms1 + 1)
00452$:
00182$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:271: if (P2_0 == 0 && prebtn2 == 1) {
	jnb	_P2_0,00453$
	ljmp	00201$
00453$:
	cjne	r4,#0x01,00454$
	sjmp	00455$
00454$:
	ljmp	00201$
00455$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:272: delay_ms(10);
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:273: if (P2_0 == 0) {
	jnb	_P2_0,00456$
	ljmp	00201$
00456$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:274: if (mode == 1) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x01,00457$
	sjmp	00458$
00457$:
	pop	ar0
	sjmp	00196$
00458$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:275: mode = 2;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x02
	pop	ar0
	sjmp	00201$
00196$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:276: } else if (mode == 2) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x02,00459$
	sjmp	00460$
00459$:
	pop	ar0
	sjmp	00193$
00460$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:277: mode = 3;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x03
	pop	ar0
	sjmp	00201$
00193$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:278: } else if (mode == 3) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x03,00461$
	sjmp	00462$
00461$:
	pop	ar0
	sjmp	00190$
00462$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:279: mode = 4;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x04
	pop	ar0
	sjmp	00201$
00190$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:280: } else if (mode == 4) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x04,00463$
	sjmp	00464$
00463$:
	pop	ar0
	sjmp	00187$
00464$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:281: mode = 5;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x05
	pop	ar0
	sjmp	00201$
00187$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:282: } else if (mode == 5) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x05,00465$
	sjmp	00466$
00465$:
	pop	ar0
	sjmp	00201$
00466$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:283: mode = 1;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x01
	pop	ar0
00201$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:287: if (P2_1 == 0 && prebtn3 == 1) {
	jb	_P2_1,00221$
	cjne	r5,#0x01,00221$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:288: delay_ms(10);
	mov	dptr,#0x000A
	push	ar7
	push	ar0
	push	ar1
	lcall	_delay_ms
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:289: if (P2_1 == 0) {
	jb	_P2_1,00221$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:290: if (mode == 1) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x01,00471$
	pop	ar0
	sjmp	00221$
00471$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:292: } else if (mode == 2) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x02,00472$
	sjmp	00473$
00472$:
	pop	ar0
	sjmp	00213$
00473$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:293: if (++mode2_change_place == 6) {
	mov	r0,_bp
	inc	r0
	inc	@r0
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x06,00474$
	sjmp	00475$
00474$:
	pop	ar0
	sjmp	00221$
00475$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:294: mode2_change_place = 0;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
	pop	ar0
	sjmp	00221$
00213$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:296: } else if (mode == 3) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x03,00476$
	pop	ar0
	sjmp	00221$
00476$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:298: } else if (mode == 4) {
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x04,00477$
	sjmp	00478$
00477$:
	pop	ar0
	sjmp	00221$
00478$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:299: if (++change_time == 3) {
	inc	_change_time
	mov	a,#0x03
	cjne	a,_change_time,00221$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:300: change_time = 0;
	mov	_change_time,#0x00
00221$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:307: if (mode == 1) { // 一般模式
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x01,00481$
	sjmp	00482$
00481$:
	pop	ar0
	sjmp	00298$
00482$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:308: for (i = 2; i <= 8; i++) {
	mov	_i,#0x02
00303$:
	clr	c
	mov	a,#(0x08 ^ 0x80)
	mov	b,_i
	xrl	b,#0x80
	subb	a,b
	jc	00306$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:309: Write7219(i, 0x0f);
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:308: for (i = 2; i <= 8; i++) {
	inc	_i
	sjmp	00303$
00306$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:311: Write7219(1, 1);
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
	ljmp	00299$
00298$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:312: } else if (mode == 2) { // 設定自動時間模式
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x02,00484$
	sjmp	00485$
00484$:
	pop	ar0
	ljmp	00295$
00485$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:313: if (mode2_change_place < 3) {
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	subb	a,#0x83
	pop	ar0
	jc	00486$
	ljmp	00258$
00486$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:314: if (mode2_change_place == 0) {
	push	ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	pop	ar0
	jz	00487$
	ljmp	00238$
00487$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:315: if (time_count >= 500) {
	clr	c
	mov	a,_time_count
	subb	a,#0xF4
	mov	a,(_time_count + 1)
	subb	a,#0x01
	jc	00224$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:316: Write7219(8, open_close_time[0] / 10);
	push	ar7
	mov	ar7,@r0
	clr	F0
	mov	b,#0x0a
	mov	a,r7
	jnb	acc.7,00489$
	cpl	F0
	cpl	a
	inc	a
00489$:
	div	ab
	jnb	F0,00490$
	cpl	a
	inc	a
00490$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:317: Write7219(7, open_close_time[0] % 10); 
	mov	ar7,@r0
	mov	b,#0x0a
	mov	a,r7
	clr	F0
	jnb	acc.7,00491$
	setb	F0
	cpl	a
	inc	a
00491$:
	div	ab
	mov	a,b
	jnb	F0,00492$
	cpl	a
	inc	a
00492$:
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
	sjmp	00225$
00224$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:319: Write7219(8, 0x0f);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:320: Write7219(7, 0x0f); 
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00225$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:322: Write7219(6, open_close_time[1] / 10);
	push	ar0
	mov	ar6,@r1
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00493$
	cpl	F0
	cpl	a
	inc	a
00493$:
	div	ab
	jnb	F0,00494$
	cpl	a
	inc	a
00494$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:323: Write7219(5, open_close_time[1] % 10);
	mov	ar6,@r1
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00495$
	setb	F0
	cpl	a
	inc	a
00495$:
	div	ab
	mov	a,b
	jnb	F0,00496$
	cpl	a
	inc	a
00496$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:324: Write7219(4, open_close_time[2] / 10);
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00497$
	cpl	F0
	cpl	a
	inc	a
00497$:
	div	ab
	jnb	F0,00498$
	cpl	a
	inc	a
00498$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:325: Write7219(3, open_close_time[2] % 10);
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00499$
	setb	F0
	cpl	a
	inc	a
00499$:
	div	ab
	mov	a,b
	jnb	F0,00500$
	cpl	a
	inc	a
00500$:
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
	ljmp	00239$
00238$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:326: } else if (mode2_change_place == 1) {
	push	ar0
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x01,00501$
	sjmp	00502$
00501$:
	pop	ar0
	ljmp	00235$
00502$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:327: if (time_count >= 500) {
	clr	c
	mov	a,_time_count
	subb	a,#0xF4
	mov	a,(_time_count + 1)
	subb	a,#0x01
	jc	00227$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:328: Write7219(6, open_close_time[1] / 10);
	mov	ar6,@r1
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00504$
	cpl	F0
	cpl	a
	inc	a
00504$:
	div	ab
	jnb	F0,00505$
	cpl	a
	inc	a
00505$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:329: Write7219(5, open_close_time[1] % 10);
	mov	ar6,@r1
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00506$
	setb	F0
	cpl	a
	inc	a
00506$:
	div	ab
	mov	a,b
	jnb	F0,00507$
	cpl	a
	inc	a
00507$:
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
	sjmp	00228$
00227$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:331: Write7219(6, 0x0f);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:332: Write7219(5, 0x0f); 
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00228$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:334: Write7219(8, open_close_time[0] / 10);
	mov	ar6,@r0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00508$
	cpl	F0
	cpl	a
	inc	a
00508$:
	div	ab
	jnb	F0,00509$
	cpl	a
	inc	a
00509$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:335: Write7219(7, open_close_time[0] % 10); 
	mov	ar6,@r0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00510$
	setb	F0
	cpl	a
	inc	a
00510$:
	div	ab
	mov	a,b
	jnb	F0,00511$
	cpl	a
	inc	a
00511$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:336: Write7219(4, open_close_time[2] / 10);
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00512$
	cpl	F0
	cpl	a
	inc	a
00512$:
	div	ab
	jnb	F0,00513$
	cpl	a
	inc	a
00513$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:337: Write7219(3, open_close_time[2] % 10);
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00514$
	setb	F0
	cpl	a
	inc	a
00514$:
	div	ab
	mov	a,b
	jnb	F0,00515$
	cpl	a
	inc	a
00515$:
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
	ljmp	00239$
00235$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:338: } else if (mode2_change_place == 2) {
	push	ar0
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x02,00516$
	sjmp	00517$
00516$:
	pop	ar0
	ljmp	00239$
00517$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:339: if (time_count >= 500) {
	clr	c
	mov	a,_time_count
	subb	a,#0xF4
	mov	a,(_time_count + 1)
	subb	a,#0x01
	jc	00230$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:340: Write7219(4, open_close_time[2] / 10);
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00519$
	cpl	F0
	cpl	a
	inc	a
00519$:
	div	ab
	jnb	F0,00520$
	cpl	a
	inc	a
00520$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:341: Write7219(3, open_close_time[2] % 10);
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00521$
	setb	F0
	cpl	a
	inc	a
00521$:
	div	ab
	mov	a,b
	jnb	F0,00522$
	cpl	a
	inc	a
00522$:
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
	sjmp	00231$
00230$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:343: Write7219(4, 0x0f);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:344: Write7219(3, 0x0f); 
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00231$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:346: Write7219(6, open_close_time[1] / 10);
	mov	ar6,@r1
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00523$
	cpl	F0
	cpl	a
	inc	a
00523$:
	div	ab
	jnb	F0,00524$
	cpl	a
	inc	a
00524$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:347: Write7219(5, open_close_time[1] % 10);
	mov	ar6,@r1
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00525$
	setb	F0
	cpl	a
	inc	a
00525$:
	div	ab
	mov	a,b
	jnb	F0,00526$
	cpl	a
	inc	a
00526$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:348: Write7219(8, open_close_time[0] / 10);
	mov	ar6,@r0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00527$
	cpl	F0
	cpl	a
	inc	a
00527$:
	div	ab
	jnb	F0,00528$
	cpl	a
	inc	a
00528$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:349: Write7219(7, open_close_time[0] % 10); 
	mov	ar6,@r0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00529$
	setb	F0
	cpl	a
	inc	a
00529$:
	div	ab
	mov	a,b
	jnb	F0,00530$
	cpl	a
	inc	a
00530$:
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
00239$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:351: Write7219(2, 1);
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
	ljmp	00259$
00258$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:353: if (mode2_change_place == 3) {
	push	ar0
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x03,00531$
	sjmp	00532$
00531$:
	pop	ar0
	ljmp	00255$
00532$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:354: if (time_count >= 500) {
	clr	c
	mov	a,_time_count
	subb	a,#0xF4
	mov	a,(_time_count + 1)
	subb	a,#0x01
	jc	00241$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:355: Write7219(8, open_close_time[3] / 10);
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00534$
	cpl	F0
	cpl	a
	inc	a
00534$:
	div	ab
	jnb	F0,00535$
	cpl	a
	inc	a
00535$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:356: Write7219(7, open_close_time[3] % 10); 
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00536$
	setb	F0
	cpl	a
	inc	a
00536$:
	div	ab
	mov	a,b
	jnb	F0,00537$
	cpl	a
	inc	a
00537$:
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
	sjmp	00242$
00241$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:358: Write7219(8, 0x0f);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x08
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:359: Write7219(7, 0x0f); 
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x07
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00242$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:361: Write7219(6, open_close_time[4] / 10);
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
	jnb	acc.7,00538$
	cpl	F0
	cpl	a
	inc	a
00538$:
	div	ab
	jnb	F0,00539$
	cpl	a
	inc	a
00539$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:362: Write7219(5, open_close_time[4] % 10);
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
	jnb	acc.7,00540$
	setb	F0
	cpl	a
	inc	a
00540$:
	div	ab
	mov	a,b
	jnb	F0,00541$
	cpl	a
	inc	a
00541$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:363: Write7219(4, open_close_time[5] / 10);
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
	jnb	acc.7,00542$
	cpl	F0
	cpl	a
	inc	a
00542$:
	div	ab
	jnb	F0,00543$
	cpl	a
	inc	a
00543$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:364: Write7219(3, open_close_time[5] % 10);
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
	jnb	acc.7,00544$
	setb	F0
	cpl	a
	inc	a
00544$:
	div	ab
	mov	a,b
	jnb	F0,00545$
	cpl	a
	inc	a
00545$:
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
	ljmp	00256$
00255$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:365: } else if (mode2_change_place == 4) {
	push	ar0
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x04,00546$
	sjmp	00547$
00546$:
	pop	ar0
	ljmp	00252$
00547$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:366: if (time_count >= 500) {
	clr	c
	mov	a,_time_count
	subb	a,#0xF4
	mov	a,(_time_count + 1)
	subb	a,#0x01
	jc	00244$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:367: Write7219(6, open_close_time[4] / 10);
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
	jnb	acc.7,00549$
	cpl	F0
	cpl	a
	inc	a
00549$:
	div	ab
	jnb	F0,00550$
	cpl	a
	inc	a
00550$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:368: Write7219(5, open_close_time[4] % 10);
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
	jnb	acc.7,00551$
	setb	F0
	cpl	a
	inc	a
00551$:
	div	ab
	mov	a,b
	jnb	F0,00552$
	cpl	a
	inc	a
00552$:
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
	sjmp	00245$
00244$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:370: Write7219(6, 0x0f);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x06
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:371: Write7219(5, 0x0f); 
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x05
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00245$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:373: Write7219(8, open_close_time[3] / 10);
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00553$
	cpl	F0
	cpl	a
	inc	a
00553$:
	div	ab
	jnb	F0,00554$
	cpl	a
	inc	a
00554$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:374: Write7219(7, open_close_time[3] % 10); 
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00555$
	setb	F0
	cpl	a
	inc	a
00555$:
	div	ab
	mov	a,b
	jnb	F0,00556$
	cpl	a
	inc	a
00556$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:375: Write7219(4, open_close_time[5] / 10);
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
	jnb	acc.7,00557$
	cpl	F0
	cpl	a
	inc	a
00557$:
	div	ab
	jnb	F0,00558$
	cpl	a
	inc	a
00558$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:376: Write7219(3, open_close_time[5] % 10);
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
	jnb	acc.7,00559$
	setb	F0
	cpl	a
	inc	a
00559$:
	div	ab
	mov	a,b
	jnb	F0,00560$
	cpl	a
	inc	a
00560$:
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
	ljmp	00256$
00252$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:377: } else if (mode2_change_place == 5) {
	push	ar0
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x05,00561$
	sjmp	00562$
00561$:
	pop	ar0
	ljmp	00256$
00562$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:378: if (time_count >= 500) {
	clr	c
	mov	a,_time_count
	subb	a,#0xF4
	mov	a,(_time_count + 1)
	subb	a,#0x01
	jc	00247$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:379: Write7219(4, open_close_time[5] / 10);
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
	jnb	acc.7,00564$
	cpl	F0
	cpl	a
	inc	a
00564$:
	div	ab
	jnb	F0,00565$
	cpl	a
	inc	a
00565$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:380: Write7219(3, open_close_time[5] % 10);
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
	jnb	acc.7,00566$
	setb	F0
	cpl	a
	inc	a
00566$:
	div	ab
	mov	a,b
	jnb	F0,00567$
	cpl	a
	inc	a
00567$:
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
	sjmp	00248$
00247$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:382: Write7219(4, 0x0f);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:383: Write7219(3, 0x0f); 
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
00248$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:385: Write7219(5, open_close_time[4] % 10);
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
	jnb	acc.7,00568$
	setb	F0
	cpl	a
	inc	a
00568$:
	div	ab
	mov	a,b
	jnb	F0,00569$
	cpl	a
	inc	a
00569$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:386: Write7219(6, open_close_time[4] / 10);
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
	jnb	acc.7,00570$
	cpl	F0
	cpl	a
	inc	a
00570$:
	div	ab
	jnb	F0,00571$
	cpl	a
	inc	a
00571$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:387: Write7219(7, open_close_time[3] % 10); 
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc.7,00572$
	setb	F0
	cpl	a
	inc	a
00572$:
	div	ab
	mov	a,b
	jnb	F0,00573$
	cpl	a
	inc	a
00573$:
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:388: Write7219(8, open_close_time[3] / 10);
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc.7,00574$
	cpl	F0
	cpl	a
	inc	a
00574$:
	div	ab
	jnb	F0,00575$
	cpl	a
	inc	a
00575$:
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
00256$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:390: Write7219(2, 2);
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
00259$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:392: Write7219(1, 2);
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:393: if (open_close_time[0] == T_hour && open_close_time[1] == T_min && open_close_time[2] == T_sec) {
	mov	a,@r0
	mov	r6,a
	cjne	a,_T_hour,00265$
	mov	a,@r1
	mov	r6,a
	cjne	a,_T_min,00265$
	push	ar0
	mov	r0,ar7
	mov	ar6,@r0
	pop	ar0
	mov	a,r6
	cjne	a,_T_sec,00265$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:394: server_action(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar0
	push	ar1
	lcall	_server_action
	pop	ar1
	pop	ar0
	pop	ar7
	ljmp	00299$
00265$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:395: } else if (open_close_time[3] == T_hour && open_close_time[4] == T_min && open_close_time[5] == T_sec) {
	push	ar0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	a,r6
	cjne	a,_T_hour,00582$
	sjmp	00583$
00582$:
	ljmp	00299$
00583$:
	push	ar0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	a,r6
	cjne	a,_T_min,00584$
	sjmp	00585$
00584$:
	ljmp	00299$
00585$:
	push	ar0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	ar0,@r0
	mov	ar6,@r0
	pop	ar0
	mov	a,r6
	cjne	a,_T_sec,00586$
	sjmp	00587$
00586$:
	ljmp	00299$
00587$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:396: server_action(2);
	mov	dptr,#0x0002
	push	ar7
	push	ar0
	push	ar1
	lcall	_server_action
	pop	ar1
	pop	ar0
	pop	ar7
	ljmp	00299$
00295$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:398: } else if (mode == 3) { // 顯示當前時間
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x03,00588$
	sjmp	00589$
00588$:
	pop	ar0
	ljmp	00292$
00589$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:399: Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 3);
	push	ar7
	mov	b,#0x0a
	mov	a,_T_sec
	clr	F0
	jnb	acc.7,00590$
	setb	F0
	cpl	a
	inc	a
00590$:
	div	ab
	mov	a,b
	jnb	F0,00591$
	cpl	a
	inc	a
00591$:
	mov	r6,a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_sec
	jnb	acc.7,00592$
	cpl	F0
	cpl	a
	inc	a
00592$:
	div	ab
	jnb	F0,00593$
	cpl	a
	inc	a
00593$:
	mov	r4,a
	mov	c,F0
	subb	a,acc
	mov	r5,a
	mov	b,#0x0a
	mov	a,_T_min
	clr	F0
	jnb	acc.7,00594$
	setb	F0
	cpl	a
	inc	a
00594$:
	div	ab
	mov	a,b
	jnb	F0,00595$
	cpl	a
	inc	a
00595$:
	mov	r6,a
	push	ar0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_min
	jnb	acc.7,00596$
	cpl	F0
	cpl	a
	inc	a
00596$:
	div	ab
	jnb	F0,00597$
	cpl	a
	inc	a
00597$:
	mov	@r0,a
	mov	c,F0
	subb	a,acc
	inc	r0
	mov	@r0,a
	pop	ar0
	mov	b,#0x0a
	mov	a,_T_hour
	clr	F0
	jnb	acc.7,00598$
	setb	F0
	cpl	a
	inc	a
00598$:
	div	ab
	mov	a,b
	jnb	F0,00599$
	cpl	a
	inc	a
00599$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_hour
	jnb	acc.7,00600$
	cpl	F0
	cpl	a
	inc	a
00600$:
	div	ab
	jnb	F0,00601$
	cpl	a
	inc	a
00601$:
	mov	dpl,a
	mov	c,F0
	subb	a,acc
	mov	dph,a
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x03
	push	acc
	clr	a
	push	acc
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	b,ar0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	lcall	_Write7219ALL
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar7
	ljmp	00299$
00292$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:400: } else if (mode == 4) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x04,00602$
	sjmp	00603$
00602$:
	pop	ar0
	ljmp	00289$
00603$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:401: if (change_time == 0) {
	mov	a,_change_time
	jz	00604$
	ljmp	00284$
00604$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:402: if (time_count <= 500) {
	clr	c
	mov	a,#0xF4
	subb	a,_time_count
	mov	a,#0x01
	subb	a,(_time_count + 1)
	jnc	00605$
	ljmp	00270$
00605$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:403: Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 4);
	push	ar7
	mov	b,#0x0a
	mov	a,_T_sec
	clr	F0
	jnb	acc.7,00606$
	setb	F0
	cpl	a
	inc	a
00606$:
	div	ab
	mov	a,b
	jnb	F0,00607$
	cpl	a
	inc	a
00607$:
	mov	r6,a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_sec
	jnb	acc.7,00608$
	cpl	F0
	cpl	a
	inc	a
00608$:
	div	ab
	jnb	F0,00609$
	cpl	a
	inc	a
00609$:
	mov	r4,a
	mov	c,F0
	subb	a,acc
	mov	r5,a
	mov	b,#0x0a
	mov	a,_T_min
	clr	F0
	jnb	acc.7,00610$
	setb	F0
	cpl	a
	inc	a
00610$:
	div	ab
	mov	a,b
	jnb	F0,00611$
	cpl	a
	inc	a
00611$:
	mov	r6,a
	push	ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_min
	jnb	acc.7,00612$
	cpl	F0
	cpl	a
	inc	a
00612$:
	div	ab
	jnb	F0,00613$
	cpl	a
	inc	a
00613$:
	mov	@r0,a
	mov	c,F0
	subb	a,acc
	inc	r0
	mov	@r0,a
	pop	ar0
	mov	b,#0x0a
	mov	a,_T_hour
	clr	F0
	jnb	acc.7,00614$
	setb	F0
	cpl	a
	inc	a
00614$:
	div	ab
	mov	a,b
	jnb	F0,00615$
	cpl	a
	inc	a
00615$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_hour
	jnb	acc.7,00616$
	cpl	F0
	cpl	a
	inc	a
00616$:
	div	ab
	jnb	F0,00617$
	cpl	a
	inc	a
00617$:
	mov	dpl,a
	mov	c,F0
	subb	a,acc
	mov	dph,a
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	b,ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	lcall	_Write7219ALL
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar7
	ljmp	00299$
00270$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:405: Write7219ALL(0x0f, 0x0f, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 4);
	push	ar7
	mov	b,#0x0a
	mov	a,_T_sec
	clr	F0
	jnb	acc.7,00618$
	setb	F0
	cpl	a
	inc	a
00618$:
	div	ab
	mov	a,b
	jnb	F0,00619$
	cpl	a
	inc	a
00619$:
	mov	r6,a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_sec
	jnb	acc.7,00620$
	cpl	F0
	cpl	a
	inc	a
00620$:
	div	ab
	jnb	F0,00621$
	cpl	a
	inc	a
00621$:
	mov	r4,a
	mov	c,F0
	subb	a,acc
	mov	r5,a
	mov	b,#0x0a
	mov	a,_T_min
	clr	F0
	jnb	acc.7,00622$
	setb	F0
	cpl	a
	inc	a
00622$:
	div	ab
	mov	a,b
	jnb	F0,00623$
	cpl	a
	inc	a
00623$:
	mov	r6,a
	push	ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	pop	ar0
	clr	F0
	mov	b,#0x0a
	mov	a,_T_min
	jnb	acc.7,00624$
	cpl	F0
	cpl	a
	inc	a
00624$:
	div	ab
	jnb	F0,00625$
	cpl	a
	inc	a
00625$:
	mov	r6,a
	mov	c,F0
	subb	a,acc
	mov	r7,a
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	b,ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	dptr,#0x000F
	lcall	_Write7219ALL
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar7
	ljmp	00299$
00284$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:407: } else if (change_time == 1) {
	mov	a,#0x01
	cjne	a,_change_time,00626$
	sjmp	00627$
00626$:
	ljmp	00281$
00627$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:408: if (time_count <= 500) {
	clr	c
	mov	a,#0xF4
	subb	a,_time_count
	mov	a,#0x01
	subb	a,(_time_count + 1)
	jnc	00628$
	ljmp	00273$
00628$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:409: Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 4);
	push	ar7
	mov	b,#0x0a
	mov	a,_T_sec
	clr	F0
	jnb	acc.7,00629$
	setb	F0
	cpl	a
	inc	a
00629$:
	div	ab
	mov	a,b
	jnb	F0,00630$
	cpl	a
	inc	a
00630$:
	mov	r6,a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_sec
	jnb	acc.7,00631$
	cpl	F0
	cpl	a
	inc	a
00631$:
	div	ab
	jnb	F0,00632$
	cpl	a
	inc	a
00632$:
	mov	r4,a
	mov	c,F0
	subb	a,acc
	mov	r5,a
	mov	b,#0x0a
	mov	a,_T_min
	clr	F0
	jnb	acc.7,00633$
	setb	F0
	cpl	a
	inc	a
00633$:
	div	ab
	mov	a,b
	jnb	F0,00634$
	cpl	a
	inc	a
00634$:
	mov	r6,a
	push	ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_min
	jnb	acc.7,00635$
	cpl	F0
	cpl	a
	inc	a
00635$:
	div	ab
	jnb	F0,00636$
	cpl	a
	inc	a
00636$:
	mov	@r0,a
	mov	c,F0
	subb	a,acc
	inc	r0
	mov	@r0,a
	pop	ar0
	mov	b,#0x0a
	mov	a,_T_hour
	clr	F0
	jnb	acc.7,00637$
	setb	F0
	cpl	a
	inc	a
00637$:
	div	ab
	mov	a,b
	jnb	F0,00638$
	cpl	a
	inc	a
00638$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_hour
	jnb	acc.7,00639$
	cpl	F0
	cpl	a
	inc	a
00639$:
	div	ab
	jnb	F0,00640$
	cpl	a
	inc	a
00640$:
	mov	dpl,a
	mov	c,F0
	subb	a,acc
	mov	dph,a
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	b,ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	lcall	_Write7219ALL
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar7
	ljmp	00299$
00273$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:411: Write7219ALL(T_hour / 10, T_hour % 10, 0x0f, 0x0f, T_sec / 10, T_sec % 10, 0x0f, 4);
	push	ar7
	mov	b,#0x0a
	mov	a,_T_sec
	clr	F0
	jnb	acc.7,00641$
	setb	F0
	cpl	a
	inc	a
00641$:
	div	ab
	mov	a,b
	jnb	F0,00642$
	cpl	a
	inc	a
00642$:
	mov	r6,a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_sec
	jnb	acc.7,00643$
	cpl	F0
	cpl	a
	inc	a
00643$:
	div	ab
	jnb	F0,00644$
	cpl	a
	inc	a
00644$:
	mov	r4,a
	mov	c,F0
	subb	a,acc
	mov	r5,a
	mov	b,#0x0a
	mov	a,_T_hour
	clr	F0
	jnb	acc.7,00645$
	setb	F0
	cpl	a
	inc	a
00645$:
	div	ab
	mov	a,b
	jnb	F0,00646$
	cpl	a
	inc	a
00646$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_hour
	jnb	acc.7,00647$
	cpl	F0
	cpl	a
	inc	a
00647$:
	div	ab
	jnb	F0,00648$
	cpl	a
	inc	a
00648$:
	mov	dpl,a
	mov	c,F0
	subb	a,acc
	mov	dph,a
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	lcall	_Write7219ALL
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar7
	ljmp	00299$
00281$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:413: } else if (change_time == 2) {
	mov	a,#0x02
	cjne	a,_change_time,00649$
	sjmp	00650$
00649$:
	ljmp	00299$
00650$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:414: if (time_count <= 500) {
	clr	c
	mov	a,#0xF4
	subb	a,_time_count
	mov	a,#0x01
	subb	a,(_time_count + 1)
	jnc	00651$
	ljmp	00276$
00651$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:415: Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 4);
	push	ar7
	mov	b,#0x0a
	mov	a,_T_sec
	clr	F0
	jnb	acc.7,00652$
	setb	F0
	cpl	a
	inc	a
00652$:
	div	ab
	mov	a,b
	jnb	F0,00653$
	cpl	a
	inc	a
00653$:
	mov	r6,a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_sec
	jnb	acc.7,00654$
	cpl	F0
	cpl	a
	inc	a
00654$:
	div	ab
	jnb	F0,00655$
	cpl	a
	inc	a
00655$:
	mov	r4,a
	mov	c,F0
	subb	a,acc
	mov	r5,a
	mov	b,#0x0a
	mov	a,_T_min
	clr	F0
	jnb	acc.7,00656$
	setb	F0
	cpl	a
	inc	a
00656$:
	div	ab
	mov	a,b
	jnb	F0,00657$
	cpl	a
	inc	a
00657$:
	mov	r6,a
	push	ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar6
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_min
	jnb	acc.7,00658$
	cpl	F0
	cpl	a
	inc	a
00658$:
	div	ab
	jnb	F0,00659$
	cpl	a
	inc	a
00659$:
	mov	@r0,a
	mov	c,F0
	subb	a,acc
	inc	r0
	mov	@r0,a
	pop	ar0
	mov	b,#0x0a
	mov	a,_T_hour
	clr	F0
	jnb	acc.7,00660$
	setb	F0
	cpl	a
	inc	a
00660$:
	div	ab
	mov	a,b
	jnb	F0,00661$
	cpl	a
	inc	a
00661$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_hour
	jnb	acc.7,00662$
	cpl	F0
	cpl	a
	inc	a
00662$:
	div	ab
	jnb	F0,00663$
	cpl	a
	inc	a
00663$:
	mov	dpl,a
	mov	c,F0
	subb	a,acc
	mov	dph,a
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	b,ar0
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,b
	mov	b,ar0
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	lcall	_Write7219ALL
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar7
	ljmp	00299$
00276$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:417: Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, 0x0f, 0x0f, 0x0f, 4);
	push	ar7
	mov	b,#0x0a
	mov	a,_T_min
	clr	F0
	jnb	acc.7,00664$
	setb	F0
	cpl	a
	inc	a
00664$:
	div	ab
	mov	a,b
	jnb	F0,00665$
	cpl	a
	inc	a
00665$:
	mov	r6,a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_min
	jnb	acc.7,00666$
	cpl	F0
	cpl	a
	inc	a
00666$:
	div	ab
	jnb	F0,00667$
	cpl	a
	inc	a
00667$:
	mov	r4,a
	mov	c,F0
	subb	a,acc
	mov	r5,a
	mov	b,#0x0a
	mov	a,_T_hour
	clr	F0
	jnb	acc.7,00668$
	setb	F0
	cpl	a
	inc	a
00668$:
	div	ab
	mov	a,b
	jnb	F0,00669$
	cpl	a
	inc	a
00669$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	clr	F0
	mov	b,#0x0a
	mov	a,_T_hour
	jnb	acc.7,00670$
	cpl	F0
	cpl	a
	inc	a
00670$:
	div	ab
	jnb	F0,00671$
	cpl	a
	inc	a
00671$:
	mov	dpl,a
	mov	c,F0
	subb	a,acc
	mov	dph,a
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_Write7219ALL
	mov	a,sp
	add	a,#0xf2
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar7
	ljmp	00299$
00289$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:420: } else if (mode == 5) {
	push	ar0
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	cjne	@r0,#0x05,00672$
	sjmp	00673$
00672$:
	pop	ar0
	ljmp	00299$
00673$:
	pop	ar0
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:421: Write7219(8, ms1 / 10000);
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0x10
	push	acc
	mov	a,#0x27
	push	acc
	mov	dpl,_ms1
	mov	dph,(_ms1 + 1)
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar0
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:422: Write7219(7, ms1 / 1000 % 10);
	push	ar0
	push	ar1
	mov	a,#0xE8
	push	acc
	mov	a,#0x03
	push	acc
	mov	dpl,_ms1
	mov	dph,(_ms1 + 1)
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar0
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:423: Write7219(6, ms1 / 100 % 10);
	push	ar0
	push	ar1
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,_ms1
	mov	dph,(_ms1 + 1)
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar0
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:424: Write7219(5, ms1 / 10 % 10);
	push	ar0
	push	ar1
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,_ms1
	mov	dph,(_ms1 + 1)
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar0
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
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:425: Write7219(4, ms1 % 10);
	push	ar0
	push	ar1
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,_ms1
	mov	dph,(_ms1 + 1)
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar0
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	mov	dpl,#0x04
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:426: Write7219(3, 0x0f);
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x03
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:427: Write7219(2, 0x0f);
	mov	a,#0x0F
	push	acc
	mov	dpl,#0x02
	lcall	_Write7219
	dec	sp
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:428: Write7219(1, 5);
	mov	a,#0x05
	push	acc
	mov	dpl,#0x01
	lcall	_Write7219
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:436: delay_ms(20);
	pop	ar7
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:428: Write7219(1, 5);
00299$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:431: toff = 30000 - ton;
	mov	a,#0x30
	clr	c
	subb	a,_ton
	mov	_toff,a
	mov	a,#0x75
	subb	a,(_ton + 1)
	mov	(_toff + 1),a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:432: prebtn0 = INT0;
	mov	c,_INT0
	clr	a
	rlc	a
	mov	r2,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:433: prebtn1 = INT1;
	mov	c,_INT1
	clr	a
	rlc	a
	mov	r3,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:434: prebtn2 = P2_0;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	r4,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:435: prebtn3 = P2_1;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	r5,a
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:436: delay_ms(20);
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
	ljmp	00301$
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
