                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
                              4 ; This file was generated Sat Jan 22 23:47:24 2022
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _finish_setup
                             14 	.globl _server_initial
                             15 	.globl _server_action
                             16 	.globl _Write7219ALL
                             17 	.globl _time_count_add
                             18 	.globl _timer0_isr
                             19 	.globl _time_initial
                             20 	.globl _delay_ms
                             21 	.globl _SSD_Initial
                             22 	.globl _Write7219
                             23 	.globl _sendbyte
                             24 	.globl _TF2
                             25 	.globl _EXF2
                             26 	.globl _RCLK
                             27 	.globl _TCLK
                             28 	.globl _EXEN2
                             29 	.globl _TR2
                             30 	.globl _C_T2
                             31 	.globl _CP_RL2
                             32 	.globl _T2CON_7
                             33 	.globl _T2CON_6
                             34 	.globl _T2CON_5
                             35 	.globl _T2CON_4
                             36 	.globl _T2CON_3
                             37 	.globl _T2CON_2
                             38 	.globl _T2CON_1
                             39 	.globl _T2CON_0
                             40 	.globl _PT2
                             41 	.globl _ET2
                             42 	.globl _CY
                             43 	.globl _AC
                             44 	.globl _F0
                             45 	.globl _RS1
                             46 	.globl _RS0
                             47 	.globl _OV
                             48 	.globl _F1
                             49 	.globl _P
                             50 	.globl _PS
                             51 	.globl _PT1
                             52 	.globl _PX1
                             53 	.globl _PT0
                             54 	.globl _PX0
                             55 	.globl _RD
                             56 	.globl _WR
                             57 	.globl _T1
                             58 	.globl _T0
                             59 	.globl _INT1
                             60 	.globl _INT0
                             61 	.globl _TXD
                             62 	.globl _RXD
                             63 	.globl _P3_7
                             64 	.globl _P3_6
                             65 	.globl _P3_5
                             66 	.globl _P3_4
                             67 	.globl _P3_3
                             68 	.globl _P3_2
                             69 	.globl _P3_1
                             70 	.globl _P3_0
                             71 	.globl _EA
                             72 	.globl _ES
                             73 	.globl _ET1
                             74 	.globl _EX1
                             75 	.globl _ET0
                             76 	.globl _EX0
                             77 	.globl _P2_7
                             78 	.globl _P2_6
                             79 	.globl _P2_5
                             80 	.globl _P2_4
                             81 	.globl _P2_3
                             82 	.globl _P2_2
                             83 	.globl _P2_1
                             84 	.globl _P2_0
                             85 	.globl _SM0
                             86 	.globl _SM1
                             87 	.globl _SM2
                             88 	.globl _REN
                             89 	.globl _TB8
                             90 	.globl _RB8
                             91 	.globl _TI
                             92 	.globl _RI
                             93 	.globl _P1_7
                             94 	.globl _P1_6
                             95 	.globl _P1_5
                             96 	.globl _P1_4
                             97 	.globl _P1_3
                             98 	.globl _P1_2
                             99 	.globl _P1_1
                            100 	.globl _P1_0
                            101 	.globl _TF1
                            102 	.globl _TR1
                            103 	.globl _TF0
                            104 	.globl _TR0
                            105 	.globl _IE1
                            106 	.globl _IT1
                            107 	.globl _IE0
                            108 	.globl _IT0
                            109 	.globl _P0_7
                            110 	.globl _P0_6
                            111 	.globl _P0_5
                            112 	.globl _P0_4
                            113 	.globl _P0_3
                            114 	.globl _P0_2
                            115 	.globl _P0_1
                            116 	.globl _P0_0
                            117 	.globl _TH2
                            118 	.globl _TL2
                            119 	.globl _RCAP2H
                            120 	.globl _RCAP2L
                            121 	.globl _T2CON
                            122 	.globl _B
                            123 	.globl _ACC
                            124 	.globl _PSW
                            125 	.globl _IP
                            126 	.globl _P3
                            127 	.globl _IE
                            128 	.globl _P2
                            129 	.globl _SBUF
                            130 	.globl _SCON
                            131 	.globl _P1
                            132 	.globl _TH1
                            133 	.globl _TH0
                            134 	.globl _TL1
                            135 	.globl _TL0
                            136 	.globl _TMOD
                            137 	.globl _TCON
                            138 	.globl _PCON
                            139 	.globl _DPH
                            140 	.globl _DPL
                            141 	.globl _SP
                            142 	.globl _P0
                            143 	.globl _i
                            144 	.globl _BT_data_flag
                            145 	.globl _BT_data
                            146 	.globl _change_time
                            147 	.globl _Action
                            148 	.globl _PWM_state
                            149 	.globl _T_sec
                            150 	.globl _T_min
                            151 	.globl _T_hour
                            152 	.globl _ms1
                            153 	.globl _time_count
                            154 	.globl _temp
                            155 	.globl _toff
                            156 	.globl _ton
                            157 	.globl _dutytime
                            158 ;--------------------------------------------------------
                            159 ; special function registers
                            160 ;--------------------------------------------------------
                            161 	.area RSEG    (ABS,DATA)
   0000                     162 	.org 0x0000
                    0080    163 _P0	=	0x0080
                    0081    164 _SP	=	0x0081
                    0082    165 _DPL	=	0x0082
                    0083    166 _DPH	=	0x0083
                    0087    167 _PCON	=	0x0087
                    0088    168 _TCON	=	0x0088
                    0089    169 _TMOD	=	0x0089
                    008A    170 _TL0	=	0x008a
                    008B    171 _TL1	=	0x008b
                    008C    172 _TH0	=	0x008c
                    008D    173 _TH1	=	0x008d
                    0090    174 _P1	=	0x0090
                    0098    175 _SCON	=	0x0098
                    0099    176 _SBUF	=	0x0099
                    00A0    177 _P2	=	0x00a0
                    00A8    178 _IE	=	0x00a8
                    00B0    179 _P3	=	0x00b0
                    00B8    180 _IP	=	0x00b8
                    00D0    181 _PSW	=	0x00d0
                    00E0    182 _ACC	=	0x00e0
                    00F0    183 _B	=	0x00f0
                    00C8    184 _T2CON	=	0x00c8
                    00CA    185 _RCAP2L	=	0x00ca
                    00CB    186 _RCAP2H	=	0x00cb
                    00CC    187 _TL2	=	0x00cc
                    00CD    188 _TH2	=	0x00cd
                            189 ;--------------------------------------------------------
                            190 ; special function bits
                            191 ;--------------------------------------------------------
                            192 	.area RSEG    (ABS,DATA)
   0000                     193 	.org 0x0000
                    0080    194 _P0_0	=	0x0080
                    0081    195 _P0_1	=	0x0081
                    0082    196 _P0_2	=	0x0082
                    0083    197 _P0_3	=	0x0083
                    0084    198 _P0_4	=	0x0084
                    0085    199 _P0_5	=	0x0085
                    0086    200 _P0_6	=	0x0086
                    0087    201 _P0_7	=	0x0087
                    0088    202 _IT0	=	0x0088
                    0089    203 _IE0	=	0x0089
                    008A    204 _IT1	=	0x008a
                    008B    205 _IE1	=	0x008b
                    008C    206 _TR0	=	0x008c
                    008D    207 _TF0	=	0x008d
                    008E    208 _TR1	=	0x008e
                    008F    209 _TF1	=	0x008f
                    0090    210 _P1_0	=	0x0090
                    0091    211 _P1_1	=	0x0091
                    0092    212 _P1_2	=	0x0092
                    0093    213 _P1_3	=	0x0093
                    0094    214 _P1_4	=	0x0094
                    0095    215 _P1_5	=	0x0095
                    0096    216 _P1_6	=	0x0096
                    0097    217 _P1_7	=	0x0097
                    0098    218 _RI	=	0x0098
                    0099    219 _TI	=	0x0099
                    009A    220 _RB8	=	0x009a
                    009B    221 _TB8	=	0x009b
                    009C    222 _REN	=	0x009c
                    009D    223 _SM2	=	0x009d
                    009E    224 _SM1	=	0x009e
                    009F    225 _SM0	=	0x009f
                    00A0    226 _P2_0	=	0x00a0
                    00A1    227 _P2_1	=	0x00a1
                    00A2    228 _P2_2	=	0x00a2
                    00A3    229 _P2_3	=	0x00a3
                    00A4    230 _P2_4	=	0x00a4
                    00A5    231 _P2_5	=	0x00a5
                    00A6    232 _P2_6	=	0x00a6
                    00A7    233 _P2_7	=	0x00a7
                    00A8    234 _EX0	=	0x00a8
                    00A9    235 _ET0	=	0x00a9
                    00AA    236 _EX1	=	0x00aa
                    00AB    237 _ET1	=	0x00ab
                    00AC    238 _ES	=	0x00ac
                    00AF    239 _EA	=	0x00af
                    00B0    240 _P3_0	=	0x00b0
                    00B1    241 _P3_1	=	0x00b1
                    00B2    242 _P3_2	=	0x00b2
                    00B3    243 _P3_3	=	0x00b3
                    00B4    244 _P3_4	=	0x00b4
                    00B5    245 _P3_5	=	0x00b5
                    00B6    246 _P3_6	=	0x00b6
                    00B7    247 _P3_7	=	0x00b7
                    00B0    248 _RXD	=	0x00b0
                    00B1    249 _TXD	=	0x00b1
                    00B2    250 _INT0	=	0x00b2
                    00B3    251 _INT1	=	0x00b3
                    00B4    252 _T0	=	0x00b4
                    00B5    253 _T1	=	0x00b5
                    00B6    254 _WR	=	0x00b6
                    00B7    255 _RD	=	0x00b7
                    00B8    256 _PX0	=	0x00b8
                    00B9    257 _PT0	=	0x00b9
                    00BA    258 _PX1	=	0x00ba
                    00BB    259 _PT1	=	0x00bb
                    00BC    260 _PS	=	0x00bc
                    00D0    261 _P	=	0x00d0
                    00D1    262 _F1	=	0x00d1
                    00D2    263 _OV	=	0x00d2
                    00D3    264 _RS0	=	0x00d3
                    00D4    265 _RS1	=	0x00d4
                    00D5    266 _F0	=	0x00d5
                    00D6    267 _AC	=	0x00d6
                    00D7    268 _CY	=	0x00d7
                    00AD    269 _ET2	=	0x00ad
                    00BD    270 _PT2	=	0x00bd
                    00C8    271 _T2CON_0	=	0x00c8
                    00C9    272 _T2CON_1	=	0x00c9
                    00CA    273 _T2CON_2	=	0x00ca
                    00CB    274 _T2CON_3	=	0x00cb
                    00CC    275 _T2CON_4	=	0x00cc
                    00CD    276 _T2CON_5	=	0x00cd
                    00CE    277 _T2CON_6	=	0x00ce
                    00CF    278 _T2CON_7	=	0x00cf
                    00C8    279 _CP_RL2	=	0x00c8
                    00C9    280 _C_T2	=	0x00c9
                    00CA    281 _TR2	=	0x00ca
                    00CB    282 _EXEN2	=	0x00cb
                    00CC    283 _TCLK	=	0x00cc
                    00CD    284 _RCLK	=	0x00cd
                    00CE    285 _EXF2	=	0x00ce
                    00CF    286 _TF2	=	0x00cf
                            287 ;--------------------------------------------------------
                            288 ; overlayable register banks
                            289 ;--------------------------------------------------------
                            290 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     291 	.ds 8
                            292 	.area REG_BANK_1	(REL,OVR,DATA)
   0008                     293 	.ds 8
                            294 ;--------------------------------------------------------
                            295 ; internal ram data
                            296 ;--------------------------------------------------------
                            297 	.area DSEG    (DATA)
   0010                     298 _dutytime::
   0010                     299 	.ds 2
   0012                     300 _ton::
   0012                     301 	.ds 2
   0014                     302 _toff::
   0014                     303 	.ds 2
   0016                     304 _temp::
   0016                     305 	.ds 2
   0018                     306 _time_count::
   0018                     307 	.ds 2
   001A                     308 _ms1::
   001A                     309 	.ds 2
   001C                     310 _T_hour::
   001C                     311 	.ds 1
   001D                     312 _T_min::
   001D                     313 	.ds 1
   001E                     314 _T_sec::
   001E                     315 	.ds 1
   001F                     316 _PWM_state::
   001F                     317 	.ds 1
   0020                     318 _Action::
   0020                     319 	.ds 1
   0021                     320 _change_time::
   0021                     321 	.ds 1
   0022                     322 _BT_data::
   0022                     323 	.ds 1
   0023                     324 _BT_data_flag::
   0023                     325 	.ds 1
   0024                     326 _i::
   0024                     327 	.ds 1
                            328 ;--------------------------------------------------------
                            329 ; overlayable items in internal ram 
                            330 ;--------------------------------------------------------
                            331 	.area OSEG    (OVR,DATA)
                            332 ;--------------------------------------------------------
                            333 ; Stack segment in internal ram 
                            334 ;--------------------------------------------------------
                            335 	.area	SSEG	(DATA)
   0026                     336 __start__stack:
   0026                     337 	.ds	1
                            338 
                            339 ;--------------------------------------------------------
                            340 ; indirectly addressable internal ram data
                            341 ;--------------------------------------------------------
                            342 	.area ISEG    (DATA)
                            343 ;--------------------------------------------------------
                            344 ; absolute internal ram data
                            345 ;--------------------------------------------------------
                            346 	.area IABS    (ABS,DATA)
                            347 	.area IABS    (ABS,DATA)
                            348 ;--------------------------------------------------------
                            349 ; bit data
                            350 ;--------------------------------------------------------
                            351 	.area BSEG    (BIT)
                            352 ;--------------------------------------------------------
                            353 ; paged external ram data
                            354 ;--------------------------------------------------------
                            355 	.area PSEG    (PAG,XDATA)
                            356 ;--------------------------------------------------------
                            357 ; external ram data
                            358 ;--------------------------------------------------------
                            359 	.area XSEG    (XDATA)
                            360 ;--------------------------------------------------------
                            361 ; absolute external ram data
                            362 ;--------------------------------------------------------
                            363 	.area XABS    (ABS,XDATA)
                            364 ;--------------------------------------------------------
                            365 ; external initialized ram data
                            366 ;--------------------------------------------------------
                            367 	.area XISEG   (XDATA)
                            368 	.area HOME    (CODE)
                            369 	.area GSINIT0 (CODE)
                            370 	.area GSINIT1 (CODE)
                            371 	.area GSINIT2 (CODE)
                            372 	.area GSINIT3 (CODE)
                            373 	.area GSINIT4 (CODE)
                            374 	.area GSINIT5 (CODE)
                            375 	.area GSINIT  (CODE)
                            376 	.area GSFINAL (CODE)
                            377 	.area CSEG    (CODE)
                            378 ;--------------------------------------------------------
                            379 ; interrupt vector 
                            380 ;--------------------------------------------------------
                            381 	.area HOME    (CODE)
   0000                     382 __interrupt_vect:
   0000 02 00 23            383 	ljmp	__sdcc_gsinit_startup
   0003 32                  384 	reti
   0004                     385 	.ds	7
   000B 02 01 C0            386 	ljmp	_timer0_isr
   000E                     387 	.ds	5
   0013 32                  388 	reti
   0014                     389 	.ds	7
   001B 02 02 3D            390 	ljmp	_time_count_add
                            391 ;--------------------------------------------------------
                            392 ; global & static initialisations
                            393 ;--------------------------------------------------------
                            394 	.area HOME    (CODE)
                            395 	.area GSINIT  (CODE)
                            396 	.area GSFINAL (CODE)
                            397 	.area GSINIT  (CODE)
                            398 	.globl __sdcc_gsinit_startup
                            399 	.globl __sdcc_program_startup
                            400 	.globl __start__stack
                            401 	.globl __mcs51_genXINIT
                            402 	.globl __mcs51_genXRAMCLEAR
                            403 	.globl __mcs51_genRAMCLEAR
                            404 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:14: unsigned int dutytime = 35536; //65536-45536就是責任週期
   007C 75 10 D0            405 	mov	_dutytime,#0xD0
   007F 75 11 8A            406 	mov	(_dutytime + 1),#0x8A
                            407 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:15: unsigned int ton = 15000; //高電位比例=50%
   0082 75 12 98            408 	mov	_ton,#0x98
   0085 75 13 3A            409 	mov	(_ton + 1),#0x3A
                            410 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:16: unsigned int toff = 15000; //低電位比例=50%
   0088 75 14 98            411 	mov	_toff,#0x98
   008B 75 15 3A            412 	mov	(_toff + 1),#0x3A
                            413 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:18: unsigned int time_count = 0;
   008E E4                  414 	clr	a
   008F F5 18               415 	mov	_time_count,a
   0091 F5 19               416 	mov	(_time_count + 1),a
                            417 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:19: unsigned int ms1 = 907; // 透過修正timer1的時間修正系統性的時間計算誤差
   0093 75 1A 8B            418 	mov	_ms1,#0x8B
   0096 75 1B 03            419 	mov	(_ms1 + 1),#0x03
                            420 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:20: signed char T_hour = 0, T_min = 0, T_sec = 0;
   0099 75 1C 00            421 	mov	_T_hour,#0x00
                            422 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:20: unsigned char PWM_state = 0;
   009C 75 1D 00            423 	mov	_T_min,#0x00
                            424 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:20: signed char T_hour = 0, T_min = 0, T_sec = 0;
   009F 75 1E 00            425 	mov	_T_sec,#0x00
                            426 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:21: unsigned char PWM_state = 0;
   00A2 75 1F 00            427 	mov	_PWM_state,#0x00
                            428 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:22: unsigned char Action = 0; // 1: open, 2: close
   00A5 75 20 00            429 	mov	_Action,#0x00
                            430 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:23: unsigned char change_time = 0;
   00A8 75 21 00            431 	mov	_change_time,#0x00
                            432 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:24: char BT_data = ' ';
   00AB 75 22 20            433 	mov	_BT_data,#0x20
                            434 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:25: char BT_data_flag = 0;
   00AE 75 23 00            435 	mov	_BT_data_flag,#0x00
                            436 	.area GSFINAL (CODE)
   00B1 02 00 1E            437 	ljmp	__sdcc_program_startup
                            438 ;--------------------------------------------------------
                            439 ; Home
                            440 ;--------------------------------------------------------
                            441 	.area HOME    (CODE)
                            442 	.area HOME    (CODE)
   001E                     443 __sdcc_program_startup:
   001E 12 03 7B            444 	lcall	_main
                            445 ;	return from main will lock up
   0021 80 FE               446 	sjmp .
                            447 ;--------------------------------------------------------
                            448 ; code
                            449 ;--------------------------------------------------------
                            450 	.area CSEG    (CODE)
                            451 ;------------------------------------------------------------
                            452 ;Allocation info for local variables in function 'sendbyte'
                            453 ;------------------------------------------------------------
                            454 ;dat                       Allocated to stack - offset -3
                            455 ;address                   Allocated to registers r2 
                            456 ;i                         Allocated to registers r3 
                            457 ;------------------------------------------------------------
                            458 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:28: void sendbyte(unsigned char address,unsigned char dat) {
                            459 ;	-----------------------------------------
                            460 ;	 function sendbyte
                            461 ;	-----------------------------------------
   00B4                     462 _sendbyte:
                    0002    463 	ar2 = 0x02
                    0003    464 	ar3 = 0x03
                    0004    465 	ar4 = 0x04
                    0005    466 	ar5 = 0x05
                    0006    467 	ar6 = 0x06
                    0007    468 	ar7 = 0x07
                    0000    469 	ar0 = 0x00
                    0001    470 	ar1 = 0x01
   00B4 C0 25               471 	push	_bp
   00B6 85 81 25            472 	mov	_bp,sp
   00B9 AA 82               473 	mov	r2,dpl
                            474 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:30: for (i=0;i<8;i++) {
   00BB 7B 00               475 	mov	r3,#0x00
   00BD                     476 00101$:
   00BD BB 08 00            477 	cjne	r3,#0x08,00117$
   00C0                     478 00117$:
   00C0 50 0C               479 	jnc	00104$
                            480 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:31: CLK=0;
   00C2 C2 B6               481 	clr	_P3_6
                            482 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:32: DIN=(address&0x80);
                            483 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:33: address<<=1;
   00C4 EA                  484 	mov	a,r2
   00C5 2A                  485 	add	a,r2
   00C6 92 B4               486 	mov	_P3_4,c
   00C8 FA                  487 	mov	r2,a
                            488 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:34: CLK=1;
   00C9 D2 B6               489 	setb	_P3_6
                            490 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:30: for (i=0;i<8;i++) {
   00CB 0B                  491 	inc	r3
   00CC 80 EF               492 	sjmp	00101$
   00CE                     493 00104$:
                            494 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:36: for (i=0;i<8;i++) {
   00CE 7A 00               495 	mov	r2,#0x00
   00D0                     496 00105$:
   00D0 BA 08 00            497 	cjne	r2,#0x08,00119$
   00D3                     498 00119$:
   00D3 50 19               499 	jnc	00109$
                            500 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:37: CLK=0;
   00D5 C2 B6               501 	clr	_P3_6
                            502 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:38: DIN=(dat&0x80);
   00D7 E5 25               503 	mov	a,_bp
   00D9 24 FD               504 	add	a,#0xfd
   00DB F8                  505 	mov	r0,a
   00DC E6                  506 	mov	a,@r0
   00DD 33                  507 	rlc	a
   00DE 92 B4               508 	mov	_P3_4,c
                            509 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:39: dat<<=1;
   00E0 E5 25               510 	mov	a,_bp
   00E2 24 FD               511 	add	a,#0xfd
   00E4 F8                  512 	mov	r0,a
   00E5 E6                  513 	mov	a,@r0
   00E6 25 E0               514 	add	a,acc
   00E8 F6                  515 	mov	@r0,a
                            516 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:40: CLK=1;
   00E9 D2 B6               517 	setb	_P3_6
                            518 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:36: for (i=0;i<8;i++) {
   00EB 0A                  519 	inc	r2
   00EC 80 E2               520 	sjmp	00105$
   00EE                     521 00109$:
   00EE D0 25               522 	pop	_bp
   00F0 22                  523 	ret
                            524 ;------------------------------------------------------------
                            525 ;Allocation info for local variables in function 'Write7219'
                            526 ;------------------------------------------------------------
                            527 ;dat                       Allocated to stack - offset -3
                            528 ;address                   Allocated to registers r2 
                            529 ;cnt                       Allocated to registers r3 
                            530 ;------------------------------------------------------------
                            531 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:44: void Write7219(unsigned char address,unsigned char dat) {
                            532 ;	-----------------------------------------
                            533 ;	 function Write7219
                            534 ;	-----------------------------------------
   00F1                     535 _Write7219:
   00F1 C0 25               536 	push	_bp
   00F3 85 81 25            537 	mov	_bp,sp
   00F6 AA 82               538 	mov	r2,dpl
                            539 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:46: LOAD=0;
   00F8 C2 B5               540 	clr	_P3_5
                            541 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:47: for(cnt=1;cnt<=matrixnum;cnt++) sendbyte(address,dat);
   00FA 7B 01               542 	mov	r3,#0x01
   00FC                     543 00103$:
   00FC C0 02               544 	push	ar2
   00FE C0 03               545 	push	ar3
   0100 E5 25               546 	mov	a,_bp
   0102 24 FD               547 	add	a,#0xfd
   0104 F8                  548 	mov	r0,a
   0105 E6                  549 	mov	a,@r0
   0106 C0 E0               550 	push	acc
   0108 8A 82               551 	mov	dpl,r2
   010A 12 00 B4            552 	lcall	_sendbyte
   010D 15 81               553 	dec	sp
   010F D0 03               554 	pop	ar3
   0111 D0 02               555 	pop	ar2
   0113 DB E7               556 	djnz	r3,00103$
                            557 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:48: LOAD=1;                  
   0115 D2 B5               558 	setb	_P3_5
   0117 D0 25               559 	pop	_bp
   0119 22                  560 	ret
                            561 ;------------------------------------------------------------
                            562 ;Allocation info for local variables in function 'SSD_Initial'
                            563 ;------------------------------------------------------------
                            564 ;i                         Allocated to registers r2 
                            565 ;------------------------------------------------------------
                            566 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:51: void SSD_Initial(void) {
                            567 ;	-----------------------------------------
                            568 ;	 function SSD_Initial
                            569 ;	-----------------------------------------
   011A                     570 _SSD_Initial:
                            571 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:53: Write7219(SHUT_DOWN,0x01);
   011A 74 01               572 	mov	a,#0x01
   011C C0 E0               573 	push	acc
   011E 75 82 0C            574 	mov	dpl,#0x0C
   0121 12 00 F1            575 	lcall	_Write7219
   0124 15 81               576 	dec	sp
                            577 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:54: Write7219(DISPLAY_TEST,0x00);
   0126 E4                  578 	clr	a
   0127 C0 E0               579 	push	acc
   0129 75 82 0F            580 	mov	dpl,#0x0F
   012C 12 00 F1            581 	lcall	_Write7219
   012F 15 81               582 	dec	sp
                            583 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:55: Write7219(DECODE_MODE,0xff);
   0131 74 FF               584 	mov	a,#0xFF
   0133 C0 E0               585 	push	acc
   0135 75 82 09            586 	mov	dpl,#0x09
   0138 12 00 F1            587 	lcall	_Write7219
   013B 15 81               588 	dec	sp
                            589 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:56: Write7219(SCAN_LIMIT,0x07);
   013D 74 07               590 	mov	a,#0x07
   013F C0 E0               591 	push	acc
   0141 75 82 0B            592 	mov	dpl,#0x0B
   0144 12 00 F1            593 	lcall	_Write7219
   0147 15 81               594 	dec	sp
                            595 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:57: Write7219(INTENSITY,0x00);
   0149 E4                  596 	clr	a
   014A C0 E0               597 	push	acc
   014C 75 82 0A            598 	mov	dpl,#0x0A
   014F 12 00 F1            599 	lcall	_Write7219
   0152 15 81               600 	dec	sp
                            601 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:58: for(i=1;i<=8;i++) Write7219(i,0x0f);
   0154 7A 01               602 	mov	r2,#0x01
   0156                     603 00101$:
   0156 74 08               604 	mov	a,#0x08
   0158 B5 02 00            605 	cjne	a,ar2,00110$
   015B                     606 00110$:
   015B 40 12               607 	jc	00105$
   015D C0 02               608 	push	ar2
   015F 74 0F               609 	mov	a,#0x0F
   0161 C0 E0               610 	push	acc
   0163 8A 82               611 	mov	dpl,r2
   0165 12 00 F1            612 	lcall	_Write7219
   0168 15 81               613 	dec	sp
   016A D0 02               614 	pop	ar2
   016C 0A                  615 	inc	r2
   016D 80 E7               616 	sjmp	00101$
   016F                     617 00105$:
   016F 22                  618 	ret
                            619 ;------------------------------------------------------------
                            620 ;Allocation info for local variables in function 'delay_ms'
                            621 ;------------------------------------------------------------
                            622 ;ms                        Allocated to registers r2 r3 
                            623 ;i                         Allocated to registers r4 r5 
                            624 ;j                         Allocated to registers r6 
                            625 ;------------------------------------------------------------
                            626 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:61: void delay_ms(int ms) {
                            627 ;	-----------------------------------------
                            628 ;	 function delay_ms
                            629 ;	-----------------------------------------
   0170                     630 _delay_ms:
   0170 AA 82               631 	mov	r2,dpl
   0172 AB 83               632 	mov	r3,dph
                            633 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:64: for (i = 0; i < ms; i++) {
   0174 7C 00               634 	mov	r4,#0x00
   0176 7D 00               635 	mov	r5,#0x00
   0178                     636 00104$:
   0178 C3                  637 	clr	c
   0179 EC                  638 	mov	a,r4
   017A 9A                  639 	subb	a,r2
   017B ED                  640 	mov	a,r5
   017C 9B                  641 	subb	a,r3
   017D 50 0B               642 	jnc	00108$
                            643 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:65: for (j = 0; j < 90; j++);
   017F 7E 5A               644 	mov	r6,#0x5A
   0181                     645 00103$:
   0181 DE FE               646 	djnz	r6,00103$
                            647 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:64: for (i = 0; i < ms; i++) {
   0183 0C                  648 	inc	r4
   0184 BC 00 F1            649 	cjne	r4,#0x00,00104$
   0187 0D                  650 	inc	r5
   0188 80 EE               651 	sjmp	00104$
   018A                     652 00108$:
   018A 22                  653 	ret
                            654 ;------------------------------------------------------------
                            655 ;Allocation info for local variables in function 'time_initial'
                            656 ;------------------------------------------------------------
                            657 ;------------------------------------------------------------
                            658 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:70: void time_initial(void) {
                            659 ;	-----------------------------------------
                            660 ;	 function time_initial
                            661 ;	-----------------------------------------
   018B                     662 _time_initial:
                            663 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:71: TMOD = 0x11;  // Set Timer 1 to  mode 0 & Timer 0 mode 1. (16-bit timer)
   018B 75 89 11            664 	mov	_TMOD,#0x11
                            665 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:72: IE|=0x02; //開啟計時器中斷功能
   018E 43 A8 02            666 	orl	_IE,#0x02
                            667 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:73: temp = 65536 - dutytime; //設定中斷一次的時間(預設是dutytime)
   0191 AA 10               668 	mov	r2,_dutytime
   0193 AB 11               669 	mov	r3,(_dutytime + 1)
   0195 E4                  670 	clr	a
   0196 FC                  671 	mov	r4,a
   0197 FD                  672 	mov	r5,a
   0198 C3                  673 	clr	c
   0199 9A                  674 	subb	a,r2
   019A FA                  675 	mov	r2,a
   019B E4                  676 	clr	a
   019C 9B                  677 	subb	a,r3
   019D FB                  678 	mov	r3,a
   019E 74 01               679 	mov	a,#0x01
   01A0 9C                  680 	subb	a,r4
   01A1 E4                  681 	clr	a
   01A2 9D                  682 	subb	a,r5
   01A3 8A 16               683 	mov	_temp,r2
   01A5 8B 17               684 	mov	(_temp + 1),r3
                            685 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:74: TH0 = temp / 256; //填入高八位
   01A7 AA 17               686 	mov	r2,(_temp + 1)
   01A9 8A 8C               687 	mov	_TH0,r2
                            688 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:75: TL0 = temp % 256; //填入低八位
   01AB AA 16               689 	mov	r2,_temp
   01AD 8A 8A               690 	mov	_TL0,r2
                            691 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:76: TH1 = (65536-1000) / 256;   // Load initial higher 8 bits into Timer 1
   01AF 75 8D FC            692 	mov	_TH1,#0xFC
                            693 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:77: TL1 = (65536-1000) % 256;   // Load initial lower 8 bits into Timer 1
   01B2 75 8B 18            694 	mov	_TL1,#0x18
                            695 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:78: EA = 1;                // Enable all interrupt
   01B5 D2 AF               696 	setb	_EA
                            697 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:79: ET0 = 1;            // Enable Timer 0 interrupt
   01B7 D2 A9               698 	setb	_ET0
                            699 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:80: TR0 = 1;            // Start Timer 0
   01B9 D2 8C               700 	setb	_TR0
                            701 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:81: ET1 = 1;            // Enable Timer 1 interrupt
   01BB D2 AB               702 	setb	_ET1
                            703 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:82: TR1 = 1;             // Start Timer 1
   01BD D2 8E               704 	setb	_TR1
   01BF 22                  705 	ret
                            706 ;------------------------------------------------------------
                            707 ;Allocation info for local variables in function 'timer0_isr'
                            708 ;------------------------------------------------------------
                            709 ;------------------------------------------------------------
                            710 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:86: void timer0_isr(void) __interrupt TF0_VECTOR __using 1 {
                            711 ;	-----------------------------------------
                            712 ;	 function timer0_isr
                            713 ;	-----------------------------------------
   01C0                     714 _timer0_isr:
                    000A    715 	ar2 = 0x0a
                    000B    716 	ar3 = 0x0b
                    000C    717 	ar4 = 0x0c
                    000D    718 	ar5 = 0x0d
                    000E    719 	ar6 = 0x0e
                    000F    720 	ar7 = 0x0f
                    0008    721 	ar0 = 0x08
                    0009    722 	ar1 = 0x09
   01C0 C0 E0               723 	push	acc
   01C2 C0 D0               724 	push	psw
   01C4 75 D0 08            725 	mov	psw,#0x08
                            726 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:87: if (PWM_state == 1) {
   01C7 74 01               727 	mov	a,#0x01
   01C9 B5 1F 37            728 	cjne	a,_PWM_state,00112$
                            729 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:88: temp = 65536 - toff;
   01CC AA 14               730 	mov	r2,_toff
   01CE AB 15               731 	mov	r3,(_toff + 1)
   01D0 E4                  732 	clr	a
   01D1 FC                  733 	mov	r4,a
   01D2 FD                  734 	mov	r5,a
   01D3 C3                  735 	clr	c
   01D4 9A                  736 	subb	a,r2
   01D5 FA                  737 	mov	r2,a
   01D6 E4                  738 	clr	a
   01D7 9B                  739 	subb	a,r3
   01D8 FB                  740 	mov	r3,a
   01D9 74 01               741 	mov	a,#0x01
   01DB 9C                  742 	subb	a,r4
   01DC FC                  743 	mov	r4,a
   01DD E4                  744 	clr	a
   01DE 9D                  745 	subb	a,r5
   01DF FD                  746 	mov	r5,a
   01E0 8A 16               747 	mov	_temp,r2
   01E2 8B 17               748 	mov	(_temp + 1),r3
                            749 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:89: TH0 = temp / 256;
   01E4 AA 17               750 	mov	r2,(_temp + 1)
   01E6 8A 8C               751 	mov	_TH0,r2
                            752 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:90: TL0 = temp % 256;
   01E8 AA 16               753 	mov	r2,_temp
   01EA 7B 00               754 	mov	r3,#0x00
   01EC 8A 8A               755 	mov	_TL0,r2
                            756 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:91: if (Action == 1) {
   01EE 74 01               757 	mov	a,#0x01
   01F0 B5 20 04            758 	cjne	a,_Action,00104$
                            759 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:92: P2_7 = 0;
   01F3 C2 A7               760 	clr	_P2_7
   01F5 80 07               761 	sjmp	00105$
   01F7                     762 00104$:
                            763 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:93: } else if (Action == 2) {
   01F7 74 02               764 	mov	a,#0x02
   01F9 B5 20 02            765 	cjne	a,_Action,00105$
                            766 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:94: P2_6 = 0;
   01FC C2 A6               767 	clr	_P2_6
   01FE                     768 00105$:
                            769 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:96: PWM_state = 0;
   01FE 75 1F 00            770 	mov	_PWM_state,#0x00
   0201 80 35               771 	sjmp	00114$
   0203                     772 00112$:
                            773 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:98: temp = 65536 - ton;
   0203 AA 12               774 	mov	r2,_ton
   0205 AB 13               775 	mov	r3,(_ton + 1)
   0207 E4                  776 	clr	a
   0208 FC                  777 	mov	r4,a
   0209 FD                  778 	mov	r5,a
   020A C3                  779 	clr	c
   020B 9A                  780 	subb	a,r2
   020C FA                  781 	mov	r2,a
   020D E4                  782 	clr	a
   020E 9B                  783 	subb	a,r3
   020F FB                  784 	mov	r3,a
   0210 74 01               785 	mov	a,#0x01
   0212 9C                  786 	subb	a,r4
   0213 FC                  787 	mov	r4,a
   0214 E4                  788 	clr	a
   0215 9D                  789 	subb	a,r5
   0216 FD                  790 	mov	r5,a
   0217 8A 16               791 	mov	_temp,r2
   0219 8B 17               792 	mov	(_temp + 1),r3
                            793 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:99: TH0 = temp / 256;
   021B AA 17               794 	mov	r2,(_temp + 1)
   021D 8A 8C               795 	mov	_TH0,r2
                            796 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:100: TL0 = temp % 256;
   021F AA 16               797 	mov	r2,_temp
   0221 7B 00               798 	mov	r3,#0x00
   0223 8A 8A               799 	mov	_TL0,r2
                            800 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:101: if (Action == 1) {
   0225 74 01               801 	mov	a,#0x01
   0227 B5 20 04            802 	cjne	a,_Action,00109$
                            803 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:102: P2_7 = 1;
   022A D2 A7               804 	setb	_P2_7
   022C 80 07               805 	sjmp	00110$
   022E                     806 00109$:
                            807 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:103: } else if (Action == 2) {
   022E 74 02               808 	mov	a,#0x02
   0230 B5 20 02            809 	cjne	a,_Action,00110$
                            810 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:104: P2_6 = 1;
   0233 D2 A6               811 	setb	_P2_6
   0235                     812 00110$:
                            813 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:106: PWM_state = 1;
   0235 75 1F 01            814 	mov	_PWM_state,#0x01
   0238                     815 00114$:
   0238 D0 D0               816 	pop	psw
   023A D0 E0               817 	pop	acc
   023C 32                  818 	reti
                            819 ;	eliminated unneeded push/pop dpl
                            820 ;	eliminated unneeded push/pop dph
                            821 ;	eliminated unneeded push/pop b
                            822 ;------------------------------------------------------------
                            823 ;Allocation info for local variables in function 'time_count_add'
                            824 ;------------------------------------------------------------
                            825 ;------------------------------------------------------------
                            826 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:110: void time_count_add(void) __interrupt 3 {   // 10ms
                            827 ;	-----------------------------------------
                            828 ;	 function time_count_add
                            829 ;	-----------------------------------------
   023D                     830 _time_count_add:
                    0002    831 	ar2 = 0x02
                    0003    832 	ar3 = 0x03
                    0004    833 	ar4 = 0x04
                    0005    834 	ar5 = 0x05
                    0006    835 	ar6 = 0x06
                    0007    836 	ar7 = 0x07
                    0000    837 	ar0 = 0x00
                    0001    838 	ar1 = 0x01
   023D C0 E0               839 	push	acc
   023F C0 D0               840 	push	psw
   0241 75 D0 00            841 	mov	psw,#0x00
                            842 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:111: TH1 = (65536 - 1000) / 256;
   0244 75 8D FC            843 	mov	_TH1,#0xFC
                            844 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:112: TL1 = (65536 - 1000) % 256; 
   0247 75 8B 18            845 	mov	_TL1,#0x18
                            846 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:113: time_count++;
   024A 05 18               847 	inc	_time_count
   024C E4                  848 	clr	a
   024D B5 18 02            849 	cjne	a,_time_count,00115$
   0250 05 19               850 	inc	(_time_count + 1)
   0252                     851 00115$:
                            852 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:114: if (time_count == ms1) {
   0252 E5 1A               853 	mov	a,_ms1
   0254 B5 18 28            854 	cjne	a,_time_count,00109$
   0257 E5 1B               855 	mov	a,(_ms1 + 1)
   0259 B5 19 23            856 	cjne	a,(_time_count + 1),00109$
                            857 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:115: time_count = 0;
   025C E4                  858 	clr	a
   025D F5 18               859 	mov	_time_count,a
   025F F5 19               860 	mov	(_time_count + 1),a
                            861 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:116: if (++T_sec == 60) {
   0261 05 1E               862 	inc	_T_sec
   0263 74 3C               863 	mov	a,#0x3C
   0265 B5 1E 17            864 	cjne	a,_T_sec,00109$
                            865 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:117: T_sec = 0;
   0268 75 1E 00            866 	mov	_T_sec,#0x00
                            867 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:118: if (++T_min == 60) {
   026B 05 1D               868 	inc	_T_min
   026D 74 3C               869 	mov	a,#0x3C
   026F B5 1D 0D            870 	cjne	a,_T_min,00109$
                            871 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:119: T_min = 0;
   0272 75 1D 00            872 	mov	_T_min,#0x00
                            873 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:120: if (++T_hour == 24) {
   0275 05 1C               874 	inc	_T_hour
   0277 74 18               875 	mov	a,#0x18
   0279 B5 1C 03            876 	cjne	a,_T_hour,00109$
                            877 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:121: T_hour = 0;
   027C 75 1C 00            878 	mov	_T_hour,#0x00
   027F                     879 00109$:
   027F D0 D0               880 	pop	psw
   0281 D0 E0               881 	pop	acc
   0283 32                  882 	reti
                            883 ;	eliminated unneeded push/pop dpl
                            884 ;	eliminated unneeded push/pop dph
                            885 ;	eliminated unneeded push/pop b
                            886 ;------------------------------------------------------------
                            887 ;Allocation info for local variables in function 'Write7219ALL'
                            888 ;------------------------------------------------------------
                            889 ;pl7                       Allocated to stack - offset -4
                            890 ;pl6                       Allocated to stack - offset -6
                            891 ;pl5                       Allocated to stack - offset -8
                            892 ;pl4                       Allocated to stack - offset -10
                            893 ;pl3                       Allocated to stack - offset -12
                            894 ;pl2                       Allocated to stack - offset -14
                            895 ;pl1                       Allocated to stack - offset -16
                            896 ;pl8                       Allocated to registers r2 r3 
                            897 ;------------------------------------------------------------
                            898 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:128: void Write7219ALL(int pl8, int pl7, int pl6, int pl5, int pl4, int pl3, int pl2, int pl1) {
                            899 ;	-----------------------------------------
                            900 ;	 function Write7219ALL
                            901 ;	-----------------------------------------
   0284                     902 _Write7219ALL:
   0284 C0 25               903 	push	_bp
   0286 85 81 25            904 	mov	_bp,sp
   0289 AA 82               905 	mov	r2,dpl
                            906 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:129: Write7219(8, pl8);
   028B C0 02               907 	push	ar2
   028D 75 82 08            908 	mov	dpl,#0x08
   0290 12 00 F1            909 	lcall	_Write7219
   0293 15 81               910 	dec	sp
                            911 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:130: Write7219(7, pl7);
   0295 E5 25               912 	mov	a,_bp
   0297 24 FC               913 	add	a,#0xfc
   0299 F8                  914 	mov	r0,a
   029A 86 02               915 	mov	ar2,@r0
   029C C0 02               916 	push	ar2
   029E 75 82 07            917 	mov	dpl,#0x07
   02A1 12 00 F1            918 	lcall	_Write7219
   02A4 15 81               919 	dec	sp
                            920 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:131: Write7219(6, pl6);
   02A6 E5 25               921 	mov	a,_bp
   02A8 24 FA               922 	add	a,#0xfa
   02AA F8                  923 	mov	r0,a
   02AB 86 02               924 	mov	ar2,@r0
   02AD C0 02               925 	push	ar2
   02AF 75 82 06            926 	mov	dpl,#0x06
   02B2 12 00 F1            927 	lcall	_Write7219
   02B5 15 81               928 	dec	sp
                            929 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:132: Write7219(5, pl5);
   02B7 E5 25               930 	mov	a,_bp
   02B9 24 F8               931 	add	a,#0xf8
   02BB F8                  932 	mov	r0,a
   02BC 86 02               933 	mov	ar2,@r0
   02BE C0 02               934 	push	ar2
   02C0 75 82 05            935 	mov	dpl,#0x05
   02C3 12 00 F1            936 	lcall	_Write7219
   02C6 15 81               937 	dec	sp
                            938 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:133: Write7219(4, pl4);
   02C8 E5 25               939 	mov	a,_bp
   02CA 24 F6               940 	add	a,#0xf6
   02CC F8                  941 	mov	r0,a
   02CD 86 02               942 	mov	ar2,@r0
   02CF C0 02               943 	push	ar2
   02D1 75 82 04            944 	mov	dpl,#0x04
   02D4 12 00 F1            945 	lcall	_Write7219
   02D7 15 81               946 	dec	sp
                            947 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:134: Write7219(3, pl3);
   02D9 E5 25               948 	mov	a,_bp
   02DB 24 F4               949 	add	a,#0xf4
   02DD F8                  950 	mov	r0,a
   02DE 86 02               951 	mov	ar2,@r0
   02E0 C0 02               952 	push	ar2
   02E2 75 82 03            953 	mov	dpl,#0x03
   02E5 12 00 F1            954 	lcall	_Write7219
   02E8 15 81               955 	dec	sp
                            956 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:135: Write7219(2, pl2);
   02EA E5 25               957 	mov	a,_bp
   02EC 24 F2               958 	add	a,#0xf2
   02EE F8                  959 	mov	r0,a
   02EF 86 02               960 	mov	ar2,@r0
   02F1 C0 02               961 	push	ar2
   02F3 75 82 02            962 	mov	dpl,#0x02
   02F6 12 00 F1            963 	lcall	_Write7219
   02F9 15 81               964 	dec	sp
                            965 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:136: Write7219(1, pl1);
   02FB E5 25               966 	mov	a,_bp
   02FD 24 F0               967 	add	a,#0xf0
   02FF F8                  968 	mov	r0,a
   0300 86 02               969 	mov	ar2,@r0
   0302 C0 02               970 	push	ar2
   0304 75 82 01            971 	mov	dpl,#0x01
   0307 12 00 F1            972 	lcall	_Write7219
   030A 15 81               973 	dec	sp
   030C D0 25               974 	pop	_bp
   030E 22                  975 	ret
                            976 ;------------------------------------------------------------
                            977 ;Allocation info for local variables in function 'server_action'
                            978 ;------------------------------------------------------------
                            979 ;act                       Allocated to registers r2 r3 
                            980 ;------------------------------------------------------------
                            981 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:140: void server_action(int act) {
                            982 ;	-----------------------------------------
                            983 ;	 function server_action
                            984 ;	-----------------------------------------
   030F                     985 _server_action:
   030F AA 82               986 	mov	r2,dpl
   0311 AB 83               987 	mov	r3,dph
                            988 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:141: Action = act;
   0313 8A 20               989 	mov	_Action,r2
                            990 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:142: if (act == 1) {
   0315 BA 01 16            991 	cjne	r2,#0x01,00104$
   0318 BB 00 13            992 	cjne	r3,#0x00,00104$
                            993 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:143: ton = 2100; //2.2ms 左轉
   031B 75 12 34            994 	mov	_ton,#0x34
   031E 75 13 08            995 	mov	(_ton + 1),#0x08
                            996 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:144: delay_ms(2000);
   0321 90 07 D0            997 	mov	dptr,#0x07D0
   0324 12 01 70            998 	lcall	_delay_ms
                            999 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:145: ton = 1000;
   0327 75 12 E8           1000 	mov	_ton,#0xE8
   032A 75 13 03           1001 	mov	(_ton + 1),#0x03
   032D 22                 1002 	ret
   032E                    1003 00104$:
                           1004 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:146: } else if (act == 2) {
   032E BA 02 15           1005 	cjne	r2,#0x02,00106$
   0331 BB 00 12           1006 	cjne	r3,#0x00,00106$
                           1007 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:147: ton = 1000;
   0334 75 12 E8           1008 	mov	_ton,#0xE8
   0337 75 13 03           1009 	mov	(_ton + 1),#0x03
                           1010 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:148: delay_ms(2000);
   033A 90 07 D0           1011 	mov	dptr,#0x07D0
   033D 12 01 70           1012 	lcall	_delay_ms
                           1013 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:149: ton = 2100;
   0340 75 12 34           1014 	mov	_ton,#0x34
   0343 75 13 08           1015 	mov	(_ton + 1),#0x08
   0346                    1016 00106$:
   0346 22                 1017 	ret
                           1018 ;------------------------------------------------------------
                           1019 ;Allocation info for local variables in function 'server_initial'
                           1020 ;------------------------------------------------------------
                           1021 ;------------------------------------------------------------
                           1022 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:153: void server_initial(void) {
                           1023 ;	-----------------------------------------
                           1024 ;	 function server_initial
                           1025 ;	-----------------------------------------
   0347                    1026 _server_initial:
                           1027 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:154: server_action(1);
   0347 90 00 01           1028 	mov	dptr,#0x0001
   034A 12 03 0F           1029 	lcall	_server_action
                           1030 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:155: delay_ms(2000);
   034D 90 07 D0           1031 	mov	dptr,#0x07D0
   0350 12 01 70           1032 	lcall	_delay_ms
                           1033 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:156: server_action(2);
   0353 90 00 02           1034 	mov	dptr,#0x0002
   0356 02 03 0F           1035 	ljmp	_server_action
                           1036 ;------------------------------------------------------------
                           1037 ;Allocation info for local variables in function 'finish_setup'
                           1038 ;------------------------------------------------------------
                           1039 ;------------------------------------------------------------
                           1040 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:159: void finish_setup(void) {
                           1041 ;	-----------------------------------------
                           1042 ;	 function finish_setup
                           1043 ;	-----------------------------------------
   0359                    1044 _finish_setup:
                           1045 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:160: P1 = 0xff;
   0359 75 90 FF           1046 	mov	_P1,#0xFF
                           1047 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:161: for (i = 0; i < 10; i++) {
   035C 75 24 00           1048 	mov	_i,#0x00
   035F                    1049 00101$:
   035F C3                 1050 	clr	c
   0360 E5 24              1051 	mov	a,_i
   0362 64 80              1052 	xrl	a,#0x80
   0364 94 8A              1053 	subb	a,#0x8a
   0366 50 0F              1054 	jnc	00104$
                           1055 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:162: P1 = ~P1;
   0368 E5 90              1056 	mov	a,_P1
   036A F4                 1057 	cpl	a
   036B F5 90              1058 	mov	_P1,a
                           1059 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:163: delay_ms(300);
   036D 90 01 2C           1060 	mov	dptr,#0x012C
   0370 12 01 70           1061 	lcall	_delay_ms
                           1062 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:161: for (i = 0; i < 10; i++) {
   0373 05 24              1063 	inc	_i
   0375 80 E8              1064 	sjmp	00101$
   0377                    1065 00104$:
                           1066 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:165: P1 = 0xff;
   0377 75 90 FF           1067 	mov	_P1,#0xFF
   037A 22                 1068 	ret
                           1069 ;------------------------------------------------------------
                           1070 ;Allocation info for local variables in function 'main'
                           1071 ;------------------------------------------------------------
                           1072 ;prebtn0                   Allocated to registers r2 
                           1073 ;prebtn1                   Allocated to registers r3 
                           1074 ;prebtn2                   Allocated to registers r4 
                           1075 ;prebtn3                   Allocated to registers r5 
                           1076 ;mode2_change_place        Allocated to stack - offset 1
                           1077 ;open_close_time           Allocated to stack - offset 2
                           1078 ;mode                      Allocated to stack - offset 8
                           1079 ;sloc0                     Allocated to stack - offset 9
                           1080 ;sloc1                     Allocated to stack - offset 10
                           1081 ;sloc2                     Allocated to stack - offset 11
                           1082 ;sloc3                     Allocated to stack - offset 16
                           1083 ;sloc4                     Allocated to stack - offset 12
                           1084 ;sloc5                     Allocated to stack - offset 14
                           1085 ;sloc6                     Allocated to stack - offset 16
                           1086 ;sloc7                     Allocated to stack - offset 18
                           1087 ;------------------------------------------------------------
                           1088 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:168: void main(void) {
                           1089 ;	-----------------------------------------
                           1090 ;	 function main
                           1091 ;	-----------------------------------------
   037B                    1092 _main:
   037B C0 25              1093 	push	_bp
   037D E5 81              1094 	mov	a,sp
   037F F5 25              1095 	mov	_bp,a
   0381 24 13              1096 	add	a,#0x13
   0383 F5 81              1097 	mov	sp,a
                           1098 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:169: char prebtn0 = 0, prebtn1 = 0, prebtn2 = 0, prebtn3 = 0;
   0385 7A 00              1099 	mov	r2,#0x00
   0387 7B 00              1100 	mov	r3,#0x00
   0389 7C 00              1101 	mov	r4,#0x00
   038B 7D 00              1102 	mov	r5,#0x00
                           1103 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:170: char mode2_change_place = 0;
   038D A8 25              1104 	mov	r0,_bp
   038F 08                 1105 	inc	r0
   0390 76 00              1106 	mov	@r0,#0x00
                           1107 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:171: char open_close_time[6] = {8, 30, 0, 23, 30, 0}; //open: Hour, Minute, Second. close: Hour, Minute, Second.
   0392 E5 25              1108 	mov	a,_bp
   0394 24 02              1109 	add	a,#0x02
   0396 F8                 1110 	mov	r0,a
   0397 76 08              1111 	mov	@r0,#0x08
   0399 E8                 1112 	mov	a,r0
   039A 04                 1113 	inc	a
   039B F9                 1114 	mov	r1,a
   039C 77 1E              1115 	mov	@r1,#0x1E
   039E 74 02              1116 	mov	a,#0x02
   03A0 28                 1117 	add	a,r0
   03A1 FF                 1118 	mov	r7,a
   03A2 C0 00              1119 	push	ar0
   03A4 A8 07              1120 	mov	r0,ar7
   03A6 76 00              1121 	mov	@r0,#0x00
   03A8 D0 00              1122 	pop	ar0
   03AA C0 01              1123 	push	ar1
   03AC E5 25              1124 	mov	a,_bp
   03AE 24 09              1125 	add	a,#0x09
   03B0 F9                 1126 	mov	r1,a
   03B1 74 03              1127 	mov	a,#0x03
   03B3 28                 1128 	add	a,r0
   03B4 F7                 1129 	mov	@r1,a
   03B5 D0 01              1130 	pop	ar1
   03B7 C0 00              1131 	push	ar0
   03B9 E5 25              1132 	mov	a,_bp
   03BB 24 09              1133 	add	a,#0x09
   03BD F8                 1134 	mov	r0,a
   03BE 86 00              1135 	mov	ar0,@r0
   03C0 76 17              1136 	mov	@r0,#0x17
   03C2 D0 00              1137 	pop	ar0
   03C4 C0 01              1138 	push	ar1
   03C6 E5 25              1139 	mov	a,_bp
   03C8 24 0A              1140 	add	a,#0x0a
   03CA F9                 1141 	mov	r1,a
   03CB 74 04              1142 	mov	a,#0x04
   03CD 28                 1143 	add	a,r0
   03CE F7                 1144 	mov	@r1,a
   03CF D0 01              1145 	pop	ar1
   03D1 C0 00              1146 	push	ar0
   03D3 E5 25              1147 	mov	a,_bp
   03D5 24 0A              1148 	add	a,#0x0a
   03D7 F8                 1149 	mov	r0,a
   03D8 86 00              1150 	mov	ar0,@r0
   03DA 76 1E              1151 	mov	@r0,#0x1E
   03DC D0 00              1152 	pop	ar0
   03DE C0 01              1153 	push	ar1
   03E0 E5 25              1154 	mov	a,_bp
   03E2 24 0B              1155 	add	a,#0x0b
   03E4 F9                 1156 	mov	r1,a
   03E5 74 05              1157 	mov	a,#0x05
   03E7 28                 1158 	add	a,r0
   03E8 F7                 1159 	mov	@r1,a
   03E9 D0 01              1160 	pop	ar1
   03EB C0 00              1161 	push	ar0
   03ED E5 25              1162 	mov	a,_bp
   03EF 24 0B              1163 	add	a,#0x0b
   03F1 F8                 1164 	mov	r0,a
   03F2 86 00              1165 	mov	ar0,@r0
   03F4 76 00              1166 	mov	@r0,#0x00
                           1167 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:172: char mode = 1;
   03F6 E5 25              1168 	mov	a,_bp
   03F8 24 08              1169 	add	a,#0x08
   03FA F8                 1170 	mov	r0,a
   03FB 76 01              1171 	mov	@r0,#0x01
   03FD D0 00              1172 	pop	ar0
                           1173 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:173: INT0 = 1; INT1 = 1; P2_0 = 1; P2_1 = 1;
   03FF D2 B2              1174 	setb	_INT0
   0401 D2 B3              1175 	setb	_INT1
   0403 D2 A0              1176 	setb	_P2_0
   0405 D2 A1              1177 	setb	_P2_1
                           1178 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:174: ton = 1500;
   0407 75 12 DC           1179 	mov	_ton,#0xDC
   040A 75 13 05           1180 	mov	(_ton + 1),#0x05
                           1181 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:175: toff = 30000 - 1500;
   040D 75 14 54           1182 	mov	_toff,#0x54
   0410 75 15 6F           1183 	mov	(_toff + 1),#0x6F
                           1184 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:176: SSD_Initial();
   0413 C0 02              1185 	push	ar2
   0415 C0 03              1186 	push	ar3
   0417 C0 04              1187 	push	ar4
   0419 C0 05              1188 	push	ar5
   041B C0 07              1189 	push	ar7
   041D C0 00              1190 	push	ar0
   041F C0 01              1191 	push	ar1
   0421 12 01 1A           1192 	lcall	_SSD_Initial
                           1193 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:177: time_initial();
   0424 12 01 8B           1194 	lcall	_time_initial
                           1195 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:178: server_initial();
   0427 12 03 47           1196 	lcall	_server_initial
                           1197 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:179: finish_setup();
   042A 12 03 59           1198 	lcall	_finish_setup
   042D D0 01              1199 	pop	ar1
   042F D0 00              1200 	pop	ar0
   0431 D0 07              1201 	pop	ar7
   0433 D0 05              1202 	pop	ar5
   0435 D0 04              1203 	pop	ar4
   0437 D0 03              1204 	pop	ar3
   0439 D0 02              1205 	pop	ar2
                           1206 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:181: while (1) {
   043B                    1207 00301$:
                           1208 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:182: if (BT_data == '1') {
   043B 74 31              1209 	mov	a,#0x31
   043D B5 22 27           1210 	cjne	a,_BT_data,00104$
                           1211 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:183: server_action(1);
   0440 90 00 01           1212 	mov	dptr,#0x0001
   0443 C0 02              1213 	push	ar2
   0445 C0 03              1214 	push	ar3
   0447 C0 04              1215 	push	ar4
   0449 C0 05              1216 	push	ar5
   044B C0 07              1217 	push	ar7
   044D C0 00              1218 	push	ar0
   044F C0 01              1219 	push	ar1
   0451 12 03 0F           1220 	lcall	_server_action
   0454 D0 01              1221 	pop	ar1
   0456 D0 00              1222 	pop	ar0
   0458 D0 07              1223 	pop	ar7
   045A D0 05              1224 	pop	ar5
   045C D0 04              1225 	pop	ar4
   045E D0 03              1226 	pop	ar3
   0460 D0 02              1227 	pop	ar2
                           1228 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:184: BT_data = ' ';
   0462 75 22 20           1229 	mov	_BT_data,#0x20
   0465 80 2A              1230 	sjmp	00105$
   0467                    1231 00104$:
                           1232 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:185: } else if (BT_data == '2') {
   0467 74 32              1233 	mov	a,#0x32
   0469 B5 22 25           1234 	cjne	a,_BT_data,00105$
                           1235 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:186: server_action(2);
   046C 90 00 02           1236 	mov	dptr,#0x0002
   046F C0 02              1237 	push	ar2
   0471 C0 03              1238 	push	ar3
   0473 C0 04              1239 	push	ar4
   0475 C0 05              1240 	push	ar5
   0477 C0 07              1241 	push	ar7
   0479 C0 00              1242 	push	ar0
   047B C0 01              1243 	push	ar1
   047D 12 03 0F           1244 	lcall	_server_action
   0480 D0 01              1245 	pop	ar1
   0482 D0 00              1246 	pop	ar0
   0484 D0 07              1247 	pop	ar7
   0486 D0 05              1248 	pop	ar5
   0488 D0 04              1249 	pop	ar4
   048A D0 03              1250 	pop	ar3
   048C D0 02              1251 	pop	ar2
                           1252 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:187: BT_data = ' ';
   048E 75 22 20           1253 	mov	_BT_data,#0x20
   0491                    1254 00105$:
                           1255 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:190: if (INT0 == 0 && prebtn0 == 1) {
   0491 30 B2 03           1256 	jnb	_INT0,00399$
   0494 02 05 F1           1257 	ljmp	00141$
   0497                    1258 00399$:
   0497 BA 01 02           1259 	cjne	r2,#0x01,00400$
   049A 80 03              1260 	sjmp	00401$
   049C                    1261 00400$:
   049C 02 05 F1           1262 	ljmp	00141$
   049F                    1263 00401$:
                           1264 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:191: delay_ms(10);
   049F 90 00 0A           1265 	mov	dptr,#0x000A
   04A2 C0 03              1266 	push	ar3
   04A4 C0 04              1267 	push	ar4
   04A6 C0 05              1268 	push	ar5
   04A8 C0 07              1269 	push	ar7
   04AA C0 00              1270 	push	ar0
   04AC C0 01              1271 	push	ar1
   04AE 12 01 70           1272 	lcall	_delay_ms
   04B1 D0 01              1273 	pop	ar1
   04B3 D0 00              1274 	pop	ar0
   04B5 D0 07              1275 	pop	ar7
   04B7 D0 05              1276 	pop	ar5
   04B9 D0 04              1277 	pop	ar4
   04BB D0 03              1278 	pop	ar3
                           1279 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:192: if (INT0 == 0) {
   04BD 30 B2 03           1280 	jnb	_INT0,00402$
   04C0 02 05 F1           1281 	ljmp	00141$
   04C3                    1282 00402$:
                           1283 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:193: if (mode == 1) { // 開燈
   04C3 C0 00              1284 	push	ar0
   04C5 E5 25              1285 	mov	a,_bp
   04C7 24 08              1286 	add	a,#0x08
   04C9 F8                 1287 	mov	r0,a
   04CA B6 01 02           1288 	cjne	@r0,#0x01,00403$
   04CD 80 04              1289 	sjmp	00404$
   04CF                    1290 00403$:
   04CF D0 00              1291 	pop	ar0
   04D1 80 23              1292 	sjmp	00136$
   04D3                    1293 00404$:
   04D3 D0 00              1294 	pop	ar0
                           1295 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:194: server_action(1);
   04D5 90 00 01           1296 	mov	dptr,#0x0001
   04D8 C0 03              1297 	push	ar3
   04DA C0 04              1298 	push	ar4
   04DC C0 05              1299 	push	ar5
   04DE C0 07              1300 	push	ar7
   04E0 C0 00              1301 	push	ar0
   04E2 C0 01              1302 	push	ar1
   04E4 12 03 0F           1303 	lcall	_server_action
   04E7 D0 01              1304 	pop	ar1
   04E9 D0 00              1305 	pop	ar0
   04EB D0 07              1306 	pop	ar7
   04ED D0 05              1307 	pop	ar5
   04EF D0 04              1308 	pop	ar4
   04F1 D0 03              1309 	pop	ar3
   04F3 02 05 F1           1310 	ljmp	00141$
   04F6                    1311 00136$:
                           1312 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:195: } else if (mode == 2) {
   04F6 C0 00              1313 	push	ar0
   04F8 E5 25              1314 	mov	a,_bp
   04FA 24 08              1315 	add	a,#0x08
   04FC F8                 1316 	mov	r0,a
   04FD B6 02 02           1317 	cjne	@r0,#0x02,00405$
   0500 80 04              1318 	sjmp	00406$
   0502                    1319 00405$:
   0502 D0 00              1320 	pop	ar0
   0504 80 6F              1321 	sjmp	00133$
   0506                    1322 00406$:
                           1323 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:196: switch(mode2_change_place) {
   0506 A8 25              1324 	mov	r0,_bp
   0508 08                 1325 	inc	r0
   0509 B6 00 04           1326 	cjne	@r0,#0x00,00407$
   050C D0 00              1327 	pop	ar0
   050E 80 0E              1328 	sjmp	00107$
   0510                    1329 00407$:
   0510 A8 25              1330 	mov	r0,_bp
   0512 08                 1331 	inc	r0
   0513 B6 03 02           1332 	cjne	@r0,#0x03,00408$
   0516 80 04              1333 	sjmp	00409$
   0518                    1334 00408$:
   0518 D0 00              1335 	pop	ar0
   051A 80 2E              1336 	sjmp	00110$
   051C                    1337 00409$:
   051C D0 00              1338 	pop	ar0
                           1339 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:198: case 3:
   051E                    1340 00107$:
                           1341 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:199: if (++open_close_time[mode2_change_place] == 24) {
   051E C0 05              1342 	push	ar5
   0520 C0 01              1343 	push	ar1
   0522 A9 25              1344 	mov	r1,_bp
   0524 09                 1345 	inc	r1
   0525 E7                 1346 	mov	a,@r1
   0526 28                 1347 	add	a,r0
   0527 FA                 1348 	mov	r2,a
   0528 D0 01              1349 	pop	ar1
   052A C0 00              1350 	push	ar0
   052C A8 02              1351 	mov	r0,ar2
   052E 06                 1352 	inc	@r0
   052F 86 05              1353 	mov	ar5,@r0
   0531 D0 00              1354 	pop	ar0
   0533 BD 18 02           1355 	cjne	r5,#0x18,00410$
   0536 80 05              1356 	sjmp	00411$
   0538                    1357 00410$:
   0538 D0 05              1358 	pop	ar5
   053A 02 05 F1           1359 	ljmp	00141$
   053D                    1360 00411$:
   053D D0 05              1361 	pop	ar5
                           1362 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:200: open_close_time[mode2_change_place] = 0;
   053F C0 00              1363 	push	ar0
   0541 A8 02              1364 	mov	r0,ar2
   0543 76 00              1365 	mov	@r0,#0x00
   0545 D0 00              1366 	pop	ar0
                           1367 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:202: break;
   0547 02 05 F1           1368 	ljmp	00141$
                           1369 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:203: default:
   054A                    1370 00110$:
                           1371 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:204: if (++open_close_time[mode2_change_place] == 60) {
   054A C0 05              1372 	push	ar5
   054C C0 01              1373 	push	ar1
   054E A9 25              1374 	mov	r1,_bp
   0550 09                 1375 	inc	r1
   0551 E7                 1376 	mov	a,@r1
   0552 28                 1377 	add	a,r0
   0553 FA                 1378 	mov	r2,a
   0554 D0 01              1379 	pop	ar1
   0556 C0 00              1380 	push	ar0
   0558 A8 02              1381 	mov	r0,ar2
   055A 06                 1382 	inc	@r0
   055B 86 05              1383 	mov	ar5,@r0
   055D D0 00              1384 	pop	ar0
   055F BD 3C 02           1385 	cjne	r5,#0x3C,00412$
   0562 80 05              1386 	sjmp	00413$
   0564                    1387 00412$:
   0564 D0 05              1388 	pop	ar5
   0566 02 05 F1           1389 	ljmp	00141$
   0569                    1390 00413$:
   0569 D0 05              1391 	pop	ar5
                           1392 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:205: open_close_time[mode2_change_place] = 0;
   056B C0 00              1393 	push	ar0
   056D A8 02              1394 	mov	r0,ar2
   056F 76 00              1395 	mov	@r0,#0x00
   0571 D0 00              1396 	pop	ar0
                           1397 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:207: }
   0573 80 7C              1398 	sjmp	00141$
   0575                    1399 00133$:
                           1400 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:208: } else if (mode == 3) {
   0575 C0 00              1401 	push	ar0
   0577 E5 25              1402 	mov	a,_bp
   0579 24 08              1403 	add	a,#0x08
   057B F8                 1404 	mov	r0,a
   057C B6 03 04           1405 	cjne	@r0,#0x03,00414$
   057F D0 00              1406 	pop	ar0
   0581 80 6E              1407 	sjmp	00141$
   0583                    1408 00414$:
                           1409 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:210: } else if (mode == 4) {
   0583 E5 25              1410 	mov	a,_bp
   0585 24 08              1411 	add	a,#0x08
   0587 F8                 1412 	mov	r0,a
   0588 B6 04 02           1413 	cjne	@r0,#0x04,00415$
   058B 80 04              1414 	sjmp	00416$
   058D                    1415 00415$:
   058D D0 00              1416 	pop	ar0
   058F 80 46              1417 	sjmp	00127$
   0591                    1418 00416$:
   0591 D0 00              1419 	pop	ar0
                           1420 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:211: switch (change_time) {
   0593 E4                 1421 	clr	a
   0594 B5 21 02           1422 	cjne	a,_change_time,00417$
   0597 80 0E              1423 	sjmp	00114$
   0599                    1424 00417$:
   0599 74 01              1425 	mov	a,#0x01
   059B B5 21 02           1426 	cjne	a,_change_time,00418$
   059E 80 17              1427 	sjmp	00117$
   05A0                    1428 00418$:
   05A0 74 02              1429 	mov	a,#0x02
                           1430 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:212: case 0:
   05A2 B5 21 4C           1431 	cjne	a,_change_time,00141$
   05A5 80 20              1432 	sjmp	00120$
   05A7                    1433 00114$:
                           1434 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:213: if (++T_hour >= 24) {
   05A7 05 1C              1435 	inc	_T_hour
   05A9 C3                 1436 	clr	c
   05AA E5 1C              1437 	mov	a,_T_hour
   05AC 64 80              1438 	xrl	a,#0x80
   05AE 94 98              1439 	subb	a,#0x98
   05B0 40 3F              1440 	jc	00141$
                           1441 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:214: T_hour = 0;
   05B2 75 1C 00           1442 	mov	_T_hour,#0x00
                           1443 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:216: break;
                           1444 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:217: case 1:
   05B5 80 3A              1445 	sjmp	00141$
   05B7                    1446 00117$:
                           1447 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:218: if (++T_min >= 60) {
   05B7 05 1D              1448 	inc	_T_min
   05B9 C3                 1449 	clr	c
   05BA E5 1D              1450 	mov	a,_T_min
   05BC 64 80              1451 	xrl	a,#0x80
   05BE 94 BC              1452 	subb	a,#0xbc
   05C0 40 2F              1453 	jc	00141$
                           1454 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:219: T_min = 0;
   05C2 75 1D 00           1455 	mov	_T_min,#0x00
                           1456 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:221: break;
                           1457 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:222: case 2:
   05C5 80 2A              1458 	sjmp	00141$
   05C7                    1459 00120$:
                           1460 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:223: if (++T_sec >= 60) {
   05C7 05 1E              1461 	inc	_T_sec
   05C9 C3                 1462 	clr	c
   05CA E5 1E              1463 	mov	a,_T_sec
   05CC 64 80              1464 	xrl	a,#0x80
   05CE 94 BC              1465 	subb	a,#0xbc
   05D0 40 1F              1466 	jc	00141$
                           1467 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:224: T_sec = 0;
   05D2 75 1E 00           1468 	mov	_T_sec,#0x00
                           1469 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:226: }
   05D5 80 1A              1470 	sjmp	00141$
   05D7                    1471 00127$:
                           1472 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:227: } else if (mode == 5) {
   05D7 C0 00              1473 	push	ar0
   05D9 E5 25              1474 	mov	a,_bp
   05DB 24 08              1475 	add	a,#0x08
   05DD F8                 1476 	mov	r0,a
   05DE B6 05 02           1477 	cjne	@r0,#0x05,00423$
   05E1 80 04              1478 	sjmp	00424$
   05E3                    1479 00423$:
   05E3 D0 00              1480 	pop	ar0
   05E5 80 0A              1481 	sjmp	00141$
   05E7                    1482 00424$:
   05E7 D0 00              1483 	pop	ar0
                           1484 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:228: ms1++; // if time go too fast, then add ms1 to correct;
   05E9 05 1A              1485 	inc	_ms1
   05EB E4                 1486 	clr	a
   05EC B5 1A 02           1487 	cjne	a,_ms1,00425$
   05EF 05 1B              1488 	inc	(_ms1 + 1)
   05F1                    1489 00425$:
   05F1                    1490 00141$:
                           1491 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:232: if (INT1 == 0 && prebtn1 == 1) {
   05F1 30 B3 03           1492 	jnb	_INT1,00426$
   05F4 02 07 3F           1493 	ljmp	00182$
   05F7                    1494 00426$:
   05F7 BB 01 02           1495 	cjne	r3,#0x01,00427$
   05FA 80 03              1496 	sjmp	00428$
   05FC                    1497 00427$:
   05FC 02 07 3F           1498 	ljmp	00182$
   05FF                    1499 00428$:
                           1500 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:233: delay_ms(10);
   05FF 90 00 0A           1501 	mov	dptr,#0x000A
   0602 C0 04              1502 	push	ar4
   0604 C0 05              1503 	push	ar5
   0606 C0 07              1504 	push	ar7
   0608 C0 00              1505 	push	ar0
   060A C0 01              1506 	push	ar1
   060C 12 01 70           1507 	lcall	_delay_ms
   060F D0 01              1508 	pop	ar1
   0611 D0 00              1509 	pop	ar0
   0613 D0 07              1510 	pop	ar7
   0615 D0 05              1511 	pop	ar5
   0617 D0 04              1512 	pop	ar4
                           1513 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:234: if (INT1 == 0) {
   0619 30 B3 03           1514 	jnb	_INT1,00429$
   061C 02 07 3F           1515 	ljmp	00182$
   061F                    1516 00429$:
                           1517 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:235: if (mode == 1) {
   061F C0 00              1518 	push	ar0
   0621 E5 25              1519 	mov	a,_bp
   0623 24 08              1520 	add	a,#0x08
   0625 F8                 1521 	mov	r0,a
   0626 B6 01 02           1522 	cjne	@r0,#0x01,00430$
   0629 80 04              1523 	sjmp	00431$
   062B                    1524 00430$:
   062B D0 00              1525 	pop	ar0
   062D 80 1F              1526 	sjmp	00177$
   062F                    1527 00431$:
   062F D0 00              1528 	pop	ar0
                           1529 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:236: server_action(2);
   0631 90 00 02           1530 	mov	dptr,#0x0002
   0634 C0 04              1531 	push	ar4
   0636 C0 05              1532 	push	ar5
   0638 C0 07              1533 	push	ar7
   063A C0 00              1534 	push	ar0
   063C C0 01              1535 	push	ar1
   063E 12 03 0F           1536 	lcall	_server_action
   0641 D0 01              1537 	pop	ar1
   0643 D0 00              1538 	pop	ar0
   0645 D0 07              1539 	pop	ar7
   0647 D0 05              1540 	pop	ar5
   0649 D0 04              1541 	pop	ar4
   064B 02 07 3F           1542 	ljmp	00182$
   064E                    1543 00177$:
                           1544 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:237: } else if (mode == 2) {
   064E C0 00              1545 	push	ar0
   0650 E5 25              1546 	mov	a,_bp
   0652 24 08              1547 	add	a,#0x08
   0654 F8                 1548 	mov	r0,a
   0655 B6 02 02           1549 	cjne	@r0,#0x02,00432$
   0658 80 04              1550 	sjmp	00433$
   065A                    1551 00432$:
   065A D0 00              1552 	pop	ar0
   065C 80 76              1553 	sjmp	00174$
   065E                    1554 00433$:
                           1555 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:238: switch(mode2_change_place) {
   065E A8 25              1556 	mov	r0,_bp
   0660 08                 1557 	inc	r0
   0661 B6 00 04           1558 	cjne	@r0,#0x00,00434$
   0664 D0 00              1559 	pop	ar0
   0666 80 0E              1560 	sjmp	00144$
   0668                    1561 00434$:
   0668 A8 25              1562 	mov	r0,_bp
   066A 08                 1563 	inc	r0
   066B B6 03 02           1564 	cjne	@r0,#0x03,00435$
   066E 80 04              1565 	sjmp	00436$
   0670                    1566 00435$:
   0670 D0 00              1567 	pop	ar0
   0672 80 33              1568 	sjmp	00147$
   0674                    1569 00436$:
   0674 D0 00              1570 	pop	ar0
                           1571 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:240: case 3:
   0676                    1572 00144$:
                           1573 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:241: if (--open_close_time[mode2_change_place] <= 0) {
   0676 C0 05              1574 	push	ar5
   0678 C0 01              1575 	push	ar1
   067A A9 25              1576 	mov	r1,_bp
   067C 09                 1577 	inc	r1
   067D E7                 1578 	mov	a,@r1
   067E 28                 1579 	add	a,r0
   067F FA                 1580 	mov	r2,a
   0680 D0 01              1581 	pop	ar1
   0682 C0 00              1582 	push	ar0
   0684 A8 02              1583 	mov	r0,ar2
   0686 16                 1584 	dec	@r0
   0687 86 05              1585 	mov	ar5,@r0
   0689 D0 00              1586 	pop	ar0
   068B C3                 1587 	clr	c
   068C 74 80              1588 	mov	a,#(0x00 ^ 0x80)
   068E 8D F0              1589 	mov	b,r5
   0690 63 F0 80           1590 	xrl	b,#0x80
   0693 95 F0              1591 	subb	a,b
   0695 D0 05              1592 	pop	ar5
   0697 50 03              1593 	jnc	00437$
   0699 02 07 3F           1594 	ljmp	00182$
   069C                    1595 00437$:
                           1596 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:242: open_close_time[mode2_change_place] = 23;
   069C C0 00              1597 	push	ar0
   069E A8 02              1598 	mov	r0,ar2
   06A0 76 17              1599 	mov	@r0,#0x17
   06A2 D0 00              1600 	pop	ar0
                           1601 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:244: break;
   06A4 02 07 3F           1602 	ljmp	00182$
                           1603 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:245: default:
   06A7                    1604 00147$:
                           1605 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:246: if (--open_close_time[mode2_change_place] <= 0) {
   06A7 C0 05              1606 	push	ar5
   06A9 C0 01              1607 	push	ar1
   06AB A9 25              1608 	mov	r1,_bp
   06AD 09                 1609 	inc	r1
   06AE E7                 1610 	mov	a,@r1
   06AF 28                 1611 	add	a,r0
   06B0 FA                 1612 	mov	r2,a
   06B1 D0 01              1613 	pop	ar1
   06B3 C0 00              1614 	push	ar0
   06B5 A8 02              1615 	mov	r0,ar2
   06B7 16                 1616 	dec	@r0
   06B8 86 05              1617 	mov	ar5,@r0
   06BA D0 00              1618 	pop	ar0
   06BC C3                 1619 	clr	c
   06BD 74 80              1620 	mov	a,#(0x00 ^ 0x80)
   06BF 8D F0              1621 	mov	b,r5
   06C1 63 F0 80           1622 	xrl	b,#0x80
   06C4 95 F0              1623 	subb	a,b
   06C6 D0 05              1624 	pop	ar5
   06C8 40 75              1625 	jc	00182$
                           1626 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:247: open_close_time[mode2_change_place] = 59;
   06CA C0 00              1627 	push	ar0
   06CC A8 02              1628 	mov	r0,ar2
   06CE 76 3B              1629 	mov	@r0,#0x3B
   06D0 D0 00              1630 	pop	ar0
                           1631 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:249: }
   06D2 80 6B              1632 	sjmp	00182$
   06D4                    1633 00174$:
                           1634 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:250: } else if (mode == 3) {
   06D4 C0 00              1635 	push	ar0
   06D6 E5 25              1636 	mov	a,_bp
   06D8 24 08              1637 	add	a,#0x08
   06DA F8                 1638 	mov	r0,a
   06DB B6 03 04           1639 	cjne	@r0,#0x03,00439$
   06DE D0 00              1640 	pop	ar0
   06E0 80 5D              1641 	sjmp	00182$
   06E2                    1642 00439$:
                           1643 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:252: } else if (mode == 4) {
   06E2 E5 25              1644 	mov	a,_bp
   06E4 24 08              1645 	add	a,#0x08
   06E6 F8                 1646 	mov	r0,a
   06E7 B6 04 02           1647 	cjne	@r0,#0x04,00440$
   06EA 80 04              1648 	sjmp	00441$
   06EC                    1649 00440$:
   06EC D0 00              1650 	pop	ar0
   06EE 80 34              1651 	sjmp	00168$
   06F0                    1652 00441$:
   06F0 D0 00              1653 	pop	ar0
                           1654 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:253: if (change_time == 0) {
   06F2 E5 21              1655 	mov	a,_change_time
   06F4 70 0C              1656 	jnz	00163$
                           1657 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:254: if (--T_hour < 0) {
   06F6 15 1C              1658 	dec	_T_hour
   06F8 E5 1C              1659 	mov	a,_T_hour
   06FA 30 E7 42           1660 	jnb	acc.7,00182$
                           1661 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:255: T_hour = 23;
   06FD 75 1C 17           1662 	mov	_T_hour,#0x17
   0700 80 3D              1663 	sjmp	00182$
   0702                    1664 00163$:
                           1665 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:257: } else if (change_time == 1) {
   0702 74 01              1666 	mov	a,#0x01
   0704 B5 21 0C           1667 	cjne	a,_change_time,00160$
                           1668 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:258: if (--T_min < 0) {
   0707 15 1D              1669 	dec	_T_min
   0709 E5 1D              1670 	mov	a,_T_min
   070B 30 E7 31           1671 	jnb	acc.7,00182$
                           1672 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:259: T_min = 59;
   070E 75 1D 3B           1673 	mov	_T_min,#0x3B
   0711 80 2C              1674 	sjmp	00182$
   0713                    1675 00160$:
                           1676 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:261: } else if (change_time == 2) {
   0713 74 02              1677 	mov	a,#0x02
   0715 B5 21 27           1678 	cjne	a,_change_time,00182$
                           1679 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:262: if (--T_sec < 0) {
   0718 15 1E              1680 	dec	_T_sec
   071A E5 1E              1681 	mov	a,_T_sec
   071C 30 E7 20           1682 	jnb	acc.7,00182$
                           1683 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:263: T_sec = 59;
   071F 75 1E 3B           1684 	mov	_T_sec,#0x3B
   0722 80 1B              1685 	sjmp	00182$
   0724                    1686 00168$:
                           1687 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:266: } else if (mode == 5) {
   0724 C0 00              1688 	push	ar0
   0726 E5 25              1689 	mov	a,_bp
   0728 24 08              1690 	add	a,#0x08
   072A F8                 1691 	mov	r0,a
   072B B6 05 02           1692 	cjne	@r0,#0x05,00450$
   072E 80 04              1693 	sjmp	00451$
   0730                    1694 00450$:
   0730 D0 00              1695 	pop	ar0
   0732 80 0B              1696 	sjmp	00182$
   0734                    1697 00451$:
   0734 D0 00              1698 	pop	ar0
                           1699 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:267: ms1--; // if time go to slow substract to correct
   0736 15 1A              1700 	dec	_ms1
   0738 74 FF              1701 	mov	a,#0xff
   073A B5 1A 02           1702 	cjne	a,_ms1,00452$
   073D 15 1B              1703 	dec	(_ms1 + 1)
   073F                    1704 00452$:
   073F                    1705 00182$:
                           1706 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:271: if (P2_0 == 0 && prebtn2 == 1) {
   073F 30 A0 03           1707 	jnb	_P2_0,00453$
   0742 02 07 EE           1708 	ljmp	00201$
   0745                    1709 00453$:
   0745 BC 01 02           1710 	cjne	r4,#0x01,00454$
   0748 80 03              1711 	sjmp	00455$
   074A                    1712 00454$:
   074A 02 07 EE           1713 	ljmp	00201$
   074D                    1714 00455$:
                           1715 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:272: delay_ms(10);
   074D 90 00 0A           1716 	mov	dptr,#0x000A
   0750 C0 05              1717 	push	ar5
   0752 C0 07              1718 	push	ar7
   0754 C0 00              1719 	push	ar0
   0756 C0 01              1720 	push	ar1
   0758 12 01 70           1721 	lcall	_delay_ms
   075B D0 01              1722 	pop	ar1
   075D D0 00              1723 	pop	ar0
   075F D0 07              1724 	pop	ar7
   0761 D0 05              1725 	pop	ar5
                           1726 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:273: if (P2_0 == 0) {
   0763 30 A0 03           1727 	jnb	_P2_0,00456$
   0766 02 07 EE           1728 	ljmp	00201$
   0769                    1729 00456$:
                           1730 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:274: if (mode == 1) {
   0769 C0 00              1731 	push	ar0
   076B E5 25              1732 	mov	a,_bp
   076D 24 08              1733 	add	a,#0x08
   076F F8                 1734 	mov	r0,a
   0770 B6 01 02           1735 	cjne	@r0,#0x01,00457$
   0773 80 04              1736 	sjmp	00458$
   0775                    1737 00457$:
   0775 D0 00              1738 	pop	ar0
   0777 80 0B              1739 	sjmp	00196$
   0779                    1740 00458$:
                           1741 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:275: mode = 2;
   0779 E5 25              1742 	mov	a,_bp
   077B 24 08              1743 	add	a,#0x08
   077D F8                 1744 	mov	r0,a
   077E 76 02              1745 	mov	@r0,#0x02
   0780 D0 00              1746 	pop	ar0
   0782 80 6A              1747 	sjmp	00201$
   0784                    1748 00196$:
                           1749 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:276: } else if (mode == 2) {
   0784 C0 00              1750 	push	ar0
   0786 E5 25              1751 	mov	a,_bp
   0788 24 08              1752 	add	a,#0x08
   078A F8                 1753 	mov	r0,a
   078B B6 02 02           1754 	cjne	@r0,#0x02,00459$
   078E 80 04              1755 	sjmp	00460$
   0790                    1756 00459$:
   0790 D0 00              1757 	pop	ar0
   0792 80 0B              1758 	sjmp	00193$
   0794                    1759 00460$:
                           1760 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:277: mode = 3;
   0794 E5 25              1761 	mov	a,_bp
   0796 24 08              1762 	add	a,#0x08
   0798 F8                 1763 	mov	r0,a
   0799 76 03              1764 	mov	@r0,#0x03
   079B D0 00              1765 	pop	ar0
   079D 80 4F              1766 	sjmp	00201$
   079F                    1767 00193$:
                           1768 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:278: } else if (mode == 3) {
   079F C0 00              1769 	push	ar0
   07A1 E5 25              1770 	mov	a,_bp
   07A3 24 08              1771 	add	a,#0x08
   07A5 F8                 1772 	mov	r0,a
   07A6 B6 03 02           1773 	cjne	@r0,#0x03,00461$
   07A9 80 04              1774 	sjmp	00462$
   07AB                    1775 00461$:
   07AB D0 00              1776 	pop	ar0
   07AD 80 0B              1777 	sjmp	00190$
   07AF                    1778 00462$:
                           1779 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:279: mode = 4;
   07AF E5 25              1780 	mov	a,_bp
   07B1 24 08              1781 	add	a,#0x08
   07B3 F8                 1782 	mov	r0,a
   07B4 76 04              1783 	mov	@r0,#0x04
   07B6 D0 00              1784 	pop	ar0
   07B8 80 34              1785 	sjmp	00201$
   07BA                    1786 00190$:
                           1787 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:280: } else if (mode == 4) {
   07BA C0 00              1788 	push	ar0
   07BC E5 25              1789 	mov	a,_bp
   07BE 24 08              1790 	add	a,#0x08
   07C0 F8                 1791 	mov	r0,a
   07C1 B6 04 02           1792 	cjne	@r0,#0x04,00463$
   07C4 80 04              1793 	sjmp	00464$
   07C6                    1794 00463$:
   07C6 D0 00              1795 	pop	ar0
   07C8 80 0B              1796 	sjmp	00187$
   07CA                    1797 00464$:
                           1798 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:281: mode = 5;
   07CA E5 25              1799 	mov	a,_bp
   07CC 24 08              1800 	add	a,#0x08
   07CE F8                 1801 	mov	r0,a
   07CF 76 05              1802 	mov	@r0,#0x05
   07D1 D0 00              1803 	pop	ar0
   07D3 80 19              1804 	sjmp	00201$
   07D5                    1805 00187$:
                           1806 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:282: } else if (mode == 5) {
   07D5 C0 00              1807 	push	ar0
   07D7 E5 25              1808 	mov	a,_bp
   07D9 24 08              1809 	add	a,#0x08
   07DB F8                 1810 	mov	r0,a
   07DC B6 05 02           1811 	cjne	@r0,#0x05,00465$
   07DF 80 04              1812 	sjmp	00466$
   07E1                    1813 00465$:
   07E1 D0 00              1814 	pop	ar0
   07E3 80 09              1815 	sjmp	00201$
   07E5                    1816 00466$:
                           1817 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:283: mode = 1;
   07E5 E5 25              1818 	mov	a,_bp
   07E7 24 08              1819 	add	a,#0x08
   07E9 F8                 1820 	mov	r0,a
   07EA 76 01              1821 	mov	@r0,#0x01
   07EC D0 00              1822 	pop	ar0
   07EE                    1823 00201$:
                           1824 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:287: if (P2_1 == 0 && prebtn3 == 1) {
   07EE 20 A1 75           1825 	jb	_P2_1,00221$
   07F1 BD 01 72           1826 	cjne	r5,#0x01,00221$
                           1827 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:288: delay_ms(10);
   07F4 90 00 0A           1828 	mov	dptr,#0x000A
   07F7 C0 07              1829 	push	ar7
   07F9 C0 00              1830 	push	ar0
   07FB C0 01              1831 	push	ar1
   07FD 12 01 70           1832 	lcall	_delay_ms
   0800 D0 01              1833 	pop	ar1
   0802 D0 00              1834 	pop	ar0
   0804 D0 07              1835 	pop	ar7
                           1836 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:289: if (P2_1 == 0) {
   0806 20 A1 5D           1837 	jb	_P2_1,00221$
                           1838 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:290: if (mode == 1) {
   0809 C0 00              1839 	push	ar0
   080B E5 25              1840 	mov	a,_bp
   080D 24 08              1841 	add	a,#0x08
   080F F8                 1842 	mov	r0,a
   0810 B6 01 04           1843 	cjne	@r0,#0x01,00471$
   0813 D0 00              1844 	pop	ar0
   0815 80 4F              1845 	sjmp	00221$
   0817                    1846 00471$:
                           1847 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:292: } else if (mode == 2) {
   0817 E5 25              1848 	mov	a,_bp
   0819 24 08              1849 	add	a,#0x08
   081B F8                 1850 	mov	r0,a
   081C B6 02 02           1851 	cjne	@r0,#0x02,00472$
   081F 80 04              1852 	sjmp	00473$
   0821                    1853 00472$:
   0821 D0 00              1854 	pop	ar0
   0823 80 19              1855 	sjmp	00213$
   0825                    1856 00473$:
                           1857 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:293: if (++mode2_change_place == 6) {
   0825 A8 25              1858 	mov	r0,_bp
   0827 08                 1859 	inc	r0
   0828 06                 1860 	inc	@r0
   0829 A8 25              1861 	mov	r0,_bp
   082B 08                 1862 	inc	r0
   082C B6 06 02           1863 	cjne	@r0,#0x06,00474$
   082F 80 04              1864 	sjmp	00475$
   0831                    1865 00474$:
   0831 D0 00              1866 	pop	ar0
   0833 80 31              1867 	sjmp	00221$
   0835                    1868 00475$:
                           1869 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:294: mode2_change_place = 0;
   0835 A8 25              1870 	mov	r0,_bp
   0837 08                 1871 	inc	r0
   0838 76 00              1872 	mov	@r0,#0x00
   083A D0 00              1873 	pop	ar0
   083C 80 28              1874 	sjmp	00221$
   083E                    1875 00213$:
                           1876 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:296: } else if (mode == 3) {
   083E C0 00              1877 	push	ar0
   0840 E5 25              1878 	mov	a,_bp
   0842 24 08              1879 	add	a,#0x08
   0844 F8                 1880 	mov	r0,a
   0845 B6 03 04           1881 	cjne	@r0,#0x03,00476$
   0848 D0 00              1882 	pop	ar0
   084A 80 1A              1883 	sjmp	00221$
   084C                    1884 00476$:
                           1885 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:298: } else if (mode == 4) {
   084C E5 25              1886 	mov	a,_bp
   084E 24 08              1887 	add	a,#0x08
   0850 F8                 1888 	mov	r0,a
   0851 B6 04 02           1889 	cjne	@r0,#0x04,00477$
   0854 80 04              1890 	sjmp	00478$
   0856                    1891 00477$:
   0856 D0 00              1892 	pop	ar0
   0858 80 0C              1893 	sjmp	00221$
   085A                    1894 00478$:
   085A D0 00              1895 	pop	ar0
                           1896 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:299: if (++change_time == 3) {
   085C 05 21              1897 	inc	_change_time
   085E 74 03              1898 	mov	a,#0x03
   0860 B5 21 03           1899 	cjne	a,_change_time,00221$
                           1900 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:300: change_time = 0;
   0863 75 21 00           1901 	mov	_change_time,#0x00
   0866                    1902 00221$:
                           1903 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:307: if (mode == 1) { // 一般模式
   0866 C0 00              1904 	push	ar0
   0868 E5 25              1905 	mov	a,_bp
   086A 24 08              1906 	add	a,#0x08
   086C F8                 1907 	mov	r0,a
   086D B6 01 02           1908 	cjne	@r0,#0x01,00481$
   0870 80 04              1909 	sjmp	00482$
   0872                    1910 00481$:
   0872 D0 00              1911 	pop	ar0
   0874 80 49              1912 	sjmp	00298$
   0876                    1913 00482$:
   0876 D0 00              1914 	pop	ar0
                           1915 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:308: for (i = 2; i <= 8; i++) {
   0878 75 24 02           1916 	mov	_i,#0x02
   087B                    1917 00303$:
   087B C3                 1918 	clr	c
   087C 74 88              1919 	mov	a,#(0x08 ^ 0x80)
   087E 85 24 F0           1920 	mov	b,_i
   0881 63 F0 80           1921 	xrl	b,#0x80
   0884 95 F0              1922 	subb	a,b
   0886 40 1C              1923 	jc	00306$
                           1924 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:309: Write7219(i, 0x0f);
   0888 85 24 82           1925 	mov	dpl,_i
   088B C0 07              1926 	push	ar7
   088D C0 00              1927 	push	ar0
   088F C0 01              1928 	push	ar1
   0891 74 0F              1929 	mov	a,#0x0F
   0893 C0 E0              1930 	push	acc
   0895 12 00 F1           1931 	lcall	_Write7219
   0898 15 81              1932 	dec	sp
   089A D0 01              1933 	pop	ar1
   089C D0 00              1934 	pop	ar0
   089E D0 07              1935 	pop	ar7
                           1936 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:308: for (i = 2; i <= 8; i++) {
   08A0 05 24              1937 	inc	_i
   08A2 80 D7              1938 	sjmp	00303$
   08A4                    1939 00306$:
                           1940 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:311: Write7219(1, 1);
   08A4 C0 07              1941 	push	ar7
   08A6 C0 00              1942 	push	ar0
   08A8 C0 01              1943 	push	ar1
   08AA 74 01              1944 	mov	a,#0x01
   08AC C0 E0              1945 	push	acc
   08AE 75 82 01           1946 	mov	dpl,#0x01
   08B1 12 00 F1           1947 	lcall	_Write7219
   08B4 15 81              1948 	dec	sp
   08B6 D0 01              1949 	pop	ar1
   08B8 D0 00              1950 	pop	ar0
   08BA D0 07              1951 	pop	ar7
   08BC 02 1A D4           1952 	ljmp	00299$
   08BF                    1953 00298$:
                           1954 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:312: } else if (mode == 2) { // 設定自動時間模式
   08BF C0 00              1955 	push	ar0
   08C1 E5 25              1956 	mov	a,_bp
   08C3 24 08              1957 	add	a,#0x08
   08C5 F8                 1958 	mov	r0,a
   08C6 B6 02 02           1959 	cjne	@r0,#0x02,00484$
   08C9 80 05              1960 	sjmp	00485$
   08CB                    1961 00484$:
   08CB D0 00              1962 	pop	ar0
   08CD 02 12 87           1963 	ljmp	00295$
   08D0                    1964 00485$:
                           1965 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:313: if (mode2_change_place < 3) {
   08D0 A8 25              1966 	mov	r0,_bp
   08D2 08                 1967 	inc	r0
   08D3 C3                 1968 	clr	c
   08D4 E6                 1969 	mov	a,@r0
   08D5 64 80              1970 	xrl	a,#0x80
   08D7 94 83              1971 	subb	a,#0x83
   08D9 D0 00              1972 	pop	ar0
   08DB 40 03              1973 	jc	00486$
   08DD 02 0D 19           1974 	ljmp	00258$
   08E0                    1975 00486$:
                           1976 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:314: if (mode2_change_place == 0) {
   08E0 C0 00              1977 	push	ar0
   08E2 A8 25              1978 	mov	r0,_bp
   08E4 08                 1979 	inc	r0
   08E5 E6                 1980 	mov	a,@r0
   08E6 D0 00              1981 	pop	ar0
   08E8 60 03              1982 	jz	00487$
   08EA 02 0A 43           1983 	ljmp	00238$
   08ED                    1984 00487$:
                           1985 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:315: if (time_count >= 500) {
   08ED C3                 1986 	clr	c
   08EE E5 18              1987 	mov	a,_time_count
   08F0 94 F4              1988 	subb	a,#0xF4
   08F2 E5 19              1989 	mov	a,(_time_count + 1)
   08F4 94 01              1990 	subb	a,#0x01
   08F6 40 60              1991 	jc	00224$
                           1992 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:316: Write7219(8, open_close_time[0] / 10);
   08F8 C0 07              1993 	push	ar7
   08FA 86 07              1994 	mov	ar7,@r0
   08FC C2 D5              1995 	clr	F0
   08FE 75 F0 0A           1996 	mov	b,#0x0a
   0901 EF                 1997 	mov	a,r7
   0902 30 E7 04           1998 	jnb	acc.7,00489$
   0905 B2 D5              1999 	cpl	F0
   0907 F4                 2000 	cpl	a
   0908 04                 2001 	inc	a
   0909                    2002 00489$:
   0909 84                 2003 	div	ab
   090A 30 D5 02           2004 	jnb	F0,00490$
   090D F4                 2005 	cpl	a
   090E 04                 2006 	inc	a
   090F                    2007 00490$:
   090F FF                 2008 	mov	r7,a
   0910 C0 07              2009 	push	ar7
   0912 C0 00              2010 	push	ar0
   0914 C0 01              2011 	push	ar1
   0916 C0 07              2012 	push	ar7
   0918 75 82 08           2013 	mov	dpl,#0x08
   091B 12 00 F1           2014 	lcall	_Write7219
   091E 15 81              2015 	dec	sp
   0920 D0 01              2016 	pop	ar1
   0922 D0 00              2017 	pop	ar0
   0924 D0 07              2018 	pop	ar7
                           2019 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:317: Write7219(7, open_close_time[0] % 10); 
   0926 86 07              2020 	mov	ar7,@r0
   0928 75 F0 0A           2021 	mov	b,#0x0a
   092B EF                 2022 	mov	a,r7
   092C C2 D5              2023 	clr	F0
   092E 30 E7 04           2024 	jnb	acc.7,00491$
   0931 D2 D5              2025 	setb	F0
   0933 F4                 2026 	cpl	a
   0934 04                 2027 	inc	a
   0935                    2028 00491$:
   0935 84                 2029 	div	ab
   0936 E5 F0              2030 	mov	a,b
   0938 30 D5 02           2031 	jnb	F0,00492$
   093B F4                 2032 	cpl	a
   093C 04                 2033 	inc	a
   093D                    2034 00492$:
   093D FF                 2035 	mov	r7,a
   093E C0 07              2036 	push	ar7
   0940 C0 00              2037 	push	ar0
   0942 C0 01              2038 	push	ar1
   0944 C0 07              2039 	push	ar7
   0946 75 82 07           2040 	mov	dpl,#0x07
   0949 12 00 F1           2041 	lcall	_Write7219
   094C 15 81              2042 	dec	sp
   094E D0 01              2043 	pop	ar1
   0950 D0 00              2044 	pop	ar0
   0952 D0 07              2045 	pop	ar7
   0954 D0 07              2046 	pop	ar7
   0956 80 24              2047 	sjmp	00225$
   0958                    2048 00224$:
                           2049 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:319: Write7219(8, 0x0f);
   0958 C0 07              2050 	push	ar7
   095A C0 00              2051 	push	ar0
   095C C0 01              2052 	push	ar1
   095E 74 0F              2053 	mov	a,#0x0F
   0960 C0 E0              2054 	push	acc
   0962 75 82 08           2055 	mov	dpl,#0x08
   0965 12 00 F1           2056 	lcall	_Write7219
   0968 15 81              2057 	dec	sp
                           2058 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:320: Write7219(7, 0x0f); 
   096A 74 0F              2059 	mov	a,#0x0F
   096C C0 E0              2060 	push	acc
   096E 75 82 07           2061 	mov	dpl,#0x07
   0971 12 00 F1           2062 	lcall	_Write7219
   0974 15 81              2063 	dec	sp
   0976 D0 01              2064 	pop	ar1
   0978 D0 00              2065 	pop	ar0
   097A D0 07              2066 	pop	ar7
   097C                    2067 00225$:
                           2068 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:322: Write7219(6, open_close_time[1] / 10);
   097C C0 00              2069 	push	ar0
   097E 87 06              2070 	mov	ar6,@r1
   0980 C2 D5              2071 	clr	F0
   0982 75 F0 0A           2072 	mov	b,#0x0a
   0985 EE                 2073 	mov	a,r6
   0986 30 E7 04           2074 	jnb	acc.7,00493$
   0989 B2 D5              2075 	cpl	F0
   098B F4                 2076 	cpl	a
   098C 04                 2077 	inc	a
   098D                    2078 00493$:
   098D 84                 2079 	div	ab
   098E 30 D5 02           2080 	jnb	F0,00494$
   0991 F4                 2081 	cpl	a
   0992 04                 2082 	inc	a
   0993                    2083 00494$:
   0993 FE                 2084 	mov	r6,a
   0994 C0 07              2085 	push	ar7
   0996 C0 00              2086 	push	ar0
   0998 C0 01              2087 	push	ar1
   099A C0 06              2088 	push	ar6
   099C 75 82 06           2089 	mov	dpl,#0x06
   099F 12 00 F1           2090 	lcall	_Write7219
   09A2 15 81              2091 	dec	sp
   09A4 D0 01              2092 	pop	ar1
   09A6 D0 00              2093 	pop	ar0
   09A8 D0 07              2094 	pop	ar7
                           2095 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:323: Write7219(5, open_close_time[1] % 10);
   09AA 87 06              2096 	mov	ar6,@r1
   09AC 75 F0 0A           2097 	mov	b,#0x0a
   09AF EE                 2098 	mov	a,r6
   09B0 C2 D5              2099 	clr	F0
   09B2 30 E7 04           2100 	jnb	acc.7,00495$
   09B5 D2 D5              2101 	setb	F0
   09B7 F4                 2102 	cpl	a
   09B8 04                 2103 	inc	a
   09B9                    2104 00495$:
   09B9 84                 2105 	div	ab
   09BA E5 F0              2106 	mov	a,b
   09BC 30 D5 02           2107 	jnb	F0,00496$
   09BF F4                 2108 	cpl	a
   09C0 04                 2109 	inc	a
   09C1                    2110 00496$:
   09C1 FE                 2111 	mov	r6,a
   09C2 C0 07              2112 	push	ar7
   09C4 C0 00              2113 	push	ar0
   09C6 C0 01              2114 	push	ar1
   09C8 C0 06              2115 	push	ar6
   09CA 75 82 05           2116 	mov	dpl,#0x05
   09CD 12 00 F1           2117 	lcall	_Write7219
   09D0 15 81              2118 	dec	sp
   09D2 D0 01              2119 	pop	ar1
   09D4 D0 00              2120 	pop	ar0
   09D6 D0 07              2121 	pop	ar7
                           2122 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:324: Write7219(4, open_close_time[2] / 10);
   09D8 C0 00              2123 	push	ar0
   09DA A8 07              2124 	mov	r0,ar7
   09DC 86 06              2125 	mov	ar6,@r0
   09DE D0 00              2126 	pop	ar0
   09E0 C2 D5              2127 	clr	F0
   09E2 75 F0 0A           2128 	mov	b,#0x0a
   09E5 EE                 2129 	mov	a,r6
   09E6 30 E7 04           2130 	jnb	acc.7,00497$
   09E9 B2 D5              2131 	cpl	F0
   09EB F4                 2132 	cpl	a
   09EC 04                 2133 	inc	a
   09ED                    2134 00497$:
   09ED 84                 2135 	div	ab
   09EE 30 D5 02           2136 	jnb	F0,00498$
   09F1 F4                 2137 	cpl	a
   09F2 04                 2138 	inc	a
   09F3                    2139 00498$:
   09F3 FE                 2140 	mov	r6,a
   09F4 C0 07              2141 	push	ar7
   09F6 C0 00              2142 	push	ar0
   09F8 C0 01              2143 	push	ar1
   09FA C0 06              2144 	push	ar6
   09FC 75 82 04           2145 	mov	dpl,#0x04
   09FF 12 00 F1           2146 	lcall	_Write7219
   0A02 15 81              2147 	dec	sp
   0A04 D0 01              2148 	pop	ar1
   0A06 D0 00              2149 	pop	ar0
   0A08 D0 07              2150 	pop	ar7
                           2151 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:325: Write7219(3, open_close_time[2] % 10);
   0A0A C0 00              2152 	push	ar0
   0A0C A8 07              2153 	mov	r0,ar7
   0A0E 86 06              2154 	mov	ar6,@r0
   0A10 D0 00              2155 	pop	ar0
   0A12 75 F0 0A           2156 	mov	b,#0x0a
   0A15 EE                 2157 	mov	a,r6
   0A16 C2 D5              2158 	clr	F0
   0A18 30 E7 04           2159 	jnb	acc.7,00499$
   0A1B D2 D5              2160 	setb	F0
   0A1D F4                 2161 	cpl	a
   0A1E 04                 2162 	inc	a
   0A1F                    2163 00499$:
   0A1F 84                 2164 	div	ab
   0A20 E5 F0              2165 	mov	a,b
   0A22 30 D5 02           2166 	jnb	F0,00500$
   0A25 F4                 2167 	cpl	a
   0A26 04                 2168 	inc	a
   0A27                    2169 00500$:
   0A27 FE                 2170 	mov	r6,a
   0A28 C0 07              2171 	push	ar7
   0A2A C0 00              2172 	push	ar0
   0A2C C0 01              2173 	push	ar1
   0A2E C0 06              2174 	push	ar6
   0A30 75 82 03           2175 	mov	dpl,#0x03
   0A33 12 00 F1           2176 	lcall	_Write7219
   0A36 15 81              2177 	dec	sp
   0A38 D0 01              2178 	pop	ar1
   0A3A D0 00              2179 	pop	ar0
   0A3C D0 07              2180 	pop	ar7
   0A3E D0 00              2181 	pop	ar0
   0A40 02 0C FE           2182 	ljmp	00239$
   0A43                    2183 00238$:
                           2184 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:326: } else if (mode2_change_place == 1) {
   0A43 C0 00              2185 	push	ar0
   0A45 A8 25              2186 	mov	r0,_bp
   0A47 08                 2187 	inc	r0
   0A48 B6 01 02           2188 	cjne	@r0,#0x01,00501$
   0A4B 80 05              2189 	sjmp	00502$
   0A4D                    2190 00501$:
   0A4D D0 00              2191 	pop	ar0
   0A4F 02 0B A2           2192 	ljmp	00235$
   0A52                    2193 00502$:
   0A52 D0 00              2194 	pop	ar0
                           2195 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:327: if (time_count >= 500) {
   0A54 C3                 2196 	clr	c
   0A55 E5 18              2197 	mov	a,_time_count
   0A57 94 F4              2198 	subb	a,#0xF4
   0A59 E5 19              2199 	mov	a,(_time_count + 1)
   0A5B 94 01              2200 	subb	a,#0x01
   0A5D 40 5C              2201 	jc	00227$
                           2202 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:328: Write7219(6, open_close_time[1] / 10);
   0A5F 87 06              2203 	mov	ar6,@r1
   0A61 C2 D5              2204 	clr	F0
   0A63 75 F0 0A           2205 	mov	b,#0x0a
   0A66 EE                 2206 	mov	a,r6
   0A67 30 E7 04           2207 	jnb	acc.7,00504$
   0A6A B2 D5              2208 	cpl	F0
   0A6C F4                 2209 	cpl	a
   0A6D 04                 2210 	inc	a
   0A6E                    2211 00504$:
   0A6E 84                 2212 	div	ab
   0A6F 30 D5 02           2213 	jnb	F0,00505$
   0A72 F4                 2214 	cpl	a
   0A73 04                 2215 	inc	a
   0A74                    2216 00505$:
   0A74 FE                 2217 	mov	r6,a
   0A75 C0 07              2218 	push	ar7
   0A77 C0 00              2219 	push	ar0
   0A79 C0 01              2220 	push	ar1
   0A7B C0 06              2221 	push	ar6
   0A7D 75 82 06           2222 	mov	dpl,#0x06
   0A80 12 00 F1           2223 	lcall	_Write7219
   0A83 15 81              2224 	dec	sp
   0A85 D0 01              2225 	pop	ar1
   0A87 D0 00              2226 	pop	ar0
   0A89 D0 07              2227 	pop	ar7
                           2228 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:329: Write7219(5, open_close_time[1] % 10);
   0A8B 87 06              2229 	mov	ar6,@r1
   0A8D 75 F0 0A           2230 	mov	b,#0x0a
   0A90 EE                 2231 	mov	a,r6
   0A91 C2 D5              2232 	clr	F0
   0A93 30 E7 04           2233 	jnb	acc.7,00506$
   0A96 D2 D5              2234 	setb	F0
   0A98 F4                 2235 	cpl	a
   0A99 04                 2236 	inc	a
   0A9A                    2237 00506$:
   0A9A 84                 2238 	div	ab
   0A9B E5 F0              2239 	mov	a,b
   0A9D 30 D5 02           2240 	jnb	F0,00507$
   0AA0 F4                 2241 	cpl	a
   0AA1 04                 2242 	inc	a
   0AA2                    2243 00507$:
   0AA2 FE                 2244 	mov	r6,a
   0AA3 C0 07              2245 	push	ar7
   0AA5 C0 00              2246 	push	ar0
   0AA7 C0 01              2247 	push	ar1
   0AA9 C0 06              2248 	push	ar6
   0AAB 75 82 05           2249 	mov	dpl,#0x05
   0AAE 12 00 F1           2250 	lcall	_Write7219
   0AB1 15 81              2251 	dec	sp
   0AB3 D0 01              2252 	pop	ar1
   0AB5 D0 00              2253 	pop	ar0
   0AB7 D0 07              2254 	pop	ar7
   0AB9 80 24              2255 	sjmp	00228$
   0ABB                    2256 00227$:
                           2257 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:331: Write7219(6, 0x0f);
   0ABB C0 07              2258 	push	ar7
   0ABD C0 00              2259 	push	ar0
   0ABF C0 01              2260 	push	ar1
   0AC1 74 0F              2261 	mov	a,#0x0F
   0AC3 C0 E0              2262 	push	acc
   0AC5 75 82 06           2263 	mov	dpl,#0x06
   0AC8 12 00 F1           2264 	lcall	_Write7219
   0ACB 15 81              2265 	dec	sp
                           2266 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:332: Write7219(5, 0x0f); 
   0ACD 74 0F              2267 	mov	a,#0x0F
   0ACF C0 E0              2268 	push	acc
   0AD1 75 82 05           2269 	mov	dpl,#0x05
   0AD4 12 00 F1           2270 	lcall	_Write7219
   0AD7 15 81              2271 	dec	sp
   0AD9 D0 01              2272 	pop	ar1
   0ADB D0 00              2273 	pop	ar0
   0ADD D0 07              2274 	pop	ar7
   0ADF                    2275 00228$:
                           2276 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:334: Write7219(8, open_close_time[0] / 10);
   0ADF 86 06              2277 	mov	ar6,@r0
   0AE1 C2 D5              2278 	clr	F0
   0AE3 75 F0 0A           2279 	mov	b,#0x0a
   0AE6 EE                 2280 	mov	a,r6
   0AE7 30 E7 04           2281 	jnb	acc.7,00508$
   0AEA B2 D5              2282 	cpl	F0
   0AEC F4                 2283 	cpl	a
   0AED 04                 2284 	inc	a
   0AEE                    2285 00508$:
   0AEE 84                 2286 	div	ab
   0AEF 30 D5 02           2287 	jnb	F0,00509$
   0AF2 F4                 2288 	cpl	a
   0AF3 04                 2289 	inc	a
   0AF4                    2290 00509$:
   0AF4 FE                 2291 	mov	r6,a
   0AF5 C0 07              2292 	push	ar7
   0AF7 C0 00              2293 	push	ar0
   0AF9 C0 01              2294 	push	ar1
   0AFB C0 06              2295 	push	ar6
   0AFD 75 82 08           2296 	mov	dpl,#0x08
   0B00 12 00 F1           2297 	lcall	_Write7219
   0B03 15 81              2298 	dec	sp
   0B05 D0 01              2299 	pop	ar1
   0B07 D0 00              2300 	pop	ar0
   0B09 D0 07              2301 	pop	ar7
                           2302 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:335: Write7219(7, open_close_time[0] % 10); 
   0B0B 86 06              2303 	mov	ar6,@r0
   0B0D 75 F0 0A           2304 	mov	b,#0x0a
   0B10 EE                 2305 	mov	a,r6
   0B11 C2 D5              2306 	clr	F0
   0B13 30 E7 04           2307 	jnb	acc.7,00510$
   0B16 D2 D5              2308 	setb	F0
   0B18 F4                 2309 	cpl	a
   0B19 04                 2310 	inc	a
   0B1A                    2311 00510$:
   0B1A 84                 2312 	div	ab
   0B1B E5 F0              2313 	mov	a,b
   0B1D 30 D5 02           2314 	jnb	F0,00511$
   0B20 F4                 2315 	cpl	a
   0B21 04                 2316 	inc	a
   0B22                    2317 00511$:
   0B22 FE                 2318 	mov	r6,a
   0B23 C0 07              2319 	push	ar7
   0B25 C0 00              2320 	push	ar0
   0B27 C0 01              2321 	push	ar1
   0B29 C0 06              2322 	push	ar6
   0B2B 75 82 07           2323 	mov	dpl,#0x07
   0B2E 12 00 F1           2324 	lcall	_Write7219
   0B31 15 81              2325 	dec	sp
   0B33 D0 01              2326 	pop	ar1
   0B35 D0 00              2327 	pop	ar0
   0B37 D0 07              2328 	pop	ar7
                           2329 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:336: Write7219(4, open_close_time[2] / 10);
   0B39 C0 00              2330 	push	ar0
   0B3B A8 07              2331 	mov	r0,ar7
   0B3D 86 06              2332 	mov	ar6,@r0
   0B3F D0 00              2333 	pop	ar0
   0B41 C2 D5              2334 	clr	F0
   0B43 75 F0 0A           2335 	mov	b,#0x0a
   0B46 EE                 2336 	mov	a,r6
   0B47 30 E7 04           2337 	jnb	acc.7,00512$
   0B4A B2 D5              2338 	cpl	F0
   0B4C F4                 2339 	cpl	a
   0B4D 04                 2340 	inc	a
   0B4E                    2341 00512$:
   0B4E 84                 2342 	div	ab
   0B4F 30 D5 02           2343 	jnb	F0,00513$
   0B52 F4                 2344 	cpl	a
   0B53 04                 2345 	inc	a
   0B54                    2346 00513$:
   0B54 FE                 2347 	mov	r6,a
   0B55 C0 07              2348 	push	ar7
   0B57 C0 00              2349 	push	ar0
   0B59 C0 01              2350 	push	ar1
   0B5B C0 06              2351 	push	ar6
   0B5D 75 82 04           2352 	mov	dpl,#0x04
   0B60 12 00 F1           2353 	lcall	_Write7219
   0B63 15 81              2354 	dec	sp
   0B65 D0 01              2355 	pop	ar1
   0B67 D0 00              2356 	pop	ar0
   0B69 D0 07              2357 	pop	ar7
                           2358 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:337: Write7219(3, open_close_time[2] % 10);
   0B6B C0 00              2359 	push	ar0
   0B6D A8 07              2360 	mov	r0,ar7
   0B6F 86 06              2361 	mov	ar6,@r0
   0B71 D0 00              2362 	pop	ar0
   0B73 75 F0 0A           2363 	mov	b,#0x0a
   0B76 EE                 2364 	mov	a,r6
   0B77 C2 D5              2365 	clr	F0
   0B79 30 E7 04           2366 	jnb	acc.7,00514$
   0B7C D2 D5              2367 	setb	F0
   0B7E F4                 2368 	cpl	a
   0B7F 04                 2369 	inc	a
   0B80                    2370 00514$:
   0B80 84                 2371 	div	ab
   0B81 E5 F0              2372 	mov	a,b
   0B83 30 D5 02           2373 	jnb	F0,00515$
   0B86 F4                 2374 	cpl	a
   0B87 04                 2375 	inc	a
   0B88                    2376 00515$:
   0B88 FE                 2377 	mov	r6,a
   0B89 C0 07              2378 	push	ar7
   0B8B C0 00              2379 	push	ar0
   0B8D C0 01              2380 	push	ar1
   0B8F C0 06              2381 	push	ar6
   0B91 75 82 03           2382 	mov	dpl,#0x03
   0B94 12 00 F1           2383 	lcall	_Write7219
   0B97 15 81              2384 	dec	sp
   0B99 D0 01              2385 	pop	ar1
   0B9B D0 00              2386 	pop	ar0
   0B9D D0 07              2387 	pop	ar7
   0B9F 02 0C FE           2388 	ljmp	00239$
   0BA2                    2389 00235$:
                           2390 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:338: } else if (mode2_change_place == 2) {
   0BA2 C0 00              2391 	push	ar0
   0BA4 A8 25              2392 	mov	r0,_bp
   0BA6 08                 2393 	inc	r0
   0BA7 B6 02 02           2394 	cjne	@r0,#0x02,00516$
   0BAA 80 05              2395 	sjmp	00517$
   0BAC                    2396 00516$:
   0BAC D0 00              2397 	pop	ar0
   0BAE 02 0C FE           2398 	ljmp	00239$
   0BB1                    2399 00517$:
   0BB1 D0 00              2400 	pop	ar0
                           2401 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:339: if (time_count >= 500) {
   0BB3 C3                 2402 	clr	c
   0BB4 E5 18              2403 	mov	a,_time_count
   0BB6 94 F4              2404 	subb	a,#0xF4
   0BB8 E5 19              2405 	mov	a,(_time_count + 1)
   0BBA 94 01              2406 	subb	a,#0x01
   0BBC 40 68              2407 	jc	00230$
                           2408 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:340: Write7219(4, open_close_time[2] / 10);
   0BBE C0 00              2409 	push	ar0
   0BC0 A8 07              2410 	mov	r0,ar7
   0BC2 86 06              2411 	mov	ar6,@r0
   0BC4 D0 00              2412 	pop	ar0
   0BC6 C2 D5              2413 	clr	F0
   0BC8 75 F0 0A           2414 	mov	b,#0x0a
   0BCB EE                 2415 	mov	a,r6
   0BCC 30 E7 04           2416 	jnb	acc.7,00519$
   0BCF B2 D5              2417 	cpl	F0
   0BD1 F4                 2418 	cpl	a
   0BD2 04                 2419 	inc	a
   0BD3                    2420 00519$:
   0BD3 84                 2421 	div	ab
   0BD4 30 D5 02           2422 	jnb	F0,00520$
   0BD7 F4                 2423 	cpl	a
   0BD8 04                 2424 	inc	a
   0BD9                    2425 00520$:
   0BD9 FE                 2426 	mov	r6,a
   0BDA C0 07              2427 	push	ar7
   0BDC C0 00              2428 	push	ar0
   0BDE C0 01              2429 	push	ar1
   0BE0 C0 06              2430 	push	ar6
   0BE2 75 82 04           2431 	mov	dpl,#0x04
   0BE5 12 00 F1           2432 	lcall	_Write7219
   0BE8 15 81              2433 	dec	sp
   0BEA D0 01              2434 	pop	ar1
   0BEC D0 00              2435 	pop	ar0
   0BEE D0 07              2436 	pop	ar7
                           2437 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:341: Write7219(3, open_close_time[2] % 10);
   0BF0 C0 00              2438 	push	ar0
   0BF2 A8 07              2439 	mov	r0,ar7
   0BF4 86 06              2440 	mov	ar6,@r0
   0BF6 D0 00              2441 	pop	ar0
   0BF8 75 F0 0A           2442 	mov	b,#0x0a
   0BFB EE                 2443 	mov	a,r6
   0BFC C2 D5              2444 	clr	F0
   0BFE 30 E7 04           2445 	jnb	acc.7,00521$
   0C01 D2 D5              2446 	setb	F0
   0C03 F4                 2447 	cpl	a
   0C04 04                 2448 	inc	a
   0C05                    2449 00521$:
   0C05 84                 2450 	div	ab
   0C06 E5 F0              2451 	mov	a,b
   0C08 30 D5 02           2452 	jnb	F0,00522$
   0C0B F4                 2453 	cpl	a
   0C0C 04                 2454 	inc	a
   0C0D                    2455 00522$:
   0C0D FE                 2456 	mov	r6,a
   0C0E C0 07              2457 	push	ar7
   0C10 C0 00              2458 	push	ar0
   0C12 C0 01              2459 	push	ar1
   0C14 C0 06              2460 	push	ar6
   0C16 75 82 03           2461 	mov	dpl,#0x03
   0C19 12 00 F1           2462 	lcall	_Write7219
   0C1C 15 81              2463 	dec	sp
   0C1E D0 01              2464 	pop	ar1
   0C20 D0 00              2465 	pop	ar0
   0C22 D0 07              2466 	pop	ar7
   0C24 80 24              2467 	sjmp	00231$
   0C26                    2468 00230$:
                           2469 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:343: Write7219(4, 0x0f);
   0C26 C0 07              2470 	push	ar7
   0C28 C0 00              2471 	push	ar0
   0C2A C0 01              2472 	push	ar1
   0C2C 74 0F              2473 	mov	a,#0x0F
   0C2E C0 E0              2474 	push	acc
   0C30 75 82 04           2475 	mov	dpl,#0x04
   0C33 12 00 F1           2476 	lcall	_Write7219
   0C36 15 81              2477 	dec	sp
                           2478 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:344: Write7219(3, 0x0f); 
   0C38 74 0F              2479 	mov	a,#0x0F
   0C3A C0 E0              2480 	push	acc
   0C3C 75 82 03           2481 	mov	dpl,#0x03
   0C3F 12 00 F1           2482 	lcall	_Write7219
   0C42 15 81              2483 	dec	sp
   0C44 D0 01              2484 	pop	ar1
   0C46 D0 00              2485 	pop	ar0
   0C48 D0 07              2486 	pop	ar7
   0C4A                    2487 00231$:
                           2488 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:346: Write7219(6, open_close_time[1] / 10);
   0C4A 87 06              2489 	mov	ar6,@r1
   0C4C C2 D5              2490 	clr	F0
   0C4E 75 F0 0A           2491 	mov	b,#0x0a
   0C51 EE                 2492 	mov	a,r6
   0C52 30 E7 04           2493 	jnb	acc.7,00523$
   0C55 B2 D5              2494 	cpl	F0
   0C57 F4                 2495 	cpl	a
   0C58 04                 2496 	inc	a
   0C59                    2497 00523$:
   0C59 84                 2498 	div	ab
   0C5A 30 D5 02           2499 	jnb	F0,00524$
   0C5D F4                 2500 	cpl	a
   0C5E 04                 2501 	inc	a
   0C5F                    2502 00524$:
   0C5F FE                 2503 	mov	r6,a
   0C60 C0 07              2504 	push	ar7
   0C62 C0 00              2505 	push	ar0
   0C64 C0 01              2506 	push	ar1
   0C66 C0 06              2507 	push	ar6
   0C68 75 82 06           2508 	mov	dpl,#0x06
   0C6B 12 00 F1           2509 	lcall	_Write7219
   0C6E 15 81              2510 	dec	sp
   0C70 D0 01              2511 	pop	ar1
   0C72 D0 00              2512 	pop	ar0
   0C74 D0 07              2513 	pop	ar7
                           2514 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:347: Write7219(5, open_close_time[1] % 10);
   0C76 87 06              2515 	mov	ar6,@r1
   0C78 75 F0 0A           2516 	mov	b,#0x0a
   0C7B EE                 2517 	mov	a,r6
   0C7C C2 D5              2518 	clr	F0
   0C7E 30 E7 04           2519 	jnb	acc.7,00525$
   0C81 D2 D5              2520 	setb	F0
   0C83 F4                 2521 	cpl	a
   0C84 04                 2522 	inc	a
   0C85                    2523 00525$:
   0C85 84                 2524 	div	ab
   0C86 E5 F0              2525 	mov	a,b
   0C88 30 D5 02           2526 	jnb	F0,00526$
   0C8B F4                 2527 	cpl	a
   0C8C 04                 2528 	inc	a
   0C8D                    2529 00526$:
   0C8D FE                 2530 	mov	r6,a
   0C8E C0 07              2531 	push	ar7
   0C90 C0 00              2532 	push	ar0
   0C92 C0 01              2533 	push	ar1
   0C94 C0 06              2534 	push	ar6
   0C96 75 82 05           2535 	mov	dpl,#0x05
   0C99 12 00 F1           2536 	lcall	_Write7219
   0C9C 15 81              2537 	dec	sp
   0C9E D0 01              2538 	pop	ar1
   0CA0 D0 00              2539 	pop	ar0
   0CA2 D0 07              2540 	pop	ar7
                           2541 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:348: Write7219(8, open_close_time[0] / 10);
   0CA4 86 06              2542 	mov	ar6,@r0
   0CA6 C2 D5              2543 	clr	F0
   0CA8 75 F0 0A           2544 	mov	b,#0x0a
   0CAB EE                 2545 	mov	a,r6
   0CAC 30 E7 04           2546 	jnb	acc.7,00527$
   0CAF B2 D5              2547 	cpl	F0
   0CB1 F4                 2548 	cpl	a
   0CB2 04                 2549 	inc	a
   0CB3                    2550 00527$:
   0CB3 84                 2551 	div	ab
   0CB4 30 D5 02           2552 	jnb	F0,00528$
   0CB7 F4                 2553 	cpl	a
   0CB8 04                 2554 	inc	a
   0CB9                    2555 00528$:
   0CB9 FE                 2556 	mov	r6,a
   0CBA C0 07              2557 	push	ar7
   0CBC C0 00              2558 	push	ar0
   0CBE C0 01              2559 	push	ar1
   0CC0 C0 06              2560 	push	ar6
   0CC2 75 82 08           2561 	mov	dpl,#0x08
   0CC5 12 00 F1           2562 	lcall	_Write7219
   0CC8 15 81              2563 	dec	sp
   0CCA D0 01              2564 	pop	ar1
   0CCC D0 00              2565 	pop	ar0
   0CCE D0 07              2566 	pop	ar7
                           2567 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:349: Write7219(7, open_close_time[0] % 10); 
   0CD0 86 06              2568 	mov	ar6,@r0
   0CD2 75 F0 0A           2569 	mov	b,#0x0a
   0CD5 EE                 2570 	mov	a,r6
   0CD6 C2 D5              2571 	clr	F0
   0CD8 30 E7 04           2572 	jnb	acc.7,00529$
   0CDB D2 D5              2573 	setb	F0
   0CDD F4                 2574 	cpl	a
   0CDE 04                 2575 	inc	a
   0CDF                    2576 00529$:
   0CDF 84                 2577 	div	ab
   0CE0 E5 F0              2578 	mov	a,b
   0CE2 30 D5 02           2579 	jnb	F0,00530$
   0CE5 F4                 2580 	cpl	a
   0CE6 04                 2581 	inc	a
   0CE7                    2582 00530$:
   0CE7 FE                 2583 	mov	r6,a
   0CE8 C0 07              2584 	push	ar7
   0CEA C0 00              2585 	push	ar0
   0CEC C0 01              2586 	push	ar1
   0CEE C0 06              2587 	push	ar6
   0CF0 75 82 07           2588 	mov	dpl,#0x07
   0CF3 12 00 F1           2589 	lcall	_Write7219
   0CF6 15 81              2590 	dec	sp
   0CF8 D0 01              2591 	pop	ar1
   0CFA D0 00              2592 	pop	ar0
   0CFC D0 07              2593 	pop	ar7
   0CFE                    2594 00239$:
                           2595 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:351: Write7219(2, 1);
   0CFE C0 07              2596 	push	ar7
   0D00 C0 00              2597 	push	ar0
   0D02 C0 01              2598 	push	ar1
   0D04 74 01              2599 	mov	a,#0x01
   0D06 C0 E0              2600 	push	acc
   0D08 75 82 02           2601 	mov	dpl,#0x02
   0D0B 12 00 F1           2602 	lcall	_Write7219
   0D0E 15 81              2603 	dec	sp
   0D10 D0 01              2604 	pop	ar1
   0D12 D0 00              2605 	pop	ar0
   0D14 D0 07              2606 	pop	ar7
   0D16 02 11 ED           2607 	ljmp	00259$
   0D19                    2608 00258$:
                           2609 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:353: if (mode2_change_place == 3) {
   0D19 C0 00              2610 	push	ar0
   0D1B A8 25              2611 	mov	r0,_bp
   0D1D 08                 2612 	inc	r0
   0D1E B6 03 02           2613 	cjne	@r0,#0x03,00531$
   0D21 80 05              2614 	sjmp	00532$
   0D23                    2615 00531$:
   0D23 D0 00              2616 	pop	ar0
   0D25 02 0E AE           2617 	ljmp	00255$
   0D28                    2618 00532$:
   0D28 D0 00              2619 	pop	ar0
                           2620 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:354: if (time_count >= 500) {
   0D2A C3                 2621 	clr	c
   0D2B E5 18              2622 	mov	a,_time_count
   0D2D 94 F4              2623 	subb	a,#0xF4
   0D2F E5 19              2624 	mov	a,(_time_count + 1)
   0D31 94 01              2625 	subb	a,#0x01
   0D33 40 72              2626 	jc	00241$
                           2627 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:355: Write7219(8, open_close_time[3] / 10);
   0D35 C0 00              2628 	push	ar0
   0D37 E5 25              2629 	mov	a,_bp
   0D39 24 09              2630 	add	a,#0x09
   0D3B F8                 2631 	mov	r0,a
   0D3C 86 00              2632 	mov	ar0,@r0
   0D3E 86 06              2633 	mov	ar6,@r0
   0D40 D0 00              2634 	pop	ar0
   0D42 C2 D5              2635 	clr	F0
   0D44 75 F0 0A           2636 	mov	b,#0x0a
   0D47 EE                 2637 	mov	a,r6
   0D48 30 E7 04           2638 	jnb	acc.7,00534$
   0D4B B2 D5              2639 	cpl	F0
   0D4D F4                 2640 	cpl	a
   0D4E 04                 2641 	inc	a
   0D4F                    2642 00534$:
   0D4F 84                 2643 	div	ab
   0D50 30 D5 02           2644 	jnb	F0,00535$
   0D53 F4                 2645 	cpl	a
   0D54 04                 2646 	inc	a
   0D55                    2647 00535$:
   0D55 FE                 2648 	mov	r6,a
   0D56 C0 07              2649 	push	ar7
   0D58 C0 00              2650 	push	ar0
   0D5A C0 01              2651 	push	ar1
   0D5C C0 06              2652 	push	ar6
   0D5E 75 82 08           2653 	mov	dpl,#0x08
   0D61 12 00 F1           2654 	lcall	_Write7219
   0D64 15 81              2655 	dec	sp
   0D66 D0 01              2656 	pop	ar1
   0D68 D0 00              2657 	pop	ar0
   0D6A D0 07              2658 	pop	ar7
                           2659 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:356: Write7219(7, open_close_time[3] % 10); 
   0D6C C0 00              2660 	push	ar0
   0D6E E5 25              2661 	mov	a,_bp
   0D70 24 09              2662 	add	a,#0x09
   0D72 F8                 2663 	mov	r0,a
   0D73 86 00              2664 	mov	ar0,@r0
   0D75 86 06              2665 	mov	ar6,@r0
   0D77 D0 00              2666 	pop	ar0
   0D79 75 F0 0A           2667 	mov	b,#0x0a
   0D7C EE                 2668 	mov	a,r6
   0D7D C2 D5              2669 	clr	F0
   0D7F 30 E7 04           2670 	jnb	acc.7,00536$
   0D82 D2 D5              2671 	setb	F0
   0D84 F4                 2672 	cpl	a
   0D85 04                 2673 	inc	a
   0D86                    2674 00536$:
   0D86 84                 2675 	div	ab
   0D87 E5 F0              2676 	mov	a,b
   0D89 30 D5 02           2677 	jnb	F0,00537$
   0D8C F4                 2678 	cpl	a
   0D8D 04                 2679 	inc	a
   0D8E                    2680 00537$:
   0D8E FE                 2681 	mov	r6,a
   0D8F C0 07              2682 	push	ar7
   0D91 C0 00              2683 	push	ar0
   0D93 C0 01              2684 	push	ar1
   0D95 C0 06              2685 	push	ar6
   0D97 75 82 07           2686 	mov	dpl,#0x07
   0D9A 12 00 F1           2687 	lcall	_Write7219
   0D9D 15 81              2688 	dec	sp
   0D9F D0 01              2689 	pop	ar1
   0DA1 D0 00              2690 	pop	ar0
   0DA3 D0 07              2691 	pop	ar7
   0DA5 80 24              2692 	sjmp	00242$
   0DA7                    2693 00241$:
                           2694 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:358: Write7219(8, 0x0f);
   0DA7 C0 07              2695 	push	ar7
   0DA9 C0 00              2696 	push	ar0
   0DAB C0 01              2697 	push	ar1
   0DAD 74 0F              2698 	mov	a,#0x0F
   0DAF C0 E0              2699 	push	acc
   0DB1 75 82 08           2700 	mov	dpl,#0x08
   0DB4 12 00 F1           2701 	lcall	_Write7219
   0DB7 15 81              2702 	dec	sp
                           2703 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:359: Write7219(7, 0x0f); 
   0DB9 74 0F              2704 	mov	a,#0x0F
   0DBB C0 E0              2705 	push	acc
   0DBD 75 82 07           2706 	mov	dpl,#0x07
   0DC0 12 00 F1           2707 	lcall	_Write7219
   0DC3 15 81              2708 	dec	sp
   0DC5 D0 01              2709 	pop	ar1
   0DC7 D0 00              2710 	pop	ar0
   0DC9 D0 07              2711 	pop	ar7
   0DCB                    2712 00242$:
                           2713 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:361: Write7219(6, open_close_time[4] / 10);
   0DCB C0 00              2714 	push	ar0
   0DCD E5 25              2715 	mov	a,_bp
   0DCF 24 0A              2716 	add	a,#0x0a
   0DD1 F8                 2717 	mov	r0,a
   0DD2 86 00              2718 	mov	ar0,@r0
   0DD4 86 06              2719 	mov	ar6,@r0
   0DD6 D0 00              2720 	pop	ar0
   0DD8 C2 D5              2721 	clr	F0
   0DDA 75 F0 0A           2722 	mov	b,#0x0a
   0DDD EE                 2723 	mov	a,r6
   0DDE 30 E7 04           2724 	jnb	acc.7,00538$
   0DE1 B2 D5              2725 	cpl	F0
   0DE3 F4                 2726 	cpl	a
   0DE4 04                 2727 	inc	a
   0DE5                    2728 00538$:
   0DE5 84                 2729 	div	ab
   0DE6 30 D5 02           2730 	jnb	F0,00539$
   0DE9 F4                 2731 	cpl	a
   0DEA 04                 2732 	inc	a
   0DEB                    2733 00539$:
   0DEB FE                 2734 	mov	r6,a
   0DEC C0 07              2735 	push	ar7
   0DEE C0 00              2736 	push	ar0
   0DF0 C0 01              2737 	push	ar1
   0DF2 C0 06              2738 	push	ar6
   0DF4 75 82 06           2739 	mov	dpl,#0x06
   0DF7 12 00 F1           2740 	lcall	_Write7219
   0DFA 15 81              2741 	dec	sp
   0DFC D0 01              2742 	pop	ar1
   0DFE D0 00              2743 	pop	ar0
   0E00 D0 07              2744 	pop	ar7
                           2745 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:362: Write7219(5, open_close_time[4] % 10);
   0E02 C0 00              2746 	push	ar0
   0E04 E5 25              2747 	mov	a,_bp
   0E06 24 0A              2748 	add	a,#0x0a
   0E08 F8                 2749 	mov	r0,a
   0E09 86 00              2750 	mov	ar0,@r0
   0E0B 86 06              2751 	mov	ar6,@r0
   0E0D D0 00              2752 	pop	ar0
   0E0F 75 F0 0A           2753 	mov	b,#0x0a
   0E12 EE                 2754 	mov	a,r6
   0E13 C2 D5              2755 	clr	F0
   0E15 30 E7 04           2756 	jnb	acc.7,00540$
   0E18 D2 D5              2757 	setb	F0
   0E1A F4                 2758 	cpl	a
   0E1B 04                 2759 	inc	a
   0E1C                    2760 00540$:
   0E1C 84                 2761 	div	ab
   0E1D E5 F0              2762 	mov	a,b
   0E1F 30 D5 02           2763 	jnb	F0,00541$
   0E22 F4                 2764 	cpl	a
   0E23 04                 2765 	inc	a
   0E24                    2766 00541$:
   0E24 FE                 2767 	mov	r6,a
   0E25 C0 07              2768 	push	ar7
   0E27 C0 00              2769 	push	ar0
   0E29 C0 01              2770 	push	ar1
   0E2B C0 06              2771 	push	ar6
   0E2D 75 82 05           2772 	mov	dpl,#0x05
   0E30 12 00 F1           2773 	lcall	_Write7219
   0E33 15 81              2774 	dec	sp
   0E35 D0 01              2775 	pop	ar1
   0E37 D0 00              2776 	pop	ar0
   0E39 D0 07              2777 	pop	ar7
                           2778 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:363: Write7219(4, open_close_time[5] / 10);
   0E3B C0 00              2779 	push	ar0
   0E3D E5 25              2780 	mov	a,_bp
   0E3F 24 0B              2781 	add	a,#0x0b
   0E41 F8                 2782 	mov	r0,a
   0E42 86 00              2783 	mov	ar0,@r0
   0E44 86 06              2784 	mov	ar6,@r0
   0E46 D0 00              2785 	pop	ar0
   0E48 C2 D5              2786 	clr	F0
   0E4A 75 F0 0A           2787 	mov	b,#0x0a
   0E4D EE                 2788 	mov	a,r6
   0E4E 30 E7 04           2789 	jnb	acc.7,00542$
   0E51 B2 D5              2790 	cpl	F0
   0E53 F4                 2791 	cpl	a
   0E54 04                 2792 	inc	a
   0E55                    2793 00542$:
   0E55 84                 2794 	div	ab
   0E56 30 D5 02           2795 	jnb	F0,00543$
   0E59 F4                 2796 	cpl	a
   0E5A 04                 2797 	inc	a
   0E5B                    2798 00543$:
   0E5B FE                 2799 	mov	r6,a
   0E5C C0 07              2800 	push	ar7
   0E5E C0 00              2801 	push	ar0
   0E60 C0 01              2802 	push	ar1
   0E62 C0 06              2803 	push	ar6
   0E64 75 82 04           2804 	mov	dpl,#0x04
   0E67 12 00 F1           2805 	lcall	_Write7219
   0E6A 15 81              2806 	dec	sp
   0E6C D0 01              2807 	pop	ar1
   0E6E D0 00              2808 	pop	ar0
   0E70 D0 07              2809 	pop	ar7
                           2810 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:364: Write7219(3, open_close_time[5] % 10);
   0E72 C0 00              2811 	push	ar0
   0E74 E5 25              2812 	mov	a,_bp
   0E76 24 0B              2813 	add	a,#0x0b
   0E78 F8                 2814 	mov	r0,a
   0E79 86 00              2815 	mov	ar0,@r0
   0E7B 86 06              2816 	mov	ar6,@r0
   0E7D D0 00              2817 	pop	ar0
   0E7F 75 F0 0A           2818 	mov	b,#0x0a
   0E82 EE                 2819 	mov	a,r6
   0E83 C2 D5              2820 	clr	F0
   0E85 30 E7 04           2821 	jnb	acc.7,00544$
   0E88 D2 D5              2822 	setb	F0
   0E8A F4                 2823 	cpl	a
   0E8B 04                 2824 	inc	a
   0E8C                    2825 00544$:
   0E8C 84                 2826 	div	ab
   0E8D E5 F0              2827 	mov	a,b
   0E8F 30 D5 02           2828 	jnb	F0,00545$
   0E92 F4                 2829 	cpl	a
   0E93 04                 2830 	inc	a
   0E94                    2831 00545$:
   0E94 FE                 2832 	mov	r6,a
   0E95 C0 07              2833 	push	ar7
   0E97 C0 00              2834 	push	ar0
   0E99 C0 01              2835 	push	ar1
   0E9B C0 06              2836 	push	ar6
   0E9D 75 82 03           2837 	mov	dpl,#0x03
   0EA0 12 00 F1           2838 	lcall	_Write7219
   0EA3 15 81              2839 	dec	sp
   0EA5 D0 01              2840 	pop	ar1
   0EA7 D0 00              2841 	pop	ar0
   0EA9 D0 07              2842 	pop	ar7
   0EAB 02 11 D5           2843 	ljmp	00256$
   0EAE                    2844 00255$:
                           2845 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:365: } else if (mode2_change_place == 4) {
   0EAE C0 00              2846 	push	ar0
   0EB0 A8 25              2847 	mov	r0,_bp
   0EB2 08                 2848 	inc	r0
   0EB3 B6 04 02           2849 	cjne	@r0,#0x04,00546$
   0EB6 80 05              2850 	sjmp	00547$
   0EB8                    2851 00546$:
   0EB8 D0 00              2852 	pop	ar0
   0EBA 02 10 43           2853 	ljmp	00252$
   0EBD                    2854 00547$:
   0EBD D0 00              2855 	pop	ar0
                           2856 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:366: if (time_count >= 500) {
   0EBF C3                 2857 	clr	c
   0EC0 E5 18              2858 	mov	a,_time_count
   0EC2 94 F4              2859 	subb	a,#0xF4
   0EC4 E5 19              2860 	mov	a,(_time_count + 1)
   0EC6 94 01              2861 	subb	a,#0x01
   0EC8 40 72              2862 	jc	00244$
                           2863 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:367: Write7219(6, open_close_time[4] / 10);
   0ECA C0 00              2864 	push	ar0
   0ECC E5 25              2865 	mov	a,_bp
   0ECE 24 0A              2866 	add	a,#0x0a
   0ED0 F8                 2867 	mov	r0,a
   0ED1 86 00              2868 	mov	ar0,@r0
   0ED3 86 06              2869 	mov	ar6,@r0
   0ED5 D0 00              2870 	pop	ar0
   0ED7 C2 D5              2871 	clr	F0
   0ED9 75 F0 0A           2872 	mov	b,#0x0a
   0EDC EE                 2873 	mov	a,r6
   0EDD 30 E7 04           2874 	jnb	acc.7,00549$
   0EE0 B2 D5              2875 	cpl	F0
   0EE2 F4                 2876 	cpl	a
   0EE3 04                 2877 	inc	a
   0EE4                    2878 00549$:
   0EE4 84                 2879 	div	ab
   0EE5 30 D5 02           2880 	jnb	F0,00550$
   0EE8 F4                 2881 	cpl	a
   0EE9 04                 2882 	inc	a
   0EEA                    2883 00550$:
   0EEA FE                 2884 	mov	r6,a
   0EEB C0 07              2885 	push	ar7
   0EED C0 00              2886 	push	ar0
   0EEF C0 01              2887 	push	ar1
   0EF1 C0 06              2888 	push	ar6
   0EF3 75 82 06           2889 	mov	dpl,#0x06
   0EF6 12 00 F1           2890 	lcall	_Write7219
   0EF9 15 81              2891 	dec	sp
   0EFB D0 01              2892 	pop	ar1
   0EFD D0 00              2893 	pop	ar0
   0EFF D0 07              2894 	pop	ar7
                           2895 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:368: Write7219(5, open_close_time[4] % 10);
   0F01 C0 00              2896 	push	ar0
   0F03 E5 25              2897 	mov	a,_bp
   0F05 24 0A              2898 	add	a,#0x0a
   0F07 F8                 2899 	mov	r0,a
   0F08 86 00              2900 	mov	ar0,@r0
   0F0A 86 06              2901 	mov	ar6,@r0
   0F0C D0 00              2902 	pop	ar0
   0F0E 75 F0 0A           2903 	mov	b,#0x0a
   0F11 EE                 2904 	mov	a,r6
   0F12 C2 D5              2905 	clr	F0
   0F14 30 E7 04           2906 	jnb	acc.7,00551$
   0F17 D2 D5              2907 	setb	F0
   0F19 F4                 2908 	cpl	a
   0F1A 04                 2909 	inc	a
   0F1B                    2910 00551$:
   0F1B 84                 2911 	div	ab
   0F1C E5 F0              2912 	mov	a,b
   0F1E 30 D5 02           2913 	jnb	F0,00552$
   0F21 F4                 2914 	cpl	a
   0F22 04                 2915 	inc	a
   0F23                    2916 00552$:
   0F23 FE                 2917 	mov	r6,a
   0F24 C0 07              2918 	push	ar7
   0F26 C0 00              2919 	push	ar0
   0F28 C0 01              2920 	push	ar1
   0F2A C0 06              2921 	push	ar6
   0F2C 75 82 05           2922 	mov	dpl,#0x05
   0F2F 12 00 F1           2923 	lcall	_Write7219
   0F32 15 81              2924 	dec	sp
   0F34 D0 01              2925 	pop	ar1
   0F36 D0 00              2926 	pop	ar0
   0F38 D0 07              2927 	pop	ar7
   0F3A 80 24              2928 	sjmp	00245$
   0F3C                    2929 00244$:
                           2930 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:370: Write7219(6, 0x0f);
   0F3C C0 07              2931 	push	ar7
   0F3E C0 00              2932 	push	ar0
   0F40 C0 01              2933 	push	ar1
   0F42 74 0F              2934 	mov	a,#0x0F
   0F44 C0 E0              2935 	push	acc
   0F46 75 82 06           2936 	mov	dpl,#0x06
   0F49 12 00 F1           2937 	lcall	_Write7219
   0F4C 15 81              2938 	dec	sp
                           2939 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:371: Write7219(5, 0x0f); 
   0F4E 74 0F              2940 	mov	a,#0x0F
   0F50 C0 E0              2941 	push	acc
   0F52 75 82 05           2942 	mov	dpl,#0x05
   0F55 12 00 F1           2943 	lcall	_Write7219
   0F58 15 81              2944 	dec	sp
   0F5A D0 01              2945 	pop	ar1
   0F5C D0 00              2946 	pop	ar0
   0F5E D0 07              2947 	pop	ar7
   0F60                    2948 00245$:
                           2949 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:373: Write7219(8, open_close_time[3] / 10);
   0F60 C0 00              2950 	push	ar0
   0F62 E5 25              2951 	mov	a,_bp
   0F64 24 09              2952 	add	a,#0x09
   0F66 F8                 2953 	mov	r0,a
   0F67 86 00              2954 	mov	ar0,@r0
   0F69 86 06              2955 	mov	ar6,@r0
   0F6B D0 00              2956 	pop	ar0
   0F6D C2 D5              2957 	clr	F0
   0F6F 75 F0 0A           2958 	mov	b,#0x0a
   0F72 EE                 2959 	mov	a,r6
   0F73 30 E7 04           2960 	jnb	acc.7,00553$
   0F76 B2 D5              2961 	cpl	F0
   0F78 F4                 2962 	cpl	a
   0F79 04                 2963 	inc	a
   0F7A                    2964 00553$:
   0F7A 84                 2965 	div	ab
   0F7B 30 D5 02           2966 	jnb	F0,00554$
   0F7E F4                 2967 	cpl	a
   0F7F 04                 2968 	inc	a
   0F80                    2969 00554$:
   0F80 FE                 2970 	mov	r6,a
   0F81 C0 07              2971 	push	ar7
   0F83 C0 00              2972 	push	ar0
   0F85 C0 01              2973 	push	ar1
   0F87 C0 06              2974 	push	ar6
   0F89 75 82 08           2975 	mov	dpl,#0x08
   0F8C 12 00 F1           2976 	lcall	_Write7219
   0F8F 15 81              2977 	dec	sp
   0F91 D0 01              2978 	pop	ar1
   0F93 D0 00              2979 	pop	ar0
   0F95 D0 07              2980 	pop	ar7
                           2981 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:374: Write7219(7, open_close_time[3] % 10); 
   0F97 C0 00              2982 	push	ar0
   0F99 E5 25              2983 	mov	a,_bp
   0F9B 24 09              2984 	add	a,#0x09
   0F9D F8                 2985 	mov	r0,a
   0F9E 86 00              2986 	mov	ar0,@r0
   0FA0 86 06              2987 	mov	ar6,@r0
   0FA2 D0 00              2988 	pop	ar0
   0FA4 75 F0 0A           2989 	mov	b,#0x0a
   0FA7 EE                 2990 	mov	a,r6
   0FA8 C2 D5              2991 	clr	F0
   0FAA 30 E7 04           2992 	jnb	acc.7,00555$
   0FAD D2 D5              2993 	setb	F0
   0FAF F4                 2994 	cpl	a
   0FB0 04                 2995 	inc	a
   0FB1                    2996 00555$:
   0FB1 84                 2997 	div	ab
   0FB2 E5 F0              2998 	mov	a,b
   0FB4 30 D5 02           2999 	jnb	F0,00556$
   0FB7 F4                 3000 	cpl	a
   0FB8 04                 3001 	inc	a
   0FB9                    3002 00556$:
   0FB9 FE                 3003 	mov	r6,a
   0FBA C0 07              3004 	push	ar7
   0FBC C0 00              3005 	push	ar0
   0FBE C0 01              3006 	push	ar1
   0FC0 C0 06              3007 	push	ar6
   0FC2 75 82 07           3008 	mov	dpl,#0x07
   0FC5 12 00 F1           3009 	lcall	_Write7219
   0FC8 15 81              3010 	dec	sp
   0FCA D0 01              3011 	pop	ar1
   0FCC D0 00              3012 	pop	ar0
   0FCE D0 07              3013 	pop	ar7
                           3014 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:375: Write7219(4, open_close_time[5] / 10);
   0FD0 C0 00              3015 	push	ar0
   0FD2 E5 25              3016 	mov	a,_bp
   0FD4 24 0B              3017 	add	a,#0x0b
   0FD6 F8                 3018 	mov	r0,a
   0FD7 86 00              3019 	mov	ar0,@r0
   0FD9 86 06              3020 	mov	ar6,@r0
   0FDB D0 00              3021 	pop	ar0
   0FDD C2 D5              3022 	clr	F0
   0FDF 75 F0 0A           3023 	mov	b,#0x0a
   0FE2 EE                 3024 	mov	a,r6
   0FE3 30 E7 04           3025 	jnb	acc.7,00557$
   0FE6 B2 D5              3026 	cpl	F0
   0FE8 F4                 3027 	cpl	a
   0FE9 04                 3028 	inc	a
   0FEA                    3029 00557$:
   0FEA 84                 3030 	div	ab
   0FEB 30 D5 02           3031 	jnb	F0,00558$
   0FEE F4                 3032 	cpl	a
   0FEF 04                 3033 	inc	a
   0FF0                    3034 00558$:
   0FF0 FE                 3035 	mov	r6,a
   0FF1 C0 07              3036 	push	ar7
   0FF3 C0 00              3037 	push	ar0
   0FF5 C0 01              3038 	push	ar1
   0FF7 C0 06              3039 	push	ar6
   0FF9 75 82 04           3040 	mov	dpl,#0x04
   0FFC 12 00 F1           3041 	lcall	_Write7219
   0FFF 15 81              3042 	dec	sp
   1001 D0 01              3043 	pop	ar1
   1003 D0 00              3044 	pop	ar0
   1005 D0 07              3045 	pop	ar7
                           3046 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:376: Write7219(3, open_close_time[5] % 10);
   1007 C0 00              3047 	push	ar0
   1009 E5 25              3048 	mov	a,_bp
   100B 24 0B              3049 	add	a,#0x0b
   100D F8                 3050 	mov	r0,a
   100E 86 00              3051 	mov	ar0,@r0
   1010 86 06              3052 	mov	ar6,@r0
   1012 D0 00              3053 	pop	ar0
   1014 75 F0 0A           3054 	mov	b,#0x0a
   1017 EE                 3055 	mov	a,r6
   1018 C2 D5              3056 	clr	F0
   101A 30 E7 04           3057 	jnb	acc.7,00559$
   101D D2 D5              3058 	setb	F0
   101F F4                 3059 	cpl	a
   1020 04                 3060 	inc	a
   1021                    3061 00559$:
   1021 84                 3062 	div	ab
   1022 E5 F0              3063 	mov	a,b
   1024 30 D5 02           3064 	jnb	F0,00560$
   1027 F4                 3065 	cpl	a
   1028 04                 3066 	inc	a
   1029                    3067 00560$:
   1029 FE                 3068 	mov	r6,a
   102A C0 07              3069 	push	ar7
   102C C0 00              3070 	push	ar0
   102E C0 01              3071 	push	ar1
   1030 C0 06              3072 	push	ar6
   1032 75 82 03           3073 	mov	dpl,#0x03
   1035 12 00 F1           3074 	lcall	_Write7219
   1038 15 81              3075 	dec	sp
   103A D0 01              3076 	pop	ar1
   103C D0 00              3077 	pop	ar0
   103E D0 07              3078 	pop	ar7
   1040 02 11 D5           3079 	ljmp	00256$
   1043                    3080 00252$:
                           3081 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:377: } else if (mode2_change_place == 5) {
   1043 C0 00              3082 	push	ar0
   1045 A8 25              3083 	mov	r0,_bp
   1047 08                 3084 	inc	r0
   1048 B6 05 02           3085 	cjne	@r0,#0x05,00561$
   104B 80 05              3086 	sjmp	00562$
   104D                    3087 00561$:
   104D D0 00              3088 	pop	ar0
   104F 02 11 D5           3089 	ljmp	00256$
   1052                    3090 00562$:
   1052 D0 00              3091 	pop	ar0
                           3092 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:378: if (time_count >= 500) {
   1054 C3                 3093 	clr	c
   1055 E5 18              3094 	mov	a,_time_count
   1057 94 F4              3095 	subb	a,#0xF4
   1059 E5 19              3096 	mov	a,(_time_count + 1)
   105B 94 01              3097 	subb	a,#0x01
   105D 40 72              3098 	jc	00247$
                           3099 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:379: Write7219(4, open_close_time[5] / 10);
   105F C0 00              3100 	push	ar0
   1061 E5 25              3101 	mov	a,_bp
   1063 24 0B              3102 	add	a,#0x0b
   1065 F8                 3103 	mov	r0,a
   1066 86 00              3104 	mov	ar0,@r0
   1068 86 06              3105 	mov	ar6,@r0
   106A D0 00              3106 	pop	ar0
   106C C2 D5              3107 	clr	F0
   106E 75 F0 0A           3108 	mov	b,#0x0a
   1071 EE                 3109 	mov	a,r6
   1072 30 E7 04           3110 	jnb	acc.7,00564$
   1075 B2 D5              3111 	cpl	F0
   1077 F4                 3112 	cpl	a
   1078 04                 3113 	inc	a
   1079                    3114 00564$:
   1079 84                 3115 	div	ab
   107A 30 D5 02           3116 	jnb	F0,00565$
   107D F4                 3117 	cpl	a
   107E 04                 3118 	inc	a
   107F                    3119 00565$:
   107F FE                 3120 	mov	r6,a
   1080 C0 07              3121 	push	ar7
   1082 C0 00              3122 	push	ar0
   1084 C0 01              3123 	push	ar1
   1086 C0 06              3124 	push	ar6
   1088 75 82 04           3125 	mov	dpl,#0x04
   108B 12 00 F1           3126 	lcall	_Write7219
   108E 15 81              3127 	dec	sp
   1090 D0 01              3128 	pop	ar1
   1092 D0 00              3129 	pop	ar0
   1094 D0 07              3130 	pop	ar7
                           3131 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:380: Write7219(3, open_close_time[5] % 10);
   1096 C0 00              3132 	push	ar0
   1098 E5 25              3133 	mov	a,_bp
   109A 24 0B              3134 	add	a,#0x0b
   109C F8                 3135 	mov	r0,a
   109D 86 00              3136 	mov	ar0,@r0
   109F 86 06              3137 	mov	ar6,@r0
   10A1 D0 00              3138 	pop	ar0
   10A3 75 F0 0A           3139 	mov	b,#0x0a
   10A6 EE                 3140 	mov	a,r6
   10A7 C2 D5              3141 	clr	F0
   10A9 30 E7 04           3142 	jnb	acc.7,00566$
   10AC D2 D5              3143 	setb	F0
   10AE F4                 3144 	cpl	a
   10AF 04                 3145 	inc	a
   10B0                    3146 00566$:
   10B0 84                 3147 	div	ab
   10B1 E5 F0              3148 	mov	a,b
   10B3 30 D5 02           3149 	jnb	F0,00567$
   10B6 F4                 3150 	cpl	a
   10B7 04                 3151 	inc	a
   10B8                    3152 00567$:
   10B8 FE                 3153 	mov	r6,a
   10B9 C0 07              3154 	push	ar7
   10BB C0 00              3155 	push	ar0
   10BD C0 01              3156 	push	ar1
   10BF C0 06              3157 	push	ar6
   10C1 75 82 03           3158 	mov	dpl,#0x03
   10C4 12 00 F1           3159 	lcall	_Write7219
   10C7 15 81              3160 	dec	sp
   10C9 D0 01              3161 	pop	ar1
   10CB D0 00              3162 	pop	ar0
   10CD D0 07              3163 	pop	ar7
   10CF 80 24              3164 	sjmp	00248$
   10D1                    3165 00247$:
                           3166 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:382: Write7219(4, 0x0f);
   10D1 C0 07              3167 	push	ar7
   10D3 C0 00              3168 	push	ar0
   10D5 C0 01              3169 	push	ar1
   10D7 74 0F              3170 	mov	a,#0x0F
   10D9 C0 E0              3171 	push	acc
   10DB 75 82 04           3172 	mov	dpl,#0x04
   10DE 12 00 F1           3173 	lcall	_Write7219
   10E1 15 81              3174 	dec	sp
                           3175 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:383: Write7219(3, 0x0f); 
   10E3 74 0F              3176 	mov	a,#0x0F
   10E5 C0 E0              3177 	push	acc
   10E7 75 82 03           3178 	mov	dpl,#0x03
   10EA 12 00 F1           3179 	lcall	_Write7219
   10ED 15 81              3180 	dec	sp
   10EF D0 01              3181 	pop	ar1
   10F1 D0 00              3182 	pop	ar0
   10F3 D0 07              3183 	pop	ar7
   10F5                    3184 00248$:
                           3185 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:385: Write7219(5, open_close_time[4] % 10);
   10F5 C0 00              3186 	push	ar0
   10F7 E5 25              3187 	mov	a,_bp
   10F9 24 0A              3188 	add	a,#0x0a
   10FB F8                 3189 	mov	r0,a
   10FC 86 00              3190 	mov	ar0,@r0
   10FE 86 06              3191 	mov	ar6,@r0
   1100 D0 00              3192 	pop	ar0
   1102 75 F0 0A           3193 	mov	b,#0x0a
   1105 EE                 3194 	mov	a,r6
   1106 C2 D5              3195 	clr	F0
   1108 30 E7 04           3196 	jnb	acc.7,00568$
   110B D2 D5              3197 	setb	F0
   110D F4                 3198 	cpl	a
   110E 04                 3199 	inc	a
   110F                    3200 00568$:
   110F 84                 3201 	div	ab
   1110 E5 F0              3202 	mov	a,b
   1112 30 D5 02           3203 	jnb	F0,00569$
   1115 F4                 3204 	cpl	a
   1116 04                 3205 	inc	a
   1117                    3206 00569$:
   1117 FE                 3207 	mov	r6,a
   1118 C0 07              3208 	push	ar7
   111A C0 00              3209 	push	ar0
   111C C0 01              3210 	push	ar1
   111E C0 06              3211 	push	ar6
   1120 75 82 05           3212 	mov	dpl,#0x05
   1123 12 00 F1           3213 	lcall	_Write7219
   1126 15 81              3214 	dec	sp
   1128 D0 01              3215 	pop	ar1
   112A D0 00              3216 	pop	ar0
   112C D0 07              3217 	pop	ar7
                           3218 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:386: Write7219(6, open_close_time[4] / 10);
   112E C0 00              3219 	push	ar0
   1130 E5 25              3220 	mov	a,_bp
   1132 24 0A              3221 	add	a,#0x0a
   1134 F8                 3222 	mov	r0,a
   1135 86 00              3223 	mov	ar0,@r0
   1137 86 06              3224 	mov	ar6,@r0
   1139 D0 00              3225 	pop	ar0
   113B C2 D5              3226 	clr	F0
   113D 75 F0 0A           3227 	mov	b,#0x0a
   1140 EE                 3228 	mov	a,r6
   1141 30 E7 04           3229 	jnb	acc.7,00570$
   1144 B2 D5              3230 	cpl	F0
   1146 F4                 3231 	cpl	a
   1147 04                 3232 	inc	a
   1148                    3233 00570$:
   1148 84                 3234 	div	ab
   1149 30 D5 02           3235 	jnb	F0,00571$
   114C F4                 3236 	cpl	a
   114D 04                 3237 	inc	a
   114E                    3238 00571$:
   114E FE                 3239 	mov	r6,a
   114F C0 07              3240 	push	ar7
   1151 C0 00              3241 	push	ar0
   1153 C0 01              3242 	push	ar1
   1155 C0 06              3243 	push	ar6
   1157 75 82 06           3244 	mov	dpl,#0x06
   115A 12 00 F1           3245 	lcall	_Write7219
   115D 15 81              3246 	dec	sp
   115F D0 01              3247 	pop	ar1
   1161 D0 00              3248 	pop	ar0
   1163 D0 07              3249 	pop	ar7
                           3250 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:387: Write7219(7, open_close_time[3] % 10); 
   1165 C0 00              3251 	push	ar0
   1167 E5 25              3252 	mov	a,_bp
   1169 24 09              3253 	add	a,#0x09
   116B F8                 3254 	mov	r0,a
   116C 86 00              3255 	mov	ar0,@r0
   116E 86 06              3256 	mov	ar6,@r0
   1170 D0 00              3257 	pop	ar0
   1172 75 F0 0A           3258 	mov	b,#0x0a
   1175 EE                 3259 	mov	a,r6
   1176 C2 D5              3260 	clr	F0
   1178 30 E7 04           3261 	jnb	acc.7,00572$
   117B D2 D5              3262 	setb	F0
   117D F4                 3263 	cpl	a
   117E 04                 3264 	inc	a
   117F                    3265 00572$:
   117F 84                 3266 	div	ab
   1180 E5 F0              3267 	mov	a,b
   1182 30 D5 02           3268 	jnb	F0,00573$
   1185 F4                 3269 	cpl	a
   1186 04                 3270 	inc	a
   1187                    3271 00573$:
   1187 FE                 3272 	mov	r6,a
   1188 C0 07              3273 	push	ar7
   118A C0 00              3274 	push	ar0
   118C C0 01              3275 	push	ar1
   118E C0 06              3276 	push	ar6
   1190 75 82 07           3277 	mov	dpl,#0x07
   1193 12 00 F1           3278 	lcall	_Write7219
   1196 15 81              3279 	dec	sp
   1198 D0 01              3280 	pop	ar1
   119A D0 00              3281 	pop	ar0
   119C D0 07              3282 	pop	ar7
                           3283 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:388: Write7219(8, open_close_time[3] / 10);
   119E C0 00              3284 	push	ar0
   11A0 E5 25              3285 	mov	a,_bp
   11A2 24 09              3286 	add	a,#0x09
   11A4 F8                 3287 	mov	r0,a
   11A5 86 00              3288 	mov	ar0,@r0
   11A7 86 06              3289 	mov	ar6,@r0
   11A9 D0 00              3290 	pop	ar0
   11AB C2 D5              3291 	clr	F0
   11AD 75 F0 0A           3292 	mov	b,#0x0a
   11B0 EE                 3293 	mov	a,r6
   11B1 30 E7 04           3294 	jnb	acc.7,00574$
   11B4 B2 D5              3295 	cpl	F0
   11B6 F4                 3296 	cpl	a
   11B7 04                 3297 	inc	a
   11B8                    3298 00574$:
   11B8 84                 3299 	div	ab
   11B9 30 D5 02           3300 	jnb	F0,00575$
   11BC F4                 3301 	cpl	a
   11BD 04                 3302 	inc	a
   11BE                    3303 00575$:
   11BE FE                 3304 	mov	r6,a
   11BF C0 07              3305 	push	ar7
   11C1 C0 00              3306 	push	ar0
   11C3 C0 01              3307 	push	ar1
   11C5 C0 06              3308 	push	ar6
   11C7 75 82 08           3309 	mov	dpl,#0x08
   11CA 12 00 F1           3310 	lcall	_Write7219
   11CD 15 81              3311 	dec	sp
   11CF D0 01              3312 	pop	ar1
   11D1 D0 00              3313 	pop	ar0
   11D3 D0 07              3314 	pop	ar7
   11D5                    3315 00256$:
                           3316 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:390: Write7219(2, 2);
   11D5 C0 07              3317 	push	ar7
   11D7 C0 00              3318 	push	ar0
   11D9 C0 01              3319 	push	ar1
   11DB 74 02              3320 	mov	a,#0x02
   11DD C0 E0              3321 	push	acc
   11DF 75 82 02           3322 	mov	dpl,#0x02
   11E2 12 00 F1           3323 	lcall	_Write7219
   11E5 15 81              3324 	dec	sp
   11E7 D0 01              3325 	pop	ar1
   11E9 D0 00              3326 	pop	ar0
   11EB D0 07              3327 	pop	ar7
   11ED                    3328 00259$:
                           3329 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:392: Write7219(1, 2);
   11ED C0 07              3330 	push	ar7
   11EF C0 00              3331 	push	ar0
   11F1 C0 01              3332 	push	ar1
   11F3 74 02              3333 	mov	a,#0x02
   11F5 C0 E0              3334 	push	acc
   11F7 75 82 01           3335 	mov	dpl,#0x01
   11FA 12 00 F1           3336 	lcall	_Write7219
   11FD 15 81              3337 	dec	sp
   11FF D0 01              3338 	pop	ar1
   1201 D0 00              3339 	pop	ar0
   1203 D0 07              3340 	pop	ar7
                           3341 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:393: if (open_close_time[0] == T_hour && open_close_time[1] == T_min && open_close_time[2] == T_sec) {
   1205 E6                 3342 	mov	a,@r0
   1206 FE                 3343 	mov	r6,a
   1207 B5 1C 26           3344 	cjne	a,_T_hour,00265$
   120A E7                 3345 	mov	a,@r1
   120B FE                 3346 	mov	r6,a
   120C B5 1D 21           3347 	cjne	a,_T_min,00265$
   120F C0 00              3348 	push	ar0
   1211 A8 07              3349 	mov	r0,ar7
   1213 86 06              3350 	mov	ar6,@r0
   1215 D0 00              3351 	pop	ar0
   1217 EE                 3352 	mov	a,r6
   1218 B5 1E 15           3353 	cjne	a,_T_sec,00265$
                           3354 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:394: server_action(1);
   121B 90 00 01           3355 	mov	dptr,#0x0001
   121E C0 07              3356 	push	ar7
   1220 C0 00              3357 	push	ar0
   1222 C0 01              3358 	push	ar1
   1224 12 03 0F           3359 	lcall	_server_action
   1227 D0 01              3360 	pop	ar1
   1229 D0 00              3361 	pop	ar0
   122B D0 07              3362 	pop	ar7
   122D 02 1A D4           3363 	ljmp	00299$
   1230                    3364 00265$:
                           3365 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:395: } else if (open_close_time[3] == T_hour && open_close_time[4] == T_min && open_close_time[5] == T_sec) {
   1230 C0 00              3366 	push	ar0
   1232 E5 25              3367 	mov	a,_bp
   1234 24 09              3368 	add	a,#0x09
   1236 F8                 3369 	mov	r0,a
   1237 86 00              3370 	mov	ar0,@r0
   1239 86 06              3371 	mov	ar6,@r0
   123B D0 00              3372 	pop	ar0
   123D EE                 3373 	mov	a,r6
   123E B5 1C 02           3374 	cjne	a,_T_hour,00582$
   1241 80 03              3375 	sjmp	00583$
   1243                    3376 00582$:
   1243 02 1A D4           3377 	ljmp	00299$
   1246                    3378 00583$:
   1246 C0 00              3379 	push	ar0
   1248 E5 25              3380 	mov	a,_bp
   124A 24 0A              3381 	add	a,#0x0a
   124C F8                 3382 	mov	r0,a
   124D 86 00              3383 	mov	ar0,@r0
   124F 86 06              3384 	mov	ar6,@r0
   1251 D0 00              3385 	pop	ar0
   1253 EE                 3386 	mov	a,r6
   1254 B5 1D 02           3387 	cjne	a,_T_min,00584$
   1257 80 03              3388 	sjmp	00585$
   1259                    3389 00584$:
   1259 02 1A D4           3390 	ljmp	00299$
   125C                    3391 00585$:
   125C C0 00              3392 	push	ar0
   125E E5 25              3393 	mov	a,_bp
   1260 24 0B              3394 	add	a,#0x0b
   1262 F8                 3395 	mov	r0,a
   1263 86 00              3396 	mov	ar0,@r0
   1265 86 06              3397 	mov	ar6,@r0
   1267 D0 00              3398 	pop	ar0
   1269 EE                 3399 	mov	a,r6
   126A B5 1E 02           3400 	cjne	a,_T_sec,00586$
   126D 80 03              3401 	sjmp	00587$
   126F                    3402 00586$:
   126F 02 1A D4           3403 	ljmp	00299$
   1272                    3404 00587$:
                           3405 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:396: server_action(2);
   1272 90 00 02           3406 	mov	dptr,#0x0002
   1275 C0 07              3407 	push	ar7
   1277 C0 00              3408 	push	ar0
   1279 C0 01              3409 	push	ar1
   127B 12 03 0F           3410 	lcall	_server_action
   127E D0 01              3411 	pop	ar1
   1280 D0 00              3412 	pop	ar0
   1282 D0 07              3413 	pop	ar7
   1284 02 1A D4           3414 	ljmp	00299$
   1287                    3415 00295$:
                           3416 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:398: } else if (mode == 3) { // 顯示當前時間
   1287 C0 00              3417 	push	ar0
   1289 E5 25              3418 	mov	a,_bp
   128B 24 08              3419 	add	a,#0x08
   128D F8                 3420 	mov	r0,a
   128E B6 03 02           3421 	cjne	@r0,#0x03,00588$
   1291 80 05              3422 	sjmp	00589$
   1293                    3423 00588$:
   1293 D0 00              3424 	pop	ar0
   1295 02 13 A5           3425 	ljmp	00292$
   1298                    3426 00589$:
   1298 D0 00              3427 	pop	ar0
                           3428 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:399: Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 3);
   129A C0 07              3429 	push	ar7
   129C 75 F0 0A           3430 	mov	b,#0x0a
   129F E5 1E              3431 	mov	a,_T_sec
   12A1 C2 D5              3432 	clr	F0
   12A3 30 E7 04           3433 	jnb	acc.7,00590$
   12A6 D2 D5              3434 	setb	F0
   12A8 F4                 3435 	cpl	a
   12A9 04                 3436 	inc	a
   12AA                    3437 00590$:
   12AA 84                 3438 	div	ab
   12AB E5 F0              3439 	mov	a,b
   12AD 30 D5 02           3440 	jnb	F0,00591$
   12B0 F4                 3441 	cpl	a
   12B1 04                 3442 	inc	a
   12B2                    3443 00591$:
   12B2 FE                 3444 	mov	r6,a
   12B3 FA                 3445 	mov	r2,a
   12B4 33                 3446 	rlc	a
   12B5 95 E0              3447 	subb	a,acc
   12B7 FB                 3448 	mov	r3,a
   12B8 C2 D5              3449 	clr	F0
   12BA 75 F0 0A           3450 	mov	b,#0x0a
   12BD E5 1E              3451 	mov	a,_T_sec
   12BF 30 E7 04           3452 	jnb	acc.7,00592$
   12C2 B2 D5              3453 	cpl	F0
   12C4 F4                 3454 	cpl	a
   12C5 04                 3455 	inc	a
   12C6                    3456 00592$:
   12C6 84                 3457 	div	ab
   12C7 30 D5 02           3458 	jnb	F0,00593$
   12CA F4                 3459 	cpl	a
   12CB 04                 3460 	inc	a
   12CC                    3461 00593$:
   12CC FC                 3462 	mov	r4,a
   12CD A2 D5              3463 	mov	c,F0
   12CF 95 E0              3464 	subb	a,acc
   12D1 FD                 3465 	mov	r5,a
   12D2 75 F0 0A           3466 	mov	b,#0x0a
   12D5 E5 1D              3467 	mov	a,_T_min
   12D7 C2 D5              3468 	clr	F0
   12D9 30 E7 04           3469 	jnb	acc.7,00594$
   12DC D2 D5              3470 	setb	F0
   12DE F4                 3471 	cpl	a
   12DF 04                 3472 	inc	a
   12E0                    3473 00594$:
   12E0 84                 3474 	div	ab
   12E1 E5 F0              3475 	mov	a,b
   12E3 30 D5 02           3476 	jnb	F0,00595$
   12E6 F4                 3477 	cpl	a
   12E7 04                 3478 	inc	a
   12E8                    3479 00595$:
   12E8 FE                 3480 	mov	r6,a
   12E9 C0 00              3481 	push	ar0
   12EB E5 25              3482 	mov	a,_bp
   12ED 24 10              3483 	add	a,#0x10
   12EF F8                 3484 	mov	r0,a
   12F0 A6 06              3485 	mov	@r0,ar6
   12F2 EE                 3486 	mov	a,r6
   12F3 33                 3487 	rlc	a
   12F4 95 E0              3488 	subb	a,acc
   12F6 08                 3489 	inc	r0
   12F7 F6                 3490 	mov	@r0,a
   12F8 E5 25              3491 	mov	a,_bp
   12FA 24 12              3492 	add	a,#0x12
   12FC F8                 3493 	mov	r0,a
   12FD C2 D5              3494 	clr	F0
   12FF 75 F0 0A           3495 	mov	b,#0x0a
   1302 E5 1D              3496 	mov	a,_T_min
   1304 30 E7 04           3497 	jnb	acc.7,00596$
   1307 B2 D5              3498 	cpl	F0
   1309 F4                 3499 	cpl	a
   130A 04                 3500 	inc	a
   130B                    3501 00596$:
   130B 84                 3502 	div	ab
   130C 30 D5 02           3503 	jnb	F0,00597$
   130F F4                 3504 	cpl	a
   1310 04                 3505 	inc	a
   1311                    3506 00597$:
   1311 F6                 3507 	mov	@r0,a
   1312 A2 D5              3508 	mov	c,F0
   1314 95 E0              3509 	subb	a,acc
   1316 08                 3510 	inc	r0
   1317 F6                 3511 	mov	@r0,a
   1318 D0 00              3512 	pop	ar0
   131A 75 F0 0A           3513 	mov	b,#0x0a
   131D E5 1C              3514 	mov	a,_T_hour
   131F C2 D5              3515 	clr	F0
   1321 30 E7 04           3516 	jnb	acc.7,00598$
   1324 D2 D5              3517 	setb	F0
   1326 F4                 3518 	cpl	a
   1327 04                 3519 	inc	a
   1328                    3520 00598$:
   1328 84                 3521 	div	ab
   1329 E5 F0              3522 	mov	a,b
   132B 30 D5 02           3523 	jnb	F0,00599$
   132E F4                 3524 	cpl	a
   132F 04                 3525 	inc	a
   1330                    3526 00599$:
   1330 FE                 3527 	mov	r6,a
   1331 33                 3528 	rlc	a
   1332 95 E0              3529 	subb	a,acc
   1334 FF                 3530 	mov	r7,a
   1335 C2 D5              3531 	clr	F0
   1337 75 F0 0A           3532 	mov	b,#0x0a
   133A E5 1C              3533 	mov	a,_T_hour
   133C 30 E7 04           3534 	jnb	acc.7,00600$
   133F B2 D5              3535 	cpl	F0
   1341 F4                 3536 	cpl	a
   1342 04                 3537 	inc	a
   1343                    3538 00600$:
   1343 84                 3539 	div	ab
   1344 30 D5 02           3540 	jnb	F0,00601$
   1347 F4                 3541 	cpl	a
   1348 04                 3542 	inc	a
   1349                    3543 00601$:
   1349 F5 82              3544 	mov	dpl,a
   134B A2 D5              3545 	mov	c,F0
   134D 95 E0              3546 	subb	a,acc
   134F F5 83              3547 	mov	dph,a
   1351 C0 07              3548 	push	ar7
   1353 C0 00              3549 	push	ar0
   1355 C0 01              3550 	push	ar1
   1357 74 03              3551 	mov	a,#0x03
   1359 C0 E0              3552 	push	acc
   135B E4                 3553 	clr	a
   135C C0 E0              3554 	push	acc
   135E 74 0F              3555 	mov	a,#0x0F
   1360 C0 E0              3556 	push	acc
   1362 E4                 3557 	clr	a
   1363 C0 E0              3558 	push	acc
   1365 C0 02              3559 	push	ar2
   1367 C0 03              3560 	push	ar3
   1369 C0 04              3561 	push	ar4
   136B C0 05              3562 	push	ar5
   136D 85 00 F0           3563 	mov	b,ar0
   1370 E5 25              3564 	mov	a,_bp
   1372 24 10              3565 	add	a,#0x10
   1374 F8                 3566 	mov	r0,a
   1375 E6                 3567 	mov	a,@r0
   1376 C0 E0              3568 	push	acc
   1378 08                 3569 	inc	r0
   1379 E6                 3570 	mov	a,@r0
   137A C0 E0              3571 	push	acc
   137C A8 F0              3572 	mov	r0,b
   137E 85 00 F0           3573 	mov	b,ar0
   1381 E5 25              3574 	mov	a,_bp
   1383 24 12              3575 	add	a,#0x12
   1385 F8                 3576 	mov	r0,a
   1386 E6                 3577 	mov	a,@r0
   1387 C0 E0              3578 	push	acc
   1389 08                 3579 	inc	r0
   138A E6                 3580 	mov	a,@r0
   138B C0 E0              3581 	push	acc
   138D C0 06              3582 	push	ar6
   138F C0 07              3583 	push	ar7
   1391 12 02 84           3584 	lcall	_Write7219ALL
   1394 E5 81              3585 	mov	a,sp
   1396 24 F2              3586 	add	a,#0xf2
   1398 F5 81              3587 	mov	sp,a
   139A D0 01              3588 	pop	ar1
   139C D0 00              3589 	pop	ar0
   139E D0 07              3590 	pop	ar7
   13A0 D0 07              3591 	pop	ar7
   13A2 02 1A D4           3592 	ljmp	00299$
   13A5                    3593 00292$:
                           3594 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:400: } else if (mode == 4) {
   13A5 C0 00              3595 	push	ar0
   13A7 E5 25              3596 	mov	a,_bp
   13A9 24 08              3597 	add	a,#0x08
   13AB F8                 3598 	mov	r0,a
   13AC B6 04 02           3599 	cjne	@r0,#0x04,00602$
   13AF 80 05              3600 	sjmp	00603$
   13B1                    3601 00602$:
   13B1 D0 00              3602 	pop	ar0
   13B3 02 19 47           3603 	ljmp	00289$
   13B6                    3604 00603$:
   13B6 D0 00              3605 	pop	ar0
                           3606 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:401: if (change_time == 0) {
   13B8 E5 21              3607 	mov	a,_change_time
   13BA 60 03              3608 	jz	00604$
   13BC 02 15 9F           3609 	ljmp	00284$
   13BF                    3610 00604$:
                           3611 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:402: if (time_count <= 500) {
   13BF C3                 3612 	clr	c
   13C0 74 F4              3613 	mov	a,#0xF4
   13C2 95 18              3614 	subb	a,_time_count
   13C4 74 01              3615 	mov	a,#0x01
   13C6 95 19              3616 	subb	a,(_time_count + 1)
   13C8 50 03              3617 	jnc	00605$
   13CA 02 14 D8           3618 	ljmp	00270$
   13CD                    3619 00605$:
                           3620 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:403: Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 4);
   13CD C0 07              3621 	push	ar7
   13CF 75 F0 0A           3622 	mov	b,#0x0a
   13D2 E5 1E              3623 	mov	a,_T_sec
   13D4 C2 D5              3624 	clr	F0
   13D6 30 E7 04           3625 	jnb	acc.7,00606$
   13D9 D2 D5              3626 	setb	F0
   13DB F4                 3627 	cpl	a
   13DC 04                 3628 	inc	a
   13DD                    3629 00606$:
   13DD 84                 3630 	div	ab
   13DE E5 F0              3631 	mov	a,b
   13E0 30 D5 02           3632 	jnb	F0,00607$
   13E3 F4                 3633 	cpl	a
   13E4 04                 3634 	inc	a
   13E5                    3635 00607$:
   13E5 FE                 3636 	mov	r6,a
   13E6 FA                 3637 	mov	r2,a
   13E7 33                 3638 	rlc	a
   13E8 95 E0              3639 	subb	a,acc
   13EA FB                 3640 	mov	r3,a
   13EB C2 D5              3641 	clr	F0
   13ED 75 F0 0A           3642 	mov	b,#0x0a
   13F0 E5 1E              3643 	mov	a,_T_sec
   13F2 30 E7 04           3644 	jnb	acc.7,00608$
   13F5 B2 D5              3645 	cpl	F0
   13F7 F4                 3646 	cpl	a
   13F8 04                 3647 	inc	a
   13F9                    3648 00608$:
   13F9 84                 3649 	div	ab
   13FA 30 D5 02           3650 	jnb	F0,00609$
   13FD F4                 3651 	cpl	a
   13FE 04                 3652 	inc	a
   13FF                    3653 00609$:
   13FF FC                 3654 	mov	r4,a
   1400 A2 D5              3655 	mov	c,F0
   1402 95 E0              3656 	subb	a,acc
   1404 FD                 3657 	mov	r5,a
   1405 75 F0 0A           3658 	mov	b,#0x0a
   1408 E5 1D              3659 	mov	a,_T_min
   140A C2 D5              3660 	clr	F0
   140C 30 E7 04           3661 	jnb	acc.7,00610$
   140F D2 D5              3662 	setb	F0
   1411 F4                 3663 	cpl	a
   1412 04                 3664 	inc	a
   1413                    3665 00610$:
   1413 84                 3666 	div	ab
   1414 E5 F0              3667 	mov	a,b
   1416 30 D5 02           3668 	jnb	F0,00611$
   1419 F4                 3669 	cpl	a
   141A 04                 3670 	inc	a
   141B                    3671 00611$:
   141B FE                 3672 	mov	r6,a
   141C C0 00              3673 	push	ar0
   141E E5 25              3674 	mov	a,_bp
   1420 24 0E              3675 	add	a,#0x0e
   1422 F8                 3676 	mov	r0,a
   1423 A6 06              3677 	mov	@r0,ar6
   1425 EE                 3678 	mov	a,r6
   1426 33                 3679 	rlc	a
   1427 95 E0              3680 	subb	a,acc
   1429 08                 3681 	inc	r0
   142A F6                 3682 	mov	@r0,a
   142B E5 25              3683 	mov	a,_bp
   142D 24 0C              3684 	add	a,#0x0c
   142F F8                 3685 	mov	r0,a
   1430 C2 D5              3686 	clr	F0
   1432 75 F0 0A           3687 	mov	b,#0x0a
   1435 E5 1D              3688 	mov	a,_T_min
   1437 30 E7 04           3689 	jnb	acc.7,00612$
   143A B2 D5              3690 	cpl	F0
   143C F4                 3691 	cpl	a
   143D 04                 3692 	inc	a
   143E                    3693 00612$:
   143E 84                 3694 	div	ab
   143F 30 D5 02           3695 	jnb	F0,00613$
   1442 F4                 3696 	cpl	a
   1443 04                 3697 	inc	a
   1444                    3698 00613$:
   1444 F6                 3699 	mov	@r0,a
   1445 A2 D5              3700 	mov	c,F0
   1447 95 E0              3701 	subb	a,acc
   1449 08                 3702 	inc	r0
   144A F6                 3703 	mov	@r0,a
   144B D0 00              3704 	pop	ar0
   144D 75 F0 0A           3705 	mov	b,#0x0a
   1450 E5 1C              3706 	mov	a,_T_hour
   1452 C2 D5              3707 	clr	F0
   1454 30 E7 04           3708 	jnb	acc.7,00614$
   1457 D2 D5              3709 	setb	F0
   1459 F4                 3710 	cpl	a
   145A 04                 3711 	inc	a
   145B                    3712 00614$:
   145B 84                 3713 	div	ab
   145C E5 F0              3714 	mov	a,b
   145E 30 D5 02           3715 	jnb	F0,00615$
   1461 F4                 3716 	cpl	a
   1462 04                 3717 	inc	a
   1463                    3718 00615$:
   1463 FE                 3719 	mov	r6,a
   1464 33                 3720 	rlc	a
   1465 95 E0              3721 	subb	a,acc
   1467 FF                 3722 	mov	r7,a
   1468 C2 D5              3723 	clr	F0
   146A 75 F0 0A           3724 	mov	b,#0x0a
   146D E5 1C              3725 	mov	a,_T_hour
   146F 30 E7 04           3726 	jnb	acc.7,00616$
   1472 B2 D5              3727 	cpl	F0
   1474 F4                 3728 	cpl	a
   1475 04                 3729 	inc	a
   1476                    3730 00616$:
   1476 84                 3731 	div	ab
   1477 30 D5 02           3732 	jnb	F0,00617$
   147A F4                 3733 	cpl	a
   147B 04                 3734 	inc	a
   147C                    3735 00617$:
   147C F5 82              3736 	mov	dpl,a
   147E A2 D5              3737 	mov	c,F0
   1480 95 E0              3738 	subb	a,acc
   1482 F5 83              3739 	mov	dph,a
   1484 C0 07              3740 	push	ar7
   1486 C0 00              3741 	push	ar0
   1488 C0 01              3742 	push	ar1
   148A 74 04              3743 	mov	a,#0x04
   148C C0 E0              3744 	push	acc
   148E E4                 3745 	clr	a
   148F C0 E0              3746 	push	acc
   1491 74 0F              3747 	mov	a,#0x0F
   1493 C0 E0              3748 	push	acc
   1495 E4                 3749 	clr	a
   1496 C0 E0              3750 	push	acc
   1498 C0 02              3751 	push	ar2
   149A C0 03              3752 	push	ar3
   149C C0 04              3753 	push	ar4
   149E C0 05              3754 	push	ar5
   14A0 85 00 F0           3755 	mov	b,ar0
   14A3 E5 25              3756 	mov	a,_bp
   14A5 24 0E              3757 	add	a,#0x0e
   14A7 F8                 3758 	mov	r0,a
   14A8 E6                 3759 	mov	a,@r0
   14A9 C0 E0              3760 	push	acc
   14AB 08                 3761 	inc	r0
   14AC E6                 3762 	mov	a,@r0
   14AD C0 E0              3763 	push	acc
   14AF A8 F0              3764 	mov	r0,b
   14B1 85 00 F0           3765 	mov	b,ar0
   14B4 E5 25              3766 	mov	a,_bp
   14B6 24 0C              3767 	add	a,#0x0c
   14B8 F8                 3768 	mov	r0,a
   14B9 E6                 3769 	mov	a,@r0
   14BA C0 E0              3770 	push	acc
   14BC 08                 3771 	inc	r0
   14BD E6                 3772 	mov	a,@r0
   14BE C0 E0              3773 	push	acc
   14C0 C0 06              3774 	push	ar6
   14C2 C0 07              3775 	push	ar7
   14C4 12 02 84           3776 	lcall	_Write7219ALL
   14C7 E5 81              3777 	mov	a,sp
   14C9 24 F2              3778 	add	a,#0xf2
   14CB F5 81              3779 	mov	sp,a
   14CD D0 01              3780 	pop	ar1
   14CF D0 00              3781 	pop	ar0
   14D1 D0 07              3782 	pop	ar7
   14D3 D0 07              3783 	pop	ar7
   14D5 02 1A D4           3784 	ljmp	00299$
   14D8                    3785 00270$:
                           3786 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:405: Write7219ALL(0x0f, 0x0f, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 4);
   14D8 C0 07              3787 	push	ar7
   14DA 75 F0 0A           3788 	mov	b,#0x0a
   14DD E5 1E              3789 	mov	a,_T_sec
   14DF C2 D5              3790 	clr	F0
   14E1 30 E7 04           3791 	jnb	acc.7,00618$
   14E4 D2 D5              3792 	setb	F0
   14E6 F4                 3793 	cpl	a
   14E7 04                 3794 	inc	a
   14E8                    3795 00618$:
   14E8 84                 3796 	div	ab
   14E9 E5 F0              3797 	mov	a,b
   14EB 30 D5 02           3798 	jnb	F0,00619$
   14EE F4                 3799 	cpl	a
   14EF 04                 3800 	inc	a
   14F0                    3801 00619$:
   14F0 FE                 3802 	mov	r6,a
   14F1 FA                 3803 	mov	r2,a
   14F2 33                 3804 	rlc	a
   14F3 95 E0              3805 	subb	a,acc
   14F5 FB                 3806 	mov	r3,a
   14F6 C2 D5              3807 	clr	F0
   14F8 75 F0 0A           3808 	mov	b,#0x0a
   14FB E5 1E              3809 	mov	a,_T_sec
   14FD 30 E7 04           3810 	jnb	acc.7,00620$
   1500 B2 D5              3811 	cpl	F0
   1502 F4                 3812 	cpl	a
   1503 04                 3813 	inc	a
   1504                    3814 00620$:
   1504 84                 3815 	div	ab
   1505 30 D5 02           3816 	jnb	F0,00621$
   1508 F4                 3817 	cpl	a
   1509 04                 3818 	inc	a
   150A                    3819 00621$:
   150A FC                 3820 	mov	r4,a
   150B A2 D5              3821 	mov	c,F0
   150D 95 E0              3822 	subb	a,acc
   150F FD                 3823 	mov	r5,a
   1510 75 F0 0A           3824 	mov	b,#0x0a
   1513 E5 1D              3825 	mov	a,_T_min
   1515 C2 D5              3826 	clr	F0
   1517 30 E7 04           3827 	jnb	acc.7,00622$
   151A D2 D5              3828 	setb	F0
   151C F4                 3829 	cpl	a
   151D 04                 3830 	inc	a
   151E                    3831 00622$:
   151E 84                 3832 	div	ab
   151F E5 F0              3833 	mov	a,b
   1521 30 D5 02           3834 	jnb	F0,00623$
   1524 F4                 3835 	cpl	a
   1525 04                 3836 	inc	a
   1526                    3837 00623$:
   1526 FE                 3838 	mov	r6,a
   1527 C0 00              3839 	push	ar0
   1529 E5 25              3840 	mov	a,_bp
   152B 24 0E              3841 	add	a,#0x0e
   152D F8                 3842 	mov	r0,a
   152E A6 06              3843 	mov	@r0,ar6
   1530 EE                 3844 	mov	a,r6
   1531 33                 3845 	rlc	a
   1532 95 E0              3846 	subb	a,acc
   1534 08                 3847 	inc	r0
   1535 F6                 3848 	mov	@r0,a
   1536 D0 00              3849 	pop	ar0
   1538 C2 D5              3850 	clr	F0
   153A 75 F0 0A           3851 	mov	b,#0x0a
   153D E5 1D              3852 	mov	a,_T_min
   153F 30 E7 04           3853 	jnb	acc.7,00624$
   1542 B2 D5              3854 	cpl	F0
   1544 F4                 3855 	cpl	a
   1545 04                 3856 	inc	a
   1546                    3857 00624$:
   1546 84                 3858 	div	ab
   1547 30 D5 02           3859 	jnb	F0,00625$
   154A F4                 3860 	cpl	a
   154B 04                 3861 	inc	a
   154C                    3862 00625$:
   154C FE                 3863 	mov	r6,a
   154D A2 D5              3864 	mov	c,F0
   154F 95 E0              3865 	subb	a,acc
   1551 FF                 3866 	mov	r7,a
   1552 C0 07              3867 	push	ar7
   1554 C0 00              3868 	push	ar0
   1556 C0 01              3869 	push	ar1
   1558 74 04              3870 	mov	a,#0x04
   155A C0 E0              3871 	push	acc
   155C E4                 3872 	clr	a
   155D C0 E0              3873 	push	acc
   155F 74 0F              3874 	mov	a,#0x0F
   1561 C0 E0              3875 	push	acc
   1563 E4                 3876 	clr	a
   1564 C0 E0              3877 	push	acc
   1566 C0 02              3878 	push	ar2
   1568 C0 03              3879 	push	ar3
   156A C0 04              3880 	push	ar4
   156C C0 05              3881 	push	ar5
   156E 85 00 F0           3882 	mov	b,ar0
   1571 E5 25              3883 	mov	a,_bp
   1573 24 0E              3884 	add	a,#0x0e
   1575 F8                 3885 	mov	r0,a
   1576 E6                 3886 	mov	a,@r0
   1577 C0 E0              3887 	push	acc
   1579 08                 3888 	inc	r0
   157A E6                 3889 	mov	a,@r0
   157B C0 E0              3890 	push	acc
   157D C0 06              3891 	push	ar6
   157F C0 07              3892 	push	ar7
   1581 74 0F              3893 	mov	a,#0x0F
   1583 C0 E0              3894 	push	acc
   1585 E4                 3895 	clr	a
   1586 C0 E0              3896 	push	acc
   1588 90 00 0F           3897 	mov	dptr,#0x000F
   158B 12 02 84           3898 	lcall	_Write7219ALL
   158E E5 81              3899 	mov	a,sp
   1590 24 F2              3900 	add	a,#0xf2
   1592 F5 81              3901 	mov	sp,a
   1594 D0 01              3902 	pop	ar1
   1596 D0 00              3903 	pop	ar0
   1598 D0 07              3904 	pop	ar7
   159A D0 07              3905 	pop	ar7
   159C 02 1A D4           3906 	ljmp	00299$
   159F                    3907 00284$:
                           3908 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:407: } else if (change_time == 1) {
   159F 74 01              3909 	mov	a,#0x01
   15A1 B5 21 02           3910 	cjne	a,_change_time,00626$
   15A4 80 03              3911 	sjmp	00627$
   15A6                    3912 00626$:
   15A6 02 17 73           3913 	ljmp	00281$
   15A9                    3914 00627$:
                           3915 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:408: if (time_count <= 500) {
   15A9 C3                 3916 	clr	c
   15AA 74 F4              3917 	mov	a,#0xF4
   15AC 95 18              3918 	subb	a,_time_count
   15AE 74 01              3919 	mov	a,#0x01
   15B0 95 19              3920 	subb	a,(_time_count + 1)
   15B2 50 03              3921 	jnc	00628$
   15B4 02 16 C2           3922 	ljmp	00273$
   15B7                    3923 00628$:
                           3924 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:409: Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 4);
   15B7 C0 07              3925 	push	ar7
   15B9 75 F0 0A           3926 	mov	b,#0x0a
   15BC E5 1E              3927 	mov	a,_T_sec
   15BE C2 D5              3928 	clr	F0
   15C0 30 E7 04           3929 	jnb	acc.7,00629$
   15C3 D2 D5              3930 	setb	F0
   15C5 F4                 3931 	cpl	a
   15C6 04                 3932 	inc	a
   15C7                    3933 00629$:
   15C7 84                 3934 	div	ab
   15C8 E5 F0              3935 	mov	a,b
   15CA 30 D5 02           3936 	jnb	F0,00630$
   15CD F4                 3937 	cpl	a
   15CE 04                 3938 	inc	a
   15CF                    3939 00630$:
   15CF FE                 3940 	mov	r6,a
   15D0 FA                 3941 	mov	r2,a
   15D1 33                 3942 	rlc	a
   15D2 95 E0              3943 	subb	a,acc
   15D4 FB                 3944 	mov	r3,a
   15D5 C2 D5              3945 	clr	F0
   15D7 75 F0 0A           3946 	mov	b,#0x0a
   15DA E5 1E              3947 	mov	a,_T_sec
   15DC 30 E7 04           3948 	jnb	acc.7,00631$
   15DF B2 D5              3949 	cpl	F0
   15E1 F4                 3950 	cpl	a
   15E2 04                 3951 	inc	a
   15E3                    3952 00631$:
   15E3 84                 3953 	div	ab
   15E4 30 D5 02           3954 	jnb	F0,00632$
   15E7 F4                 3955 	cpl	a
   15E8 04                 3956 	inc	a
   15E9                    3957 00632$:
   15E9 FC                 3958 	mov	r4,a
   15EA A2 D5              3959 	mov	c,F0
   15EC 95 E0              3960 	subb	a,acc
   15EE FD                 3961 	mov	r5,a
   15EF 75 F0 0A           3962 	mov	b,#0x0a
   15F2 E5 1D              3963 	mov	a,_T_min
   15F4 C2 D5              3964 	clr	F0
   15F6 30 E7 04           3965 	jnb	acc.7,00633$
   15F9 D2 D5              3966 	setb	F0
   15FB F4                 3967 	cpl	a
   15FC 04                 3968 	inc	a
   15FD                    3969 00633$:
   15FD 84                 3970 	div	ab
   15FE E5 F0              3971 	mov	a,b
   1600 30 D5 02           3972 	jnb	F0,00634$
   1603 F4                 3973 	cpl	a
   1604 04                 3974 	inc	a
   1605                    3975 00634$:
   1605 FE                 3976 	mov	r6,a
   1606 C0 00              3977 	push	ar0
   1608 E5 25              3978 	mov	a,_bp
   160A 24 0E              3979 	add	a,#0x0e
   160C F8                 3980 	mov	r0,a
   160D A6 06              3981 	mov	@r0,ar6
   160F EE                 3982 	mov	a,r6
   1610 33                 3983 	rlc	a
   1611 95 E0              3984 	subb	a,acc
   1613 08                 3985 	inc	r0
   1614 F6                 3986 	mov	@r0,a
   1615 E5 25              3987 	mov	a,_bp
   1617 24 0C              3988 	add	a,#0x0c
   1619 F8                 3989 	mov	r0,a
   161A C2 D5              3990 	clr	F0
   161C 75 F0 0A           3991 	mov	b,#0x0a
   161F E5 1D              3992 	mov	a,_T_min
   1621 30 E7 04           3993 	jnb	acc.7,00635$
   1624 B2 D5              3994 	cpl	F0
   1626 F4                 3995 	cpl	a
   1627 04                 3996 	inc	a
   1628                    3997 00635$:
   1628 84                 3998 	div	ab
   1629 30 D5 02           3999 	jnb	F0,00636$
   162C F4                 4000 	cpl	a
   162D 04                 4001 	inc	a
   162E                    4002 00636$:
   162E F6                 4003 	mov	@r0,a
   162F A2 D5              4004 	mov	c,F0
   1631 95 E0              4005 	subb	a,acc
   1633 08                 4006 	inc	r0
   1634 F6                 4007 	mov	@r0,a
   1635 D0 00              4008 	pop	ar0
   1637 75 F0 0A           4009 	mov	b,#0x0a
   163A E5 1C              4010 	mov	a,_T_hour
   163C C2 D5              4011 	clr	F0
   163E 30 E7 04           4012 	jnb	acc.7,00637$
   1641 D2 D5              4013 	setb	F0
   1643 F4                 4014 	cpl	a
   1644 04                 4015 	inc	a
   1645                    4016 00637$:
   1645 84                 4017 	div	ab
   1646 E5 F0              4018 	mov	a,b
   1648 30 D5 02           4019 	jnb	F0,00638$
   164B F4                 4020 	cpl	a
   164C 04                 4021 	inc	a
   164D                    4022 00638$:
   164D FE                 4023 	mov	r6,a
   164E 33                 4024 	rlc	a
   164F 95 E0              4025 	subb	a,acc
   1651 FF                 4026 	mov	r7,a
   1652 C2 D5              4027 	clr	F0
   1654 75 F0 0A           4028 	mov	b,#0x0a
   1657 E5 1C              4029 	mov	a,_T_hour
   1659 30 E7 04           4030 	jnb	acc.7,00639$
   165C B2 D5              4031 	cpl	F0
   165E F4                 4032 	cpl	a
   165F 04                 4033 	inc	a
   1660                    4034 00639$:
   1660 84                 4035 	div	ab
   1661 30 D5 02           4036 	jnb	F0,00640$
   1664 F4                 4037 	cpl	a
   1665 04                 4038 	inc	a
   1666                    4039 00640$:
   1666 F5 82              4040 	mov	dpl,a
   1668 A2 D5              4041 	mov	c,F0
   166A 95 E0              4042 	subb	a,acc
   166C F5 83              4043 	mov	dph,a
   166E C0 07              4044 	push	ar7
   1670 C0 00              4045 	push	ar0
   1672 C0 01              4046 	push	ar1
   1674 74 04              4047 	mov	a,#0x04
   1676 C0 E0              4048 	push	acc
   1678 E4                 4049 	clr	a
   1679 C0 E0              4050 	push	acc
   167B 74 0F              4051 	mov	a,#0x0F
   167D C0 E0              4052 	push	acc
   167F E4                 4053 	clr	a
   1680 C0 E0              4054 	push	acc
   1682 C0 02              4055 	push	ar2
   1684 C0 03              4056 	push	ar3
   1686 C0 04              4057 	push	ar4
   1688 C0 05              4058 	push	ar5
   168A 85 00 F0           4059 	mov	b,ar0
   168D E5 25              4060 	mov	a,_bp
   168F 24 0E              4061 	add	a,#0x0e
   1691 F8                 4062 	mov	r0,a
   1692 E6                 4063 	mov	a,@r0
   1693 C0 E0              4064 	push	acc
   1695 08                 4065 	inc	r0
   1696 E6                 4066 	mov	a,@r0
   1697 C0 E0              4067 	push	acc
   1699 A8 F0              4068 	mov	r0,b
   169B 85 00 F0           4069 	mov	b,ar0
   169E E5 25              4070 	mov	a,_bp
   16A0 24 0C              4071 	add	a,#0x0c
   16A2 F8                 4072 	mov	r0,a
   16A3 E6                 4073 	mov	a,@r0
   16A4 C0 E0              4074 	push	acc
   16A6 08                 4075 	inc	r0
   16A7 E6                 4076 	mov	a,@r0
   16A8 C0 E0              4077 	push	acc
   16AA C0 06              4078 	push	ar6
   16AC C0 07              4079 	push	ar7
   16AE 12 02 84           4080 	lcall	_Write7219ALL
   16B1 E5 81              4081 	mov	a,sp
   16B3 24 F2              4082 	add	a,#0xf2
   16B5 F5 81              4083 	mov	sp,a
   16B7 D0 01              4084 	pop	ar1
   16B9 D0 00              4085 	pop	ar0
   16BB D0 07              4086 	pop	ar7
   16BD D0 07              4087 	pop	ar7
   16BF 02 1A D4           4088 	ljmp	00299$
   16C2                    4089 00273$:
                           4090 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:411: Write7219ALL(T_hour / 10, T_hour % 10, 0x0f, 0x0f, T_sec / 10, T_sec % 10, 0x0f, 4);
   16C2 C0 07              4091 	push	ar7
   16C4 75 F0 0A           4092 	mov	b,#0x0a
   16C7 E5 1E              4093 	mov	a,_T_sec
   16C9 C2 D5              4094 	clr	F0
   16CB 30 E7 04           4095 	jnb	acc.7,00641$
   16CE D2 D5              4096 	setb	F0
   16D0 F4                 4097 	cpl	a
   16D1 04                 4098 	inc	a
   16D2                    4099 00641$:
   16D2 84                 4100 	div	ab
   16D3 E5 F0              4101 	mov	a,b
   16D5 30 D5 02           4102 	jnb	F0,00642$
   16D8 F4                 4103 	cpl	a
   16D9 04                 4104 	inc	a
   16DA                    4105 00642$:
   16DA FE                 4106 	mov	r6,a
   16DB FA                 4107 	mov	r2,a
   16DC 33                 4108 	rlc	a
   16DD 95 E0              4109 	subb	a,acc
   16DF FB                 4110 	mov	r3,a
   16E0 C2 D5              4111 	clr	F0
   16E2 75 F0 0A           4112 	mov	b,#0x0a
   16E5 E5 1E              4113 	mov	a,_T_sec
   16E7 30 E7 04           4114 	jnb	acc.7,00643$
   16EA B2 D5              4115 	cpl	F0
   16EC F4                 4116 	cpl	a
   16ED 04                 4117 	inc	a
   16EE                    4118 00643$:
   16EE 84                 4119 	div	ab
   16EF 30 D5 02           4120 	jnb	F0,00644$
   16F2 F4                 4121 	cpl	a
   16F3 04                 4122 	inc	a
   16F4                    4123 00644$:
   16F4 FC                 4124 	mov	r4,a
   16F5 A2 D5              4125 	mov	c,F0
   16F7 95 E0              4126 	subb	a,acc
   16F9 FD                 4127 	mov	r5,a
   16FA 75 F0 0A           4128 	mov	b,#0x0a
   16FD E5 1C              4129 	mov	a,_T_hour
   16FF C2 D5              4130 	clr	F0
   1701 30 E7 04           4131 	jnb	acc.7,00645$
   1704 D2 D5              4132 	setb	F0
   1706 F4                 4133 	cpl	a
   1707 04                 4134 	inc	a
   1708                    4135 00645$:
   1708 84                 4136 	div	ab
   1709 E5 F0              4137 	mov	a,b
   170B 30 D5 02           4138 	jnb	F0,00646$
   170E F4                 4139 	cpl	a
   170F 04                 4140 	inc	a
   1710                    4141 00646$:
   1710 FE                 4142 	mov	r6,a
   1711 33                 4143 	rlc	a
   1712 95 E0              4144 	subb	a,acc
   1714 FF                 4145 	mov	r7,a
   1715 C2 D5              4146 	clr	F0
   1717 75 F0 0A           4147 	mov	b,#0x0a
   171A E5 1C              4148 	mov	a,_T_hour
   171C 30 E7 04           4149 	jnb	acc.7,00647$
   171F B2 D5              4150 	cpl	F0
   1721 F4                 4151 	cpl	a
   1722 04                 4152 	inc	a
   1723                    4153 00647$:
   1723 84                 4154 	div	ab
   1724 30 D5 02           4155 	jnb	F0,00648$
   1727 F4                 4156 	cpl	a
   1728 04                 4157 	inc	a
   1729                    4158 00648$:
   1729 F5 82              4159 	mov	dpl,a
   172B A2 D5              4160 	mov	c,F0
   172D 95 E0              4161 	subb	a,acc
   172F F5 83              4162 	mov	dph,a
   1731 C0 07              4163 	push	ar7
   1733 C0 00              4164 	push	ar0
   1735 C0 01              4165 	push	ar1
   1737 74 04              4166 	mov	a,#0x04
   1739 C0 E0              4167 	push	acc
   173B E4                 4168 	clr	a
   173C C0 E0              4169 	push	acc
   173E 74 0F              4170 	mov	a,#0x0F
   1740 C0 E0              4171 	push	acc
   1742 E4                 4172 	clr	a
   1743 C0 E0              4173 	push	acc
   1745 C0 02              4174 	push	ar2
   1747 C0 03              4175 	push	ar3
   1749 C0 04              4176 	push	ar4
   174B C0 05              4177 	push	ar5
   174D 74 0F              4178 	mov	a,#0x0F
   174F C0 E0              4179 	push	acc
   1751 E4                 4180 	clr	a
   1752 C0 E0              4181 	push	acc
   1754 74 0F              4182 	mov	a,#0x0F
   1756 C0 E0              4183 	push	acc
   1758 E4                 4184 	clr	a
   1759 C0 E0              4185 	push	acc
   175B C0 06              4186 	push	ar6
   175D C0 07              4187 	push	ar7
   175F 12 02 84           4188 	lcall	_Write7219ALL
   1762 E5 81              4189 	mov	a,sp
   1764 24 F2              4190 	add	a,#0xf2
   1766 F5 81              4191 	mov	sp,a
   1768 D0 01              4192 	pop	ar1
   176A D0 00              4193 	pop	ar0
   176C D0 07              4194 	pop	ar7
   176E D0 07              4195 	pop	ar7
   1770 02 1A D4           4196 	ljmp	00299$
   1773                    4197 00281$:
                           4198 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:413: } else if (change_time == 2) {
   1773 74 02              4199 	mov	a,#0x02
   1775 B5 21 02           4200 	cjne	a,_change_time,00649$
   1778 80 03              4201 	sjmp	00650$
   177A                    4202 00649$:
   177A 02 1A D4           4203 	ljmp	00299$
   177D                    4204 00650$:
                           4205 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:414: if (time_count <= 500) {
   177D C3                 4206 	clr	c
   177E 74 F4              4207 	mov	a,#0xF4
   1780 95 18              4208 	subb	a,_time_count
   1782 74 01              4209 	mov	a,#0x01
   1784 95 19              4210 	subb	a,(_time_count + 1)
   1786 50 03              4211 	jnc	00651$
   1788 02 18 96           4212 	ljmp	00276$
   178B                    4213 00651$:
                           4214 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:415: Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 4);
   178B C0 07              4215 	push	ar7
   178D 75 F0 0A           4216 	mov	b,#0x0a
   1790 E5 1E              4217 	mov	a,_T_sec
   1792 C2 D5              4218 	clr	F0
   1794 30 E7 04           4219 	jnb	acc.7,00652$
   1797 D2 D5              4220 	setb	F0
   1799 F4                 4221 	cpl	a
   179A 04                 4222 	inc	a
   179B                    4223 00652$:
   179B 84                 4224 	div	ab
   179C E5 F0              4225 	mov	a,b
   179E 30 D5 02           4226 	jnb	F0,00653$
   17A1 F4                 4227 	cpl	a
   17A2 04                 4228 	inc	a
   17A3                    4229 00653$:
   17A3 FE                 4230 	mov	r6,a
   17A4 FA                 4231 	mov	r2,a
   17A5 33                 4232 	rlc	a
   17A6 95 E0              4233 	subb	a,acc
   17A8 FB                 4234 	mov	r3,a
   17A9 C2 D5              4235 	clr	F0
   17AB 75 F0 0A           4236 	mov	b,#0x0a
   17AE E5 1E              4237 	mov	a,_T_sec
   17B0 30 E7 04           4238 	jnb	acc.7,00654$
   17B3 B2 D5              4239 	cpl	F0
   17B5 F4                 4240 	cpl	a
   17B6 04                 4241 	inc	a
   17B7                    4242 00654$:
   17B7 84                 4243 	div	ab
   17B8 30 D5 02           4244 	jnb	F0,00655$
   17BB F4                 4245 	cpl	a
   17BC 04                 4246 	inc	a
   17BD                    4247 00655$:
   17BD FC                 4248 	mov	r4,a
   17BE A2 D5              4249 	mov	c,F0
   17C0 95 E0              4250 	subb	a,acc
   17C2 FD                 4251 	mov	r5,a
   17C3 75 F0 0A           4252 	mov	b,#0x0a
   17C6 E5 1D              4253 	mov	a,_T_min
   17C8 C2 D5              4254 	clr	F0
   17CA 30 E7 04           4255 	jnb	acc.7,00656$
   17CD D2 D5              4256 	setb	F0
   17CF F4                 4257 	cpl	a
   17D0 04                 4258 	inc	a
   17D1                    4259 00656$:
   17D1 84                 4260 	div	ab
   17D2 E5 F0              4261 	mov	a,b
   17D4 30 D5 02           4262 	jnb	F0,00657$
   17D7 F4                 4263 	cpl	a
   17D8 04                 4264 	inc	a
   17D9                    4265 00657$:
   17D9 FE                 4266 	mov	r6,a
   17DA C0 00              4267 	push	ar0
   17DC E5 25              4268 	mov	a,_bp
   17DE 24 0E              4269 	add	a,#0x0e
   17E0 F8                 4270 	mov	r0,a
   17E1 A6 06              4271 	mov	@r0,ar6
   17E3 EE                 4272 	mov	a,r6
   17E4 33                 4273 	rlc	a
   17E5 95 E0              4274 	subb	a,acc
   17E7 08                 4275 	inc	r0
   17E8 F6                 4276 	mov	@r0,a
   17E9 E5 25              4277 	mov	a,_bp
   17EB 24 0C              4278 	add	a,#0x0c
   17ED F8                 4279 	mov	r0,a
   17EE C2 D5              4280 	clr	F0
   17F0 75 F0 0A           4281 	mov	b,#0x0a
   17F3 E5 1D              4282 	mov	a,_T_min
   17F5 30 E7 04           4283 	jnb	acc.7,00658$
   17F8 B2 D5              4284 	cpl	F0
   17FA F4                 4285 	cpl	a
   17FB 04                 4286 	inc	a
   17FC                    4287 00658$:
   17FC 84                 4288 	div	ab
   17FD 30 D5 02           4289 	jnb	F0,00659$
   1800 F4                 4290 	cpl	a
   1801 04                 4291 	inc	a
   1802                    4292 00659$:
   1802 F6                 4293 	mov	@r0,a
   1803 A2 D5              4294 	mov	c,F0
   1805 95 E0              4295 	subb	a,acc
   1807 08                 4296 	inc	r0
   1808 F6                 4297 	mov	@r0,a
   1809 D0 00              4298 	pop	ar0
   180B 75 F0 0A           4299 	mov	b,#0x0a
   180E E5 1C              4300 	mov	a,_T_hour
   1810 C2 D5              4301 	clr	F0
   1812 30 E7 04           4302 	jnb	acc.7,00660$
   1815 D2 D5              4303 	setb	F0
   1817 F4                 4304 	cpl	a
   1818 04                 4305 	inc	a
   1819                    4306 00660$:
   1819 84                 4307 	div	ab
   181A E5 F0              4308 	mov	a,b
   181C 30 D5 02           4309 	jnb	F0,00661$
   181F F4                 4310 	cpl	a
   1820 04                 4311 	inc	a
   1821                    4312 00661$:
   1821 FE                 4313 	mov	r6,a
   1822 33                 4314 	rlc	a
   1823 95 E0              4315 	subb	a,acc
   1825 FF                 4316 	mov	r7,a
   1826 C2 D5              4317 	clr	F0
   1828 75 F0 0A           4318 	mov	b,#0x0a
   182B E5 1C              4319 	mov	a,_T_hour
   182D 30 E7 04           4320 	jnb	acc.7,00662$
   1830 B2 D5              4321 	cpl	F0
   1832 F4                 4322 	cpl	a
   1833 04                 4323 	inc	a
   1834                    4324 00662$:
   1834 84                 4325 	div	ab
   1835 30 D5 02           4326 	jnb	F0,00663$
   1838 F4                 4327 	cpl	a
   1839 04                 4328 	inc	a
   183A                    4329 00663$:
   183A F5 82              4330 	mov	dpl,a
   183C A2 D5              4331 	mov	c,F0
   183E 95 E0              4332 	subb	a,acc
   1840 F5 83              4333 	mov	dph,a
   1842 C0 07              4334 	push	ar7
   1844 C0 00              4335 	push	ar0
   1846 C0 01              4336 	push	ar1
   1848 74 04              4337 	mov	a,#0x04
   184A C0 E0              4338 	push	acc
   184C E4                 4339 	clr	a
   184D C0 E0              4340 	push	acc
   184F 74 0F              4341 	mov	a,#0x0F
   1851 C0 E0              4342 	push	acc
   1853 E4                 4343 	clr	a
   1854 C0 E0              4344 	push	acc
   1856 C0 02              4345 	push	ar2
   1858 C0 03              4346 	push	ar3
   185A C0 04              4347 	push	ar4
   185C C0 05              4348 	push	ar5
   185E 85 00 F0           4349 	mov	b,ar0
   1861 E5 25              4350 	mov	a,_bp
   1863 24 0E              4351 	add	a,#0x0e
   1865 F8                 4352 	mov	r0,a
   1866 E6                 4353 	mov	a,@r0
   1867 C0 E0              4354 	push	acc
   1869 08                 4355 	inc	r0
   186A E6                 4356 	mov	a,@r0
   186B C0 E0              4357 	push	acc
   186D A8 F0              4358 	mov	r0,b
   186F 85 00 F0           4359 	mov	b,ar0
   1872 E5 25              4360 	mov	a,_bp
   1874 24 0C              4361 	add	a,#0x0c
   1876 F8                 4362 	mov	r0,a
   1877 E6                 4363 	mov	a,@r0
   1878 C0 E0              4364 	push	acc
   187A 08                 4365 	inc	r0
   187B E6                 4366 	mov	a,@r0
   187C C0 E0              4367 	push	acc
   187E C0 06              4368 	push	ar6
   1880 C0 07              4369 	push	ar7
   1882 12 02 84           4370 	lcall	_Write7219ALL
   1885 E5 81              4371 	mov	a,sp
   1887 24 F2              4372 	add	a,#0xf2
   1889 F5 81              4373 	mov	sp,a
   188B D0 01              4374 	pop	ar1
   188D D0 00              4375 	pop	ar0
   188F D0 07              4376 	pop	ar7
   1891 D0 07              4377 	pop	ar7
   1893 02 1A D4           4378 	ljmp	00299$
   1896                    4379 00276$:
                           4380 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:417: Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, 0x0f, 0x0f, 0x0f, 4);
   1896 C0 07              4381 	push	ar7
   1898 75 F0 0A           4382 	mov	b,#0x0a
   189B E5 1D              4383 	mov	a,_T_min
   189D C2 D5              4384 	clr	F0
   189F 30 E7 04           4385 	jnb	acc.7,00664$
   18A2 D2 D5              4386 	setb	F0
   18A4 F4                 4387 	cpl	a
   18A5 04                 4388 	inc	a
   18A6                    4389 00664$:
   18A6 84                 4390 	div	ab
   18A7 E5 F0              4391 	mov	a,b
   18A9 30 D5 02           4392 	jnb	F0,00665$
   18AC F4                 4393 	cpl	a
   18AD 04                 4394 	inc	a
   18AE                    4395 00665$:
   18AE FE                 4396 	mov	r6,a
   18AF FA                 4397 	mov	r2,a
   18B0 33                 4398 	rlc	a
   18B1 95 E0              4399 	subb	a,acc
   18B3 FB                 4400 	mov	r3,a
   18B4 C2 D5              4401 	clr	F0
   18B6 75 F0 0A           4402 	mov	b,#0x0a
   18B9 E5 1D              4403 	mov	a,_T_min
   18BB 30 E7 04           4404 	jnb	acc.7,00666$
   18BE B2 D5              4405 	cpl	F0
   18C0 F4                 4406 	cpl	a
   18C1 04                 4407 	inc	a
   18C2                    4408 00666$:
   18C2 84                 4409 	div	ab
   18C3 30 D5 02           4410 	jnb	F0,00667$
   18C6 F4                 4411 	cpl	a
   18C7 04                 4412 	inc	a
   18C8                    4413 00667$:
   18C8 FC                 4414 	mov	r4,a
   18C9 A2 D5              4415 	mov	c,F0
   18CB 95 E0              4416 	subb	a,acc
   18CD FD                 4417 	mov	r5,a
   18CE 75 F0 0A           4418 	mov	b,#0x0a
   18D1 E5 1C              4419 	mov	a,_T_hour
   18D3 C2 D5              4420 	clr	F0
   18D5 30 E7 04           4421 	jnb	acc.7,00668$
   18D8 D2 D5              4422 	setb	F0
   18DA F4                 4423 	cpl	a
   18DB 04                 4424 	inc	a
   18DC                    4425 00668$:
   18DC 84                 4426 	div	ab
   18DD E5 F0              4427 	mov	a,b
   18DF 30 D5 02           4428 	jnb	F0,00669$
   18E2 F4                 4429 	cpl	a
   18E3 04                 4430 	inc	a
   18E4                    4431 00669$:
   18E4 FE                 4432 	mov	r6,a
   18E5 33                 4433 	rlc	a
   18E6 95 E0              4434 	subb	a,acc
   18E8 FF                 4435 	mov	r7,a
   18E9 C2 D5              4436 	clr	F0
   18EB 75 F0 0A           4437 	mov	b,#0x0a
   18EE E5 1C              4438 	mov	a,_T_hour
   18F0 30 E7 04           4439 	jnb	acc.7,00670$
   18F3 B2 D5              4440 	cpl	F0
   18F5 F4                 4441 	cpl	a
   18F6 04                 4442 	inc	a
   18F7                    4443 00670$:
   18F7 84                 4444 	div	ab
   18F8 30 D5 02           4445 	jnb	F0,00671$
   18FB F4                 4446 	cpl	a
   18FC 04                 4447 	inc	a
   18FD                    4448 00671$:
   18FD F5 82              4449 	mov	dpl,a
   18FF A2 D5              4450 	mov	c,F0
   1901 95 E0              4451 	subb	a,acc
   1903 F5 83              4452 	mov	dph,a
   1905 C0 07              4453 	push	ar7
   1907 C0 00              4454 	push	ar0
   1909 C0 01              4455 	push	ar1
   190B 74 04              4456 	mov	a,#0x04
   190D C0 E0              4457 	push	acc
   190F E4                 4458 	clr	a
   1910 C0 E0              4459 	push	acc
   1912 74 0F              4460 	mov	a,#0x0F
   1914 C0 E0              4461 	push	acc
   1916 E4                 4462 	clr	a
   1917 C0 E0              4463 	push	acc
   1919 74 0F              4464 	mov	a,#0x0F
   191B C0 E0              4465 	push	acc
   191D E4                 4466 	clr	a
   191E C0 E0              4467 	push	acc
   1920 74 0F              4468 	mov	a,#0x0F
   1922 C0 E0              4469 	push	acc
   1924 E4                 4470 	clr	a
   1925 C0 E0              4471 	push	acc
   1927 C0 02              4472 	push	ar2
   1929 C0 03              4473 	push	ar3
   192B C0 04              4474 	push	ar4
   192D C0 05              4475 	push	ar5
   192F C0 06              4476 	push	ar6
   1931 C0 07              4477 	push	ar7
   1933 12 02 84           4478 	lcall	_Write7219ALL
   1936 E5 81              4479 	mov	a,sp
   1938 24 F2              4480 	add	a,#0xf2
   193A F5 81              4481 	mov	sp,a
   193C D0 01              4482 	pop	ar1
   193E D0 00              4483 	pop	ar0
   1940 D0 07              4484 	pop	ar7
   1942 D0 07              4485 	pop	ar7
   1944 02 1A D4           4486 	ljmp	00299$
   1947                    4487 00289$:
                           4488 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:420: } else if (mode == 5) {
   1947 C0 00              4489 	push	ar0
   1949 E5 25              4490 	mov	a,_bp
   194B 24 08              4491 	add	a,#0x08
   194D F8                 4492 	mov	r0,a
   194E B6 05 02           4493 	cjne	@r0,#0x05,00672$
   1951 80 05              4494 	sjmp	00673$
   1953                    4495 00672$:
   1953 D0 00              4496 	pop	ar0
   1955 02 1A D4           4497 	ljmp	00299$
   1958                    4498 00673$:
   1958 D0 00              4499 	pop	ar0
                           4500 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:421: Write7219(8, ms1 / 10000);
   195A C0 07              4501 	push	ar7
   195C C0 00              4502 	push	ar0
   195E C0 01              4503 	push	ar1
   1960 74 10              4504 	mov	a,#0x10
   1962 C0 E0              4505 	push	acc
   1964 74 27              4506 	mov	a,#0x27
   1966 C0 E0              4507 	push	acc
   1968 85 1A 82           4508 	mov	dpl,_ms1
   196B 85 1B 83           4509 	mov	dph,(_ms1 + 1)
   196E 12 1B 20           4510 	lcall	__divuint
   1971 AE 82              4511 	mov	r6,dpl
   1973 AF 83              4512 	mov	r7,dph
   1975 15 81              4513 	dec	sp
   1977 15 81              4514 	dec	sp
   1979 D0 01              4515 	pop	ar1
   197B D0 00              4516 	pop	ar0
   197D C0 07              4517 	push	ar7
   197F C0 00              4518 	push	ar0
   1981 C0 01              4519 	push	ar1
   1983 C0 06              4520 	push	ar6
   1985 75 82 08           4521 	mov	dpl,#0x08
   1988 12 00 F1           4522 	lcall	_Write7219
   198B 15 81              4523 	dec	sp
   198D D0 01              4524 	pop	ar1
   198F D0 00              4525 	pop	ar0
   1991 D0 07              4526 	pop	ar7
                           4527 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:422: Write7219(7, ms1 / 1000 % 10);
   1993 C0 00              4528 	push	ar0
   1995 C0 01              4529 	push	ar1
   1997 74 E8              4530 	mov	a,#0xE8
   1999 C0 E0              4531 	push	acc
   199B 74 03              4532 	mov	a,#0x03
   199D C0 E0              4533 	push	acc
   199F 85 1A 82           4534 	mov	dpl,_ms1
   19A2 85 1B 83           4535 	mov	dph,(_ms1 + 1)
   19A5 12 1B 20           4536 	lcall	__divuint
   19A8 AE 82              4537 	mov	r6,dpl
   19AA AF 83              4538 	mov	r7,dph
   19AC 15 81              4539 	dec	sp
   19AE 15 81              4540 	dec	sp
   19B0 74 0A              4541 	mov	a,#0x0A
   19B2 C0 E0              4542 	push	acc
   19B4 E4                 4543 	clr	a
   19B5 C0 E0              4544 	push	acc
   19B7 8E 82              4545 	mov	dpl,r6
   19B9 8F 83              4546 	mov	dph,r7
   19BB 12 1B 51           4547 	lcall	__moduint
   19BE AE 82              4548 	mov	r6,dpl
   19C0 AF 83              4549 	mov	r7,dph
   19C2 15 81              4550 	dec	sp
   19C4 15 81              4551 	dec	sp
   19C6 D0 01              4552 	pop	ar1
   19C8 D0 00              4553 	pop	ar0
   19CA C0 07              4554 	push	ar7
   19CC C0 00              4555 	push	ar0
   19CE C0 01              4556 	push	ar1
   19D0 C0 06              4557 	push	ar6
   19D2 75 82 07           4558 	mov	dpl,#0x07
   19D5 12 00 F1           4559 	lcall	_Write7219
   19D8 15 81              4560 	dec	sp
   19DA D0 01              4561 	pop	ar1
   19DC D0 00              4562 	pop	ar0
   19DE D0 07              4563 	pop	ar7
                           4564 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:423: Write7219(6, ms1 / 100 % 10);
   19E0 C0 00              4565 	push	ar0
   19E2 C0 01              4566 	push	ar1
   19E4 74 64              4567 	mov	a,#0x64
   19E6 C0 E0              4568 	push	acc
   19E8 E4                 4569 	clr	a
   19E9 C0 E0              4570 	push	acc
   19EB 85 1A 82           4571 	mov	dpl,_ms1
   19EE 85 1B 83           4572 	mov	dph,(_ms1 + 1)
   19F1 12 1B 20           4573 	lcall	__divuint
   19F4 AE 82              4574 	mov	r6,dpl
   19F6 AF 83              4575 	mov	r7,dph
   19F8 15 81              4576 	dec	sp
   19FA 15 81              4577 	dec	sp
   19FC 74 0A              4578 	mov	a,#0x0A
   19FE C0 E0              4579 	push	acc
   1A00 E4                 4580 	clr	a
   1A01 C0 E0              4581 	push	acc
   1A03 8E 82              4582 	mov	dpl,r6
   1A05 8F 83              4583 	mov	dph,r7
   1A07 12 1B 51           4584 	lcall	__moduint
   1A0A AE 82              4585 	mov	r6,dpl
   1A0C AF 83              4586 	mov	r7,dph
   1A0E 15 81              4587 	dec	sp
   1A10 15 81              4588 	dec	sp
   1A12 D0 01              4589 	pop	ar1
   1A14 D0 00              4590 	pop	ar0
   1A16 C0 07              4591 	push	ar7
   1A18 C0 00              4592 	push	ar0
   1A1A C0 01              4593 	push	ar1
   1A1C C0 06              4594 	push	ar6
   1A1E 75 82 06           4595 	mov	dpl,#0x06
   1A21 12 00 F1           4596 	lcall	_Write7219
   1A24 15 81              4597 	dec	sp
   1A26 D0 01              4598 	pop	ar1
   1A28 D0 00              4599 	pop	ar0
   1A2A D0 07              4600 	pop	ar7
                           4601 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:424: Write7219(5, ms1 / 10 % 10);
   1A2C C0 00              4602 	push	ar0
   1A2E C0 01              4603 	push	ar1
   1A30 74 0A              4604 	mov	a,#0x0A
   1A32 C0 E0              4605 	push	acc
   1A34 E4                 4606 	clr	a
   1A35 C0 E0              4607 	push	acc
   1A37 85 1A 82           4608 	mov	dpl,_ms1
   1A3A 85 1B 83           4609 	mov	dph,(_ms1 + 1)
   1A3D 12 1B 20           4610 	lcall	__divuint
   1A40 AE 82              4611 	mov	r6,dpl
   1A42 AF 83              4612 	mov	r7,dph
   1A44 15 81              4613 	dec	sp
   1A46 15 81              4614 	dec	sp
   1A48 74 0A              4615 	mov	a,#0x0A
   1A4A C0 E0              4616 	push	acc
   1A4C E4                 4617 	clr	a
   1A4D C0 E0              4618 	push	acc
   1A4F 8E 82              4619 	mov	dpl,r6
   1A51 8F 83              4620 	mov	dph,r7
   1A53 12 1B 51           4621 	lcall	__moduint
   1A56 AE 82              4622 	mov	r6,dpl
   1A58 AF 83              4623 	mov	r7,dph
   1A5A 15 81              4624 	dec	sp
   1A5C 15 81              4625 	dec	sp
   1A5E D0 01              4626 	pop	ar1
   1A60 D0 00              4627 	pop	ar0
   1A62 C0 07              4628 	push	ar7
   1A64 C0 00              4629 	push	ar0
   1A66 C0 01              4630 	push	ar1
   1A68 C0 06              4631 	push	ar6
   1A6A 75 82 05           4632 	mov	dpl,#0x05
   1A6D 12 00 F1           4633 	lcall	_Write7219
   1A70 15 81              4634 	dec	sp
   1A72 D0 01              4635 	pop	ar1
   1A74 D0 00              4636 	pop	ar0
   1A76 D0 07              4637 	pop	ar7
                           4638 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:425: Write7219(4, ms1 % 10);
   1A78 C0 00              4639 	push	ar0
   1A7A C0 01              4640 	push	ar1
   1A7C 74 0A              4641 	mov	a,#0x0A
   1A7E C0 E0              4642 	push	acc
   1A80 E4                 4643 	clr	a
   1A81 C0 E0              4644 	push	acc
   1A83 85 1A 82           4645 	mov	dpl,_ms1
   1A86 85 1B 83           4646 	mov	dph,(_ms1 + 1)
   1A89 12 1B 51           4647 	lcall	__moduint
   1A8C AE 82              4648 	mov	r6,dpl
   1A8E AF 83              4649 	mov	r7,dph
   1A90 15 81              4650 	dec	sp
   1A92 15 81              4651 	dec	sp
   1A94 D0 01              4652 	pop	ar1
   1A96 D0 00              4653 	pop	ar0
   1A98 C0 07              4654 	push	ar7
   1A9A C0 00              4655 	push	ar0
   1A9C C0 01              4656 	push	ar1
   1A9E C0 06              4657 	push	ar6
   1AA0 75 82 04           4658 	mov	dpl,#0x04
   1AA3 12 00 F1           4659 	lcall	_Write7219
   1AA6 15 81              4660 	dec	sp
                           4661 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:426: Write7219(3, 0x0f);
   1AA8 74 0F              4662 	mov	a,#0x0F
   1AAA C0 E0              4663 	push	acc
   1AAC 75 82 03           4664 	mov	dpl,#0x03
   1AAF 12 00 F1           4665 	lcall	_Write7219
   1AB2 15 81              4666 	dec	sp
                           4667 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:427: Write7219(2, 0x0f);
   1AB4 74 0F              4668 	mov	a,#0x0F
   1AB6 C0 E0              4669 	push	acc
   1AB8 75 82 02           4670 	mov	dpl,#0x02
   1ABB 12 00 F1           4671 	lcall	_Write7219
   1ABE 15 81              4672 	dec	sp
                           4673 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:428: Write7219(1, 5);
   1AC0 74 05              4674 	mov	a,#0x05
   1AC2 C0 E0              4675 	push	acc
   1AC4 75 82 01           4676 	mov	dpl,#0x01
   1AC7 12 00 F1           4677 	lcall	_Write7219
   1ACA 15 81              4678 	dec	sp
   1ACC D0 01              4679 	pop	ar1
   1ACE D0 00              4680 	pop	ar0
   1AD0 D0 07              4681 	pop	ar7
                           4682 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:436: delay_ms(20);
   1AD2 D0 07              4683 	pop	ar7
                           4684 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:428: Write7219(1, 5);
   1AD4                    4685 00299$:
                           4686 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:431: toff = 30000 - ton;
   1AD4 74 30              4687 	mov	a,#0x30
   1AD6 C3                 4688 	clr	c
   1AD7 95 12              4689 	subb	a,_ton
   1AD9 F5 14              4690 	mov	_toff,a
   1ADB 74 75              4691 	mov	a,#0x75
   1ADD 95 13              4692 	subb	a,(_ton + 1)
   1ADF F5 15              4693 	mov	(_toff + 1),a
                           4694 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:432: prebtn0 = INT0;
   1AE1 A2 B2              4695 	mov	c,_INT0
   1AE3 E4                 4696 	clr	a
   1AE4 33                 4697 	rlc	a
   1AE5 FA                 4698 	mov	r2,a
                           4699 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:433: prebtn1 = INT1;
   1AE6 A2 B3              4700 	mov	c,_INT1
   1AE8 E4                 4701 	clr	a
   1AE9 33                 4702 	rlc	a
   1AEA FB                 4703 	mov	r3,a
                           4704 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:434: prebtn2 = P2_0;
   1AEB A2 A0              4705 	mov	c,_P2_0
   1AED E4                 4706 	clr	a
   1AEE 33                 4707 	rlc	a
   1AEF FC                 4708 	mov	r4,a
                           4709 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:435: prebtn3 = P2_1;
   1AF0 A2 A1              4710 	mov	c,_P2_1
   1AF2 E4                 4711 	clr	a
   1AF3 33                 4712 	rlc	a
   1AF4 FD                 4713 	mov	r5,a
                           4714 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:436: delay_ms(20);
   1AF5 90 00 14           4715 	mov	dptr,#0x0014
   1AF8 C0 02              4716 	push	ar2
   1AFA C0 03              4717 	push	ar3
   1AFC C0 04              4718 	push	ar4
   1AFE C0 05              4719 	push	ar5
   1B00 C0 07              4720 	push	ar7
   1B02 C0 00              4721 	push	ar0
   1B04 C0 01              4722 	push	ar1
   1B06 12 01 70           4723 	lcall	_delay_ms
   1B09 D0 01              4724 	pop	ar1
   1B0B D0 00              4725 	pop	ar0
   1B0D D0 07              4726 	pop	ar7
   1B0F D0 05              4727 	pop	ar5
   1B11 D0 04              4728 	pop	ar4
   1B13 D0 03              4729 	pop	ar3
   1B15 D0 02              4730 	pop	ar2
   1B17 02 04 3B           4731 	ljmp	00301$
   1B1A 85 25 81           4732 	mov	sp,_bp
   1B1D D0 25              4733 	pop	_bp
   1B1F 22                 4734 	ret
                           4735 	.area CSEG    (CODE)
                           4736 	.area CONST   (CODE)
                           4737 	.area XINIT   (CODE)
                           4738 	.area CABS    (ABS,CODE)
