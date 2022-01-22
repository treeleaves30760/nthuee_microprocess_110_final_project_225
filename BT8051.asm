;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
; This file was generated Sat Jan 22 20:05:57 2022
;--------------------------------------------------------
	.module BT8051
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
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
	.globl _ser_int
	.globl _rx
	.globl _tx
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;get                       Allocated to registers r2 
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:8: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:11: ser_int();
	lcall	_ser_int
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:12: while(1) {
00116$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:13: get=rx();
	lcall	_rx
	mov	r2,dpl
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:14: tx('R');
	mov	dpl,#0x52
	push	ar2
	lcall	_tx
	pop	ar2
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:15: if(get == 'F') {
	cjne	r2,#0x46,00113$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:17: P0 = 0x01;
	mov	_P0,#0x01
	sjmp	00116$
00113$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:18: } else if (get == 'R') {
	cjne	r2,#0x52,00110$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:20: P0 = 0x02;
	mov	_P0,#0x02
	sjmp	00116$
00110$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:22: } else if (get == 'W') {
	cjne	r2,#0x57,00107$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:24: P0 = 0x03;
	mov	_P0,#0x03
	sjmp	00116$
00107$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:26: } else if (get == 'L') {
	cjne	r2,#0x4C,00104$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:28: P0 = 0x04;
	mov	_P0,#0x04
	sjmp	00116$
00104$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:30: } else if (get == 'S') {
	cjne	r2,#0x53,00116$
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:32: P0 = 0x00;
	mov	_P0,#0x00
	sjmp	00116$
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_int'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:37: void ser_int()
;	-----------------------------------------
;	 function ser_int
;	-----------------------------------------
_ser_int:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:39: SCON=0x50;
	mov	_SCON,#0x50
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:40: TMOD=0x20;
	mov	_TMOD,#0x20
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:41: TH1=TL1=0xFD;
	mov	_TL1,#0xFD
	mov	_TH1,#0xFD
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:42: TR1=1;
	setb	_TR1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rx'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:45: unsigned char rx()
;	-----------------------------------------
;	 function rx
;	-----------------------------------------
_rx:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:47: while(RI==0);
00101$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:48: RI=0;
	jbc	_RI,00108$
	sjmp	00101$
00108$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:49: return SBUF;
	mov	dpl,_SBUF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tx'
;------------------------------------------------------------
;a                         Allocated to registers 
;------------------------------------------------------------
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:52: void tx(unsigned char a)
;	-----------------------------------------
;	 function tx
;	-----------------------------------------
_tx:
	mov	_SBUF,dpl
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:55: while(TI==0);
00101$:
;	C:\HSU-PO~1\MICROP~1\FINAL_~1\BT8051.c:56: TI=0;
	jbc	_TI,00108$
	sjmp	00101$
00108$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
