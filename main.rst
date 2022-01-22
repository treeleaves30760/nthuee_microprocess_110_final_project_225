                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.1 #6083 (Dec 17 2010) (MINGW32)
                              4 ; This file was generated Sat Jan 22 19:18:12 2022
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
                             16 	.globl _time_count_add
                             17 	.globl _timer0_isr
                             18 	.globl _time_initial
                             19 	.globl _ser_intr
                             20 	.globl _UART_Init
                             21 	.globl _delay_ms
                             22 	.globl _SSD_Initial
                             23 	.globl _Write7219
                             24 	.globl _sendbyte
                             25 	.globl _TF2
                             26 	.globl _EXF2
                             27 	.globl _RCLK
                             28 	.globl _TCLK
                             29 	.globl _EXEN2
                             30 	.globl _TR2
                             31 	.globl _C_T2
                             32 	.globl _CP_RL2
                             33 	.globl _T2CON_7
                             34 	.globl _T2CON_6
                             35 	.globl _T2CON_5
                             36 	.globl _T2CON_4
                             37 	.globl _T2CON_3
                             38 	.globl _T2CON_2
                             39 	.globl _T2CON_1
                             40 	.globl _T2CON_0
                             41 	.globl _PT2
                             42 	.globl _ET2
                             43 	.globl _CY
                             44 	.globl _AC
                             45 	.globl _F0
                             46 	.globl _RS1
                             47 	.globl _RS0
                             48 	.globl _OV
                             49 	.globl _F1
                             50 	.globl _P
                             51 	.globl _PS
                             52 	.globl _PT1
                             53 	.globl _PX1
                             54 	.globl _PT0
                             55 	.globl _PX0
                             56 	.globl _RD
                             57 	.globl _WR
                             58 	.globl _T1
                             59 	.globl _T0
                             60 	.globl _INT1
                             61 	.globl _INT0
                             62 	.globl _TXD
                             63 	.globl _RXD
                             64 	.globl _P3_7
                             65 	.globl _P3_6
                             66 	.globl _P3_5
                             67 	.globl _P3_4
                             68 	.globl _P3_3
                             69 	.globl _P3_2
                             70 	.globl _P3_1
                             71 	.globl _P3_0
                             72 	.globl _EA
                             73 	.globl _ES
                             74 	.globl _ET1
                             75 	.globl _EX1
                             76 	.globl _ET0
                             77 	.globl _EX0
                             78 	.globl _P2_7
                             79 	.globl _P2_6
                             80 	.globl _P2_5
                             81 	.globl _P2_4
                             82 	.globl _P2_3
                             83 	.globl _P2_2
                             84 	.globl _P2_1
                             85 	.globl _P2_0
                             86 	.globl _SM0
                             87 	.globl _SM1
                             88 	.globl _SM2
                             89 	.globl _REN
                             90 	.globl _TB8
                             91 	.globl _RB8
                             92 	.globl _TI
                             93 	.globl _RI
                             94 	.globl _P1_7
                             95 	.globl _P1_6
                             96 	.globl _P1_5
                             97 	.globl _P1_4
                             98 	.globl _P1_3
                             99 	.globl _P1_2
                            100 	.globl _P1_1
                            101 	.globl _P1_0
                            102 	.globl _TF1
                            103 	.globl _TR1
                            104 	.globl _TF0
                            105 	.globl _TR0
                            106 	.globl _IE1
                            107 	.globl _IT1
                            108 	.globl _IE0
                            109 	.globl _IT0
                            110 	.globl _P0_7
                            111 	.globl _P0_6
                            112 	.globl _P0_5
                            113 	.globl _P0_4
                            114 	.globl _P0_3
                            115 	.globl _P0_2
                            116 	.globl _P0_1
                            117 	.globl _P0_0
                            118 	.globl _TH2
                            119 	.globl _TL2
                            120 	.globl _RCAP2H
                            121 	.globl _RCAP2L
                            122 	.globl _T2CON
                            123 	.globl _B
                            124 	.globl _ACC
                            125 	.globl _PSW
                            126 	.globl _IP
                            127 	.globl _P3
                            128 	.globl _IE
                            129 	.globl _P2
                            130 	.globl _SBUF
                            131 	.globl _SCON
                            132 	.globl _P1
                            133 	.globl _TH1
                            134 	.globl _TH0
                            135 	.globl _TL1
                            136 	.globl _TL0
                            137 	.globl _TMOD
                            138 	.globl _TCON
                            139 	.globl _PCON
                            140 	.globl _DPH
                            141 	.globl _DPL
                            142 	.globl _SP
                            143 	.globl _P0
                            144 	.globl _i
                            145 	.globl _BT_data_flag
                            146 	.globl _BT_data
                            147 	.globl _change_time
                            148 	.globl _Action
                            149 	.globl _PWM_state
                            150 	.globl _T_sec
                            151 	.globl _T_min
                            152 	.globl _T_hour
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
   001A                     308 _T_hour::
   001A                     309 	.ds 1
   001B                     310 _T_min::
   001B                     311 	.ds 1
   001C                     312 _T_sec::
   001C                     313 	.ds 1
   001D                     314 _PWM_state::
   001D                     315 	.ds 1
   001E                     316 _Action::
   001E                     317 	.ds 1
   001F                     318 _change_time::
   001F                     319 	.ds 1
   0020                     320 _BT_data::
   0020                     321 	.ds 1
   0021                     322 _BT_data_flag::
   0021                     323 	.ds 1
   0022                     324 _i::
   0022                     325 	.ds 1
                            326 ;--------------------------------------------------------
                            327 ; overlayable items in internal ram 
                            328 ;--------------------------------------------------------
                            329 	.area OSEG    (OVR,DATA)
                            330 ;--------------------------------------------------------
                            331 ; Stack segment in internal ram 
                            332 ;--------------------------------------------------------
                            333 	.area	SSEG	(DATA)
   0024                     334 __start__stack:
   0024                     335 	.ds	1
                            336 
                            337 ;--------------------------------------------------------
                            338 ; indirectly addressable internal ram data
                            339 ;--------------------------------------------------------
                            340 	.area ISEG    (DATA)
                            341 ;--------------------------------------------------------
                            342 ; absolute internal ram data
                            343 ;--------------------------------------------------------
                            344 	.area IABS    (ABS,DATA)
                            345 	.area IABS    (ABS,DATA)
                            346 ;--------------------------------------------------------
                            347 ; bit data
                            348 ;--------------------------------------------------------
                            349 	.area BSEG    (BIT)
                            350 ;--------------------------------------------------------
                            351 ; paged external ram data
                            352 ;--------------------------------------------------------
                            353 	.area PSEG    (PAG,XDATA)
                            354 ;--------------------------------------------------------
                            355 ; external ram data
                            356 ;--------------------------------------------------------
                            357 	.area XSEG    (XDATA)
                            358 ;--------------------------------------------------------
                            359 ; absolute external ram data
                            360 ;--------------------------------------------------------
                            361 	.area XABS    (ABS,XDATA)
                            362 ;--------------------------------------------------------
                            363 ; external initialized ram data
                            364 ;--------------------------------------------------------
                            365 	.area XISEG   (XDATA)
                            366 	.area HOME    (CODE)
                            367 	.area GSINIT0 (CODE)
                            368 	.area GSINIT1 (CODE)
                            369 	.area GSINIT2 (CODE)
                            370 	.area GSINIT3 (CODE)
                            371 	.area GSINIT4 (CODE)
                            372 	.area GSINIT5 (CODE)
                            373 	.area GSINIT  (CODE)
                            374 	.area GSFINAL (CODE)
                            375 	.area CSEG    (CODE)
                            376 ;--------------------------------------------------------
                            377 ; interrupt vector 
                            378 ;--------------------------------------------------------
                            379 	.area HOME    (CODE)
   0000                     380 __interrupt_vect:
   0000 02 00 33            381 	ljmp	__sdcc_gsinit_startup
   0003 32                  382 	reti
   0004                     383 	.ds	7
   000B 02 01 FC            384 	ljmp	_timer0_isr
   000E                     385 	.ds	5
   0013 32                  386 	reti
   0014                     387 	.ds	7
   001B 02 02 79            388 	ljmp	_time_count_add
   001E                     389 	.ds	5
   0023 32                  390 	reti
   0024                     391 	.ds	7
   002B 02 01 AD            392 	ljmp	_ser_intr
                            393 ;--------------------------------------------------------
                            394 ; global & static initialisations
                            395 ;--------------------------------------------------------
                            396 	.area HOME    (CODE)
                            397 	.area GSINIT  (CODE)
                            398 	.area GSFINAL (CODE)
                            399 	.area GSINIT  (CODE)
                            400 	.globl __sdcc_gsinit_startup
                            401 	.globl __sdcc_program_startup
                            402 	.globl __start__stack
                            403 	.globl __mcs51_genXINIT
                            404 	.globl __mcs51_genXRAMCLEAR
                            405 	.globl __mcs51_genRAMCLEAR
                            406 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:14: unsigned int dutytime = 35536; //65536-45536就是責任週期
   008C 75 10 D0            407 	mov	_dutytime,#0xD0
   008F 75 11 8A            408 	mov	(_dutytime + 1),#0x8A
                            409 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:15: unsigned int ton = 15000; //高電位比例=50%
   0092 75 12 98            410 	mov	_ton,#0x98
   0095 75 13 3A            411 	mov	(_ton + 1),#0x3A
                            412 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:16: unsigned int toff = 15000; //低電位比例=50%
   0098 75 14 98            413 	mov	_toff,#0x98
   009B 75 15 3A            414 	mov	(_toff + 1),#0x3A
                            415 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:18: unsigned int time_count = 0;
   009E E4                  416 	clr	a
   009F F5 18               417 	mov	_time_count,a
   00A1 F5 19               418 	mov	(_time_count + 1),a
                            419 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:19: signed char T_hour = 3, T_min = 28, T_sec = 0;
   00A3 75 1A 03            420 	mov	_T_hour,#0x03
                            421 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:19: unsigned char PWM_state = 0;
   00A6 75 1B 1C            422 	mov	_T_min,#0x1C
                            423 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:19: signed char T_hour = 3, T_min = 28, T_sec = 0;
   00A9 75 1C 00            424 	mov	_T_sec,#0x00
                            425 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:20: unsigned char PWM_state = 0;
   00AC 75 1D 00            426 	mov	_PWM_state,#0x00
                            427 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:21: unsigned char Action = 0; // 1: open, 2: close
   00AF 75 1E 00            428 	mov	_Action,#0x00
                            429 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:22: unsigned char change_time = 0;
   00B2 75 1F 00            430 	mov	_change_time,#0x00
                            431 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:23: char BT_data = ' ';
   00B5 75 20 20            432 	mov	_BT_data,#0x20
                            433 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:24: char BT_data_flag = 0;
   00B8 75 21 00            434 	mov	_BT_data_flag,#0x00
                            435 	.area GSFINAL (CODE)
   00BB 02 00 2E            436 	ljmp	__sdcc_program_startup
                            437 ;--------------------------------------------------------
                            438 ; Home
                            439 ;--------------------------------------------------------
                            440 	.area HOME    (CODE)
                            441 	.area HOME    (CODE)
   002E                     442 __sdcc_program_startup:
   002E 12 03 2F            443 	lcall	_main
                            444 ;	return from main will lock up
   0031 80 FE               445 	sjmp .
                            446 ;--------------------------------------------------------
                            447 ; code
                            448 ;--------------------------------------------------------
                            449 	.area CSEG    (CODE)
                            450 ;------------------------------------------------------------
                            451 ;Allocation info for local variables in function 'sendbyte'
                            452 ;------------------------------------------------------------
                            453 ;dat                       Allocated to stack - offset -3
                            454 ;address                   Allocated to registers r2 
                            455 ;i                         Allocated to registers r3 
                            456 ;------------------------------------------------------------
                            457 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:27: void sendbyte(unsigned char address,unsigned char dat) {
                            458 ;	-----------------------------------------
                            459 ;	 function sendbyte
                            460 ;	-----------------------------------------
   00BE                     461 _sendbyte:
                    0002    462 	ar2 = 0x02
                    0003    463 	ar3 = 0x03
                    0004    464 	ar4 = 0x04
                    0005    465 	ar5 = 0x05
                    0006    466 	ar6 = 0x06
                    0007    467 	ar7 = 0x07
                    0000    468 	ar0 = 0x00
                    0001    469 	ar1 = 0x01
   00BE C0 23               470 	push	_bp
   00C0 85 81 23            471 	mov	_bp,sp
   00C3 AA 82               472 	mov	r2,dpl
                            473 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:29: for (i=0;i<8;i++) {
   00C5 7B 00               474 	mov	r3,#0x00
   00C7                     475 00101$:
   00C7 BB 08 00            476 	cjne	r3,#0x08,00117$
   00CA                     477 00117$:
   00CA 50 0C               478 	jnc	00104$
                            479 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:30: CLK=0;
   00CC C2 B6               480 	clr	_P3_6
                            481 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:31: DIN=(address&0x80);
                            482 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:32: address<<=1;
   00CE EA                  483 	mov	a,r2
   00CF 2A                  484 	add	a,r2
   00D0 92 B4               485 	mov	_P3_4,c
   00D2 FA                  486 	mov	r2,a
                            487 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:33: CLK=1;
   00D3 D2 B6               488 	setb	_P3_6
                            489 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:29: for (i=0;i<8;i++) {
   00D5 0B                  490 	inc	r3
   00D6 80 EF               491 	sjmp	00101$
   00D8                     492 00104$:
                            493 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:35: for (i=0;i<8;i++) {
   00D8 7A 00               494 	mov	r2,#0x00
   00DA                     495 00105$:
   00DA BA 08 00            496 	cjne	r2,#0x08,00119$
   00DD                     497 00119$:
   00DD 50 19               498 	jnc	00109$
                            499 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:36: CLK=0;
   00DF C2 B6               500 	clr	_P3_6
                            501 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:37: DIN=(dat&0x80);
   00E1 E5 23               502 	mov	a,_bp
   00E3 24 FD               503 	add	a,#0xfd
   00E5 F8                  504 	mov	r0,a
   00E6 E6                  505 	mov	a,@r0
   00E7 33                  506 	rlc	a
   00E8 92 B4               507 	mov	_P3_4,c
                            508 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:38: dat<<=1;
   00EA E5 23               509 	mov	a,_bp
   00EC 24 FD               510 	add	a,#0xfd
   00EE F8                  511 	mov	r0,a
   00EF E6                  512 	mov	a,@r0
   00F0 25 E0               513 	add	a,acc
   00F2 F6                  514 	mov	@r0,a
                            515 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:39: CLK=1;
   00F3 D2 B6               516 	setb	_P3_6
                            517 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:35: for (i=0;i<8;i++) {
   00F5 0A                  518 	inc	r2
   00F6 80 E2               519 	sjmp	00105$
   00F8                     520 00109$:
   00F8 D0 23               521 	pop	_bp
   00FA 22                  522 	ret
                            523 ;------------------------------------------------------------
                            524 ;Allocation info for local variables in function 'Write7219'
                            525 ;------------------------------------------------------------
                            526 ;dat                       Allocated to stack - offset -3
                            527 ;address                   Allocated to registers r2 
                            528 ;cnt                       Allocated to registers r3 
                            529 ;------------------------------------------------------------
                            530 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:43: void Write7219(unsigned char address,unsigned char dat) {
                            531 ;	-----------------------------------------
                            532 ;	 function Write7219
                            533 ;	-----------------------------------------
   00FB                     534 _Write7219:
   00FB C0 23               535 	push	_bp
   00FD 85 81 23            536 	mov	_bp,sp
   0100 AA 82               537 	mov	r2,dpl
                            538 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:45: LOAD=0;
   0102 C2 B5               539 	clr	_P3_5
                            540 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:46: for(cnt=1;cnt<=matrixnum;cnt++) sendbyte(address,dat);
   0104 7B 01               541 	mov	r3,#0x01
   0106                     542 00103$:
   0106 C0 02               543 	push	ar2
   0108 C0 03               544 	push	ar3
   010A E5 23               545 	mov	a,_bp
   010C 24 FD               546 	add	a,#0xfd
   010E F8                  547 	mov	r0,a
   010F E6                  548 	mov	a,@r0
   0110 C0 E0               549 	push	acc
   0112 8A 82               550 	mov	dpl,r2
   0114 12 00 BE            551 	lcall	_sendbyte
   0117 15 81               552 	dec	sp
   0119 D0 03               553 	pop	ar3
   011B D0 02               554 	pop	ar2
   011D DB E7               555 	djnz	r3,00103$
                            556 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:47: LOAD=1;                  
   011F D2 B5               557 	setb	_P3_5
   0121 D0 23               558 	pop	_bp
   0123 22                  559 	ret
                            560 ;------------------------------------------------------------
                            561 ;Allocation info for local variables in function 'SSD_Initial'
                            562 ;------------------------------------------------------------
                            563 ;i                         Allocated to registers r2 
                            564 ;------------------------------------------------------------
                            565 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:50: void SSD_Initial(void) {
                            566 ;	-----------------------------------------
                            567 ;	 function SSD_Initial
                            568 ;	-----------------------------------------
   0124                     569 _SSD_Initial:
                            570 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:52: Write7219(SHUT_DOWN,0x01);
   0124 74 01               571 	mov	a,#0x01
   0126 C0 E0               572 	push	acc
   0128 75 82 0C            573 	mov	dpl,#0x0C
   012B 12 00 FB            574 	lcall	_Write7219
   012E 15 81               575 	dec	sp
                            576 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:53: Write7219(DISPLAY_TEST,0x00);
   0130 E4                  577 	clr	a
   0131 C0 E0               578 	push	acc
   0133 75 82 0F            579 	mov	dpl,#0x0F
   0136 12 00 FB            580 	lcall	_Write7219
   0139 15 81               581 	dec	sp
                            582 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:54: Write7219(DECODE_MODE,0xff);
   013B 74 FF               583 	mov	a,#0xFF
   013D C0 E0               584 	push	acc
   013F 75 82 09            585 	mov	dpl,#0x09
   0142 12 00 FB            586 	lcall	_Write7219
   0145 15 81               587 	dec	sp
                            588 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:55: Write7219(SCAN_LIMIT,0x07);
   0147 74 07               589 	mov	a,#0x07
   0149 C0 E0               590 	push	acc
   014B 75 82 0B            591 	mov	dpl,#0x0B
   014E 12 00 FB            592 	lcall	_Write7219
   0151 15 81               593 	dec	sp
                            594 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:56: Write7219(INTENSITY,0x00);
   0153 E4                  595 	clr	a
   0154 C0 E0               596 	push	acc
   0156 75 82 0A            597 	mov	dpl,#0x0A
   0159 12 00 FB            598 	lcall	_Write7219
   015C 15 81               599 	dec	sp
                            600 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:57: for(i=1;i<=8;i++) Write7219(i,0x0f);
   015E 7A 01               601 	mov	r2,#0x01
   0160                     602 00101$:
   0160 74 08               603 	mov	a,#0x08
   0162 B5 02 00            604 	cjne	a,ar2,00110$
   0165                     605 00110$:
   0165 40 12               606 	jc	00105$
   0167 C0 02               607 	push	ar2
   0169 74 0F               608 	mov	a,#0x0F
   016B C0 E0               609 	push	acc
   016D 8A 82               610 	mov	dpl,r2
   016F 12 00 FB            611 	lcall	_Write7219
   0172 15 81               612 	dec	sp
   0174 D0 02               613 	pop	ar2
   0176 0A                  614 	inc	r2
   0177 80 E7               615 	sjmp	00101$
   0179                     616 00105$:
   0179 22                  617 	ret
                            618 ;------------------------------------------------------------
                            619 ;Allocation info for local variables in function 'delay_ms'
                            620 ;------------------------------------------------------------
                            621 ;ms                        Allocated to registers r2 r3 
                            622 ;i                         Allocated to registers r4 r5 
                            623 ;j                         Allocated to registers r6 
                            624 ;------------------------------------------------------------
                            625 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:60: void delay_ms(int ms) {
                            626 ;	-----------------------------------------
                            627 ;	 function delay_ms
                            628 ;	-----------------------------------------
   017A                     629 _delay_ms:
   017A AA 82               630 	mov	r2,dpl
   017C AB 83               631 	mov	r3,dph
                            632 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:63: for (i = 0; i < ms; i++) {
   017E 7C 00               633 	mov	r4,#0x00
   0180 7D 00               634 	mov	r5,#0x00
   0182                     635 00104$:
   0182 C3                  636 	clr	c
   0183 EC                  637 	mov	a,r4
   0184 9A                  638 	subb	a,r2
   0185 ED                  639 	mov	a,r5
   0186 9B                  640 	subb	a,r3
   0187 50 0B               641 	jnc	00108$
                            642 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:64: for (j = 0; j < 90; j++);
   0189 7E 5A               643 	mov	r6,#0x5A
   018B                     644 00103$:
   018B DE FE               645 	djnz	r6,00103$
                            646 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:63: for (i = 0; i < ms; i++) {
   018D 0C                  647 	inc	r4
   018E BC 00 F1            648 	cjne	r4,#0x00,00104$
   0191 0D                  649 	inc	r5
   0192 80 EE               650 	sjmp	00104$
   0194                     651 00108$:
   0194 22                  652 	ret
                            653 ;------------------------------------------------------------
                            654 ;Allocation info for local variables in function 'UART_Init'
                            655 ;------------------------------------------------------------
                            656 ;------------------------------------------------------------
                            657 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:68: void UART_Init()
                            658 ;	-----------------------------------------
                            659 ;	 function UART_Init
                            660 ;	-----------------------------------------
   0195                     661 _UART_Init:
                            662 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:70: TMOD |= 0x200;
   0195 AA 89               663 	mov	r2,_TMOD
   0197 7B 00               664 	mov	r3,#0x00
   0199 43 03 02            665 	orl	ar3,#0x02
   019C 8A 89               666 	mov	_TMOD,r2
                            667 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:71: TH2 = 0xFD;
   019E 75 CD FD            668 	mov	_TH2,#0xFD
                            669 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:72: TL2 = 1;
   01A1 75 CC 01            670 	mov	_TL2,#0x01
                            671 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:73: SCON = 0x50;
   01A4 75 98 50            672 	mov	_SCON,#0x50
                            673 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:74: IE |= 0x90;
   01A7 43 A8 90            674 	orl	_IE,#0x90
                            675 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:75: TR2 = 1;
   01AA D2 CA               676 	setb	_TR2
   01AC 22                  677 	ret
                            678 ;------------------------------------------------------------
                            679 ;Allocation info for local variables in function 'ser_intr'
                            680 ;------------------------------------------------------------
                            681 ;------------------------------------------------------------
                            682 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:78: void ser_intr(void) __interrupt 5      //Subroutine for Interrupt  
                            683 ;	-----------------------------------------
                            684 ;	 function ser_intr
                            685 ;	-----------------------------------------
   01AD                     686 _ser_intr:
   01AD C0 E0               687 	push	acc
                            688 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:80: while(RI==0);
   01AF                     689 00101$:
   01AF 30 98 FD            690 	jnb	_RI,00101$
                            691 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:81: BT_data = SBUF;
   01B2 85 99 20            692 	mov	_BT_data,_SBUF
                            693 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:82: TH2 = 0xFD;
   01B5 75 CD FD            694 	mov	_TH2,#0xFD
                            695 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:83: TL2 = 1;
   01B8 75 CC 01            696 	mov	_TL2,#0x01
                            697 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:84: TF2 = 0;
   01BB C2 CF               698 	clr	_TF2
                            699 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:85: EXF2 = 0;
   01BD C2 CE               700 	clr	_EXF2
                            701 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:86: P1 = ~P1;
   01BF E5 90               702 	mov	a,_P1
   01C1 F4                  703 	cpl	a
   01C2 F5 90               704 	mov	_P1,a
   01C4 D0 E0               705 	pop	acc
   01C6 32                  706 	reti
                            707 ;	eliminated unneeded push/pop psw
                            708 ;	eliminated unneeded push/pop dpl
                            709 ;	eliminated unneeded push/pop dph
                            710 ;	eliminated unneeded push/pop b
                            711 ;------------------------------------------------------------
                            712 ;Allocation info for local variables in function 'time_initial'
                            713 ;------------------------------------------------------------
                            714 ;------------------------------------------------------------
                            715 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:91: void time_initial(void) {
                            716 ;	-----------------------------------------
                            717 ;	 function time_initial
                            718 ;	-----------------------------------------
   01C7                     719 _time_initial:
                            720 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:92: TMOD = 0x11;  // Set Timer 1 to  mode 0 & Timer 0 mode 1. (16-bit timer)
   01C7 75 89 11            721 	mov	_TMOD,#0x11
                            722 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:93: IE|=0x02; //開啟計時器中斷功能
   01CA 43 A8 02            723 	orl	_IE,#0x02
                            724 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:94: temp = 65536 - dutytime; //設定中斷一次的時間(預設是dutytime)
   01CD AA 10               725 	mov	r2,_dutytime
   01CF AB 11               726 	mov	r3,(_dutytime + 1)
   01D1 E4                  727 	clr	a
   01D2 FC                  728 	mov	r4,a
   01D3 FD                  729 	mov	r5,a
   01D4 C3                  730 	clr	c
   01D5 9A                  731 	subb	a,r2
   01D6 FA                  732 	mov	r2,a
   01D7 E4                  733 	clr	a
   01D8 9B                  734 	subb	a,r3
   01D9 FB                  735 	mov	r3,a
   01DA 74 01               736 	mov	a,#0x01
   01DC 9C                  737 	subb	a,r4
   01DD E4                  738 	clr	a
   01DE 9D                  739 	subb	a,r5
   01DF 8A 16               740 	mov	_temp,r2
   01E1 8B 17               741 	mov	(_temp + 1),r3
                            742 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:95: TH0 = temp / 256; //填入高八位
   01E3 AA 17               743 	mov	r2,(_temp + 1)
   01E5 8A 8C               744 	mov	_TH0,r2
                            745 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:96: TL0 = temp % 256; //填入低八位
   01E7 AA 16               746 	mov	r2,_temp
   01E9 8A 8A               747 	mov	_TL0,r2
                            748 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:97: TH1 = (65536-1000) / 256;   // Load initial higher 8 bits into Timer 1
   01EB 75 8D FC            749 	mov	_TH1,#0xFC
                            750 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:98: TL1 = (65536-1000) % 256;   // Load initial lower 8 bits into Timer 1
   01EE 75 8B 18            751 	mov	_TL1,#0x18
                            752 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:99: EA = 1;                // Enable all interrupt
   01F1 D2 AF               753 	setb	_EA
                            754 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:100: ET0 = 1;            // Enable Timer 0 interrupt
   01F3 D2 A9               755 	setb	_ET0
                            756 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:101: TR0 = 1;            // Start Timer 0
   01F5 D2 8C               757 	setb	_TR0
                            758 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:102: ET1 = 1;            // Enable Timer 1 interrupt
   01F7 D2 AB               759 	setb	_ET1
                            760 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:103: TR1 = 1;             // Start Timer 1
   01F9 D2 8E               761 	setb	_TR1
   01FB 22                  762 	ret
                            763 ;------------------------------------------------------------
                            764 ;Allocation info for local variables in function 'timer0_isr'
                            765 ;------------------------------------------------------------
                            766 ;------------------------------------------------------------
                            767 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:107: void timer0_isr(void) __interrupt TF0_VECTOR __using 1 {
                            768 ;	-----------------------------------------
                            769 ;	 function timer0_isr
                            770 ;	-----------------------------------------
   01FC                     771 _timer0_isr:
                    000A    772 	ar2 = 0x0a
                    000B    773 	ar3 = 0x0b
                    000C    774 	ar4 = 0x0c
                    000D    775 	ar5 = 0x0d
                    000E    776 	ar6 = 0x0e
                    000F    777 	ar7 = 0x0f
                    0008    778 	ar0 = 0x08
                    0009    779 	ar1 = 0x09
   01FC C0 E0               780 	push	acc
   01FE C0 D0               781 	push	psw
   0200 75 D0 08            782 	mov	psw,#0x08
                            783 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:108: if (PWM_state == 1) {
   0203 74 01               784 	mov	a,#0x01
   0205 B5 1D 37            785 	cjne	a,_PWM_state,00112$
                            786 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:109: temp = 65536 - toff;
   0208 AA 14               787 	mov	r2,_toff
   020A AB 15               788 	mov	r3,(_toff + 1)
   020C E4                  789 	clr	a
   020D FC                  790 	mov	r4,a
   020E FD                  791 	mov	r5,a
   020F C3                  792 	clr	c
   0210 9A                  793 	subb	a,r2
   0211 FA                  794 	mov	r2,a
   0212 E4                  795 	clr	a
   0213 9B                  796 	subb	a,r3
   0214 FB                  797 	mov	r3,a
   0215 74 01               798 	mov	a,#0x01
   0217 9C                  799 	subb	a,r4
   0218 FC                  800 	mov	r4,a
   0219 E4                  801 	clr	a
   021A 9D                  802 	subb	a,r5
   021B FD                  803 	mov	r5,a
   021C 8A 16               804 	mov	_temp,r2
   021E 8B 17               805 	mov	(_temp + 1),r3
                            806 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:110: TH0 = temp / 256;
   0220 AA 17               807 	mov	r2,(_temp + 1)
   0222 8A 8C               808 	mov	_TH0,r2
                            809 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:111: TL0 = temp % 256;
   0224 AA 16               810 	mov	r2,_temp
   0226 7B 00               811 	mov	r3,#0x00
   0228 8A 8A               812 	mov	_TL0,r2
                            813 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:112: if (Action == 1) {
   022A 74 01               814 	mov	a,#0x01
   022C B5 1E 04            815 	cjne	a,_Action,00104$
                            816 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:113: P2_7 = 0;
   022F C2 A7               817 	clr	_P2_7
   0231 80 07               818 	sjmp	00105$
   0233                     819 00104$:
                            820 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:114: } else if (Action == 2) {
   0233 74 02               821 	mov	a,#0x02
   0235 B5 1E 02            822 	cjne	a,_Action,00105$
                            823 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:115: P2_6 = 0;
   0238 C2 A6               824 	clr	_P2_6
   023A                     825 00105$:
                            826 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:117: PWM_state = 0;
   023A 75 1D 00            827 	mov	_PWM_state,#0x00
   023D 80 35               828 	sjmp	00114$
   023F                     829 00112$:
                            830 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:119: temp = 65536 - ton;
   023F AA 12               831 	mov	r2,_ton
   0241 AB 13               832 	mov	r3,(_ton + 1)
   0243 E4                  833 	clr	a
   0244 FC                  834 	mov	r4,a
   0245 FD                  835 	mov	r5,a
   0246 C3                  836 	clr	c
   0247 9A                  837 	subb	a,r2
   0248 FA                  838 	mov	r2,a
   0249 E4                  839 	clr	a
   024A 9B                  840 	subb	a,r3
   024B FB                  841 	mov	r3,a
   024C 74 01               842 	mov	a,#0x01
   024E 9C                  843 	subb	a,r4
   024F FC                  844 	mov	r4,a
   0250 E4                  845 	clr	a
   0251 9D                  846 	subb	a,r5
   0252 FD                  847 	mov	r5,a
   0253 8A 16               848 	mov	_temp,r2
   0255 8B 17               849 	mov	(_temp + 1),r3
                            850 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:120: TH0 = temp / 256;
   0257 AA 17               851 	mov	r2,(_temp + 1)
   0259 8A 8C               852 	mov	_TH0,r2
                            853 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:121: TL0 = temp % 256;
   025B AA 16               854 	mov	r2,_temp
   025D 7B 00               855 	mov	r3,#0x00
   025F 8A 8A               856 	mov	_TL0,r2
                            857 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:122: if (Action == 1) {
   0261 74 01               858 	mov	a,#0x01
   0263 B5 1E 04            859 	cjne	a,_Action,00109$
                            860 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:123: P2_7 = 1;
   0266 D2 A7               861 	setb	_P2_7
   0268 80 07               862 	sjmp	00110$
   026A                     863 00109$:
                            864 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:124: } else if (Action == 2) {
   026A 74 02               865 	mov	a,#0x02
   026C B5 1E 02            866 	cjne	a,_Action,00110$
                            867 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:125: P2_6 = 1;
   026F D2 A6               868 	setb	_P2_6
   0271                     869 00110$:
                            870 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:127: PWM_state = 1;
   0271 75 1D 01            871 	mov	_PWM_state,#0x01
   0274                     872 00114$:
   0274 D0 D0               873 	pop	psw
   0276 D0 E0               874 	pop	acc
   0278 32                  875 	reti
                            876 ;	eliminated unneeded push/pop dpl
                            877 ;	eliminated unneeded push/pop dph
                            878 ;	eliminated unneeded push/pop b
                            879 ;------------------------------------------------------------
                            880 ;Allocation info for local variables in function 'time_count_add'
                            881 ;------------------------------------------------------------
                            882 ;------------------------------------------------------------
                            883 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:131: void time_count_add(void) __interrupt 3 {   // 10ms
                            884 ;	-----------------------------------------
                            885 ;	 function time_count_add
                            886 ;	-----------------------------------------
   0279                     887 _time_count_add:
                    0002    888 	ar2 = 0x02
                    0003    889 	ar3 = 0x03
                    0004    890 	ar4 = 0x04
                    0005    891 	ar5 = 0x05
                    0006    892 	ar6 = 0x06
                    0007    893 	ar7 = 0x07
                    0000    894 	ar0 = 0x00
                    0001    895 	ar1 = 0x01
   0279 C0 E0               896 	push	acc
   027B C0 D0               897 	push	psw
   027D 75 D0 00            898 	mov	psw,#0x00
                            899 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:132: TH1 = (65536 - 10000) / 256;
   0280 75 8D D8            900 	mov	_TH1,#0xD8
                            901 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:133: TL1 = (65536 - 10000) % 256; 
   0283 75 8B F0            902 	mov	_TL1,#0xF0
                            903 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:134: time_count++;
   0286 05 18               904 	inc	_time_count
   0288 E4                  905 	clr	a
   0289 B5 18 02            906 	cjne	a,_time_count,00115$
   028C 05 19               907 	inc	(_time_count + 1)
   028E                     908 00115$:
                            909 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:135: if (time_count == 100) {
   028E 74 64               910 	mov	a,#0x64
   0290 B5 18 06            911 	cjne	a,_time_count,00116$
   0293 E4                  912 	clr	a
   0294 B5 19 02            913 	cjne	a,(_time_count + 1),00116$
   0297 80 02               914 	sjmp	00117$
   0299                     915 00116$:
   0299 80 23               916 	sjmp	00109$
   029B                     917 00117$:
                            918 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:136: time_count = 0;
   029B E4                  919 	clr	a
   029C F5 18               920 	mov	_time_count,a
   029E F5 19               921 	mov	(_time_count + 1),a
                            922 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:137: if (++T_sec == 60) {
   02A0 05 1C               923 	inc	_T_sec
   02A2 74 3C               924 	mov	a,#0x3C
   02A4 B5 1C 17            925 	cjne	a,_T_sec,00109$
                            926 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:138: T_sec = 0;
   02A7 75 1C 00            927 	mov	_T_sec,#0x00
                            928 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:139: if (++T_min == 60) {
   02AA 05 1B               929 	inc	_T_min
   02AC 74 3C               930 	mov	a,#0x3C
   02AE B5 1B 0D            931 	cjne	a,_T_min,00109$
                            932 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:140: T_min = 0;
   02B1 75 1B 00            933 	mov	_T_min,#0x00
                            934 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:141: if (++T_hour == 24) {
   02B4 05 1A               935 	inc	_T_hour
   02B6 74 18               936 	mov	a,#0x18
   02B8 B5 1A 03            937 	cjne	a,_T_hour,00109$
                            938 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:142: T_hour = 0;
   02BB 75 1A 00            939 	mov	_T_hour,#0x00
   02BE                     940 00109$:
   02BE D0 D0               941 	pop	psw
   02C0 D0 E0               942 	pop	acc
   02C2 32                  943 	reti
                            944 ;	eliminated unneeded push/pop dpl
                            945 ;	eliminated unneeded push/pop dph
                            946 ;	eliminated unneeded push/pop b
                            947 ;------------------------------------------------------------
                            948 ;Allocation info for local variables in function 'server_action'
                            949 ;------------------------------------------------------------
                            950 ;act                       Allocated to registers r2 r3 
                            951 ;------------------------------------------------------------
                            952 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:151: void server_action(int act) {
                            953 ;	-----------------------------------------
                            954 ;	 function server_action
                            955 ;	-----------------------------------------
   02C3                     956 _server_action:
   02C3 AA 82               957 	mov	r2,dpl
   02C5 AB 83               958 	mov	r3,dph
                            959 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:152: Action = act;
   02C7 8A 1E               960 	mov	_Action,r2
                            961 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:153: if (act == 1) {
   02C9 BA 01 16            962 	cjne	r2,#0x01,00104$
   02CC BB 00 13            963 	cjne	r3,#0x00,00104$
                            964 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:154: ton = 2100; //2.2ms 左轉
   02CF 75 12 34            965 	mov	_ton,#0x34
   02D2 75 13 08            966 	mov	(_ton + 1),#0x08
                            967 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:155: delay_ms(2000);
   02D5 90 07 D0            968 	mov	dptr,#0x07D0
   02D8 12 01 7A            969 	lcall	_delay_ms
                            970 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:156: ton = 1000;
   02DB 75 12 E8            971 	mov	_ton,#0xE8
   02DE 75 13 03            972 	mov	(_ton + 1),#0x03
   02E1 22                  973 	ret
   02E2                     974 00104$:
                            975 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:157: } else if (act == 2) {
   02E2 BA 02 15            976 	cjne	r2,#0x02,00106$
   02E5 BB 00 12            977 	cjne	r3,#0x00,00106$
                            978 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:158: ton = 1000;
   02E8 75 12 E8            979 	mov	_ton,#0xE8
   02EB 75 13 03            980 	mov	(_ton + 1),#0x03
                            981 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:159: delay_ms(2000);
   02EE 90 07 D0            982 	mov	dptr,#0x07D0
   02F1 12 01 7A            983 	lcall	_delay_ms
                            984 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:160: ton = 2100;
   02F4 75 12 34            985 	mov	_ton,#0x34
   02F7 75 13 08            986 	mov	(_ton + 1),#0x08
   02FA                     987 00106$:
   02FA 22                  988 	ret
                            989 ;------------------------------------------------------------
                            990 ;Allocation info for local variables in function 'server_initial'
                            991 ;------------------------------------------------------------
                            992 ;------------------------------------------------------------
                            993 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:164: void server_initial(void) {
                            994 ;	-----------------------------------------
                            995 ;	 function server_initial
                            996 ;	-----------------------------------------
   02FB                     997 _server_initial:
                            998 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:165: server_action(1);
   02FB 90 00 01            999 	mov	dptr,#0x0001
   02FE 12 02 C3           1000 	lcall	_server_action
                           1001 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:166: delay_ms(2000);
   0301 90 07 D0           1002 	mov	dptr,#0x07D0
   0304 12 01 7A           1003 	lcall	_delay_ms
                           1004 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:167: server_action(2);
   0307 90 00 02           1005 	mov	dptr,#0x0002
   030A 02 02 C3           1006 	ljmp	_server_action
                           1007 ;------------------------------------------------------------
                           1008 ;Allocation info for local variables in function 'finish_setup'
                           1009 ;------------------------------------------------------------
                           1010 ;------------------------------------------------------------
                           1011 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:170: void finish_setup(void) {
                           1012 ;	-----------------------------------------
                           1013 ;	 function finish_setup
                           1014 ;	-----------------------------------------
   030D                    1015 _finish_setup:
                           1016 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:171: P1 = 0xff;
   030D 75 90 FF           1017 	mov	_P1,#0xFF
                           1018 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:172: for (i = 0; i < 10; i++) {
   0310 75 22 00           1019 	mov	_i,#0x00
   0313                    1020 00101$:
   0313 C3                 1021 	clr	c
   0314 E5 22              1022 	mov	a,_i
   0316 64 80              1023 	xrl	a,#0x80
   0318 94 8A              1024 	subb	a,#0x8a
   031A 50 0F              1025 	jnc	00104$
                           1026 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:173: P1 = ~P1;
   031C E5 90              1027 	mov	a,_P1
   031E F4                 1028 	cpl	a
   031F F5 90              1029 	mov	_P1,a
                           1030 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:174: delay_ms(300);
   0321 90 01 2C           1031 	mov	dptr,#0x012C
   0324 12 01 7A           1032 	lcall	_delay_ms
                           1033 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:172: for (i = 0; i < 10; i++) {
   0327 05 22              1034 	inc	_i
   0329 80 E8              1035 	sjmp	00101$
   032B                    1036 00104$:
                           1037 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:176: P1 = 0xff;
   032B 75 90 FF           1038 	mov	_P1,#0xFF
   032E 22                 1039 	ret
                           1040 ;------------------------------------------------------------
                           1041 ;Allocation info for local variables in function 'main'
                           1042 ;------------------------------------------------------------
                           1043 ;prebtn0                   Allocated to registers r2 
                           1044 ;prebtn1                   Allocated to registers r3 
                           1045 ;prebtn2                   Allocated to registers r4 
                           1046 ;prebtn3                   Allocated to registers r5 
                           1047 ;mode2_change_place        Allocated to stack - offset 1
                           1048 ;open_close_time           Allocated to stack - offset 2
                           1049 ;mode                      Allocated to stack - offset 8
                           1050 ;BT_data                   Allocated to stack - offset 9
                           1051 ;sloc0                     Allocated to stack - offset 10
                           1052 ;sloc1                     Allocated to stack - offset 11
                           1053 ;sloc2                     Allocated to stack - offset 12
                           1054 ;sloc3                     Allocated to stack - offset 17
                           1055 ;------------------------------------------------------------
                           1056 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:179: void main(void) {
                           1057 ;	-----------------------------------------
                           1058 ;	 function main
                           1059 ;	-----------------------------------------
   032F                    1060 _main:
   032F C0 23              1061 	push	_bp
   0331 E5 81              1062 	mov	a,sp
   0333 F5 23              1063 	mov	_bp,a
   0335 24 0C              1064 	add	a,#0x0c
   0337 F5 81              1065 	mov	sp,a
                           1066 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:180: char prebtn0 = 0, prebtn1 = 0, prebtn2 = 0, prebtn3 = 0;
   0339 7A 00              1067 	mov	r2,#0x00
   033B 7B 00              1068 	mov	r3,#0x00
   033D 7C 00              1069 	mov	r4,#0x00
   033F 7D 00              1070 	mov	r5,#0x00
                           1071 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:181: char mode2_change_place = 0;
   0341 A8 23              1072 	mov	r0,_bp
   0343 08                 1073 	inc	r0
   0344 76 00              1074 	mov	@r0,#0x00
                           1075 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:182: char open_close_time[6] = {0, 0, 0, 0, 0, 0}; //open: Hour, Minute, Second. close: Hour, Minute, Second.
   0346 E5 23              1076 	mov	a,_bp
   0348 24 02              1077 	add	a,#0x02
   034A F8                 1078 	mov	r0,a
   034B 76 00              1079 	mov	@r0,#0x00
   034D E8                 1080 	mov	a,r0
   034E 04                 1081 	inc	a
   034F F9                 1082 	mov	r1,a
   0350 77 00              1083 	mov	@r1,#0x00
   0352 74 02              1084 	mov	a,#0x02
   0354 28                 1085 	add	a,r0
   0355 FF                 1086 	mov	r7,a
   0356 C0 00              1087 	push	ar0
   0358 A8 07              1088 	mov	r0,ar7
   035A 76 00              1089 	mov	@r0,#0x00
   035C D0 00              1090 	pop	ar0
   035E C0 01              1091 	push	ar1
   0360 E5 23              1092 	mov	a,_bp
   0362 24 0A              1093 	add	a,#0x0a
   0364 F9                 1094 	mov	r1,a
   0365 74 03              1095 	mov	a,#0x03
   0367 28                 1096 	add	a,r0
   0368 F7                 1097 	mov	@r1,a
   0369 D0 01              1098 	pop	ar1
   036B C0 00              1099 	push	ar0
   036D E5 23              1100 	mov	a,_bp
   036F 24 0A              1101 	add	a,#0x0a
   0371 F8                 1102 	mov	r0,a
   0372 86 00              1103 	mov	ar0,@r0
   0374 76 00              1104 	mov	@r0,#0x00
   0376 D0 00              1105 	pop	ar0
   0378 C0 01              1106 	push	ar1
   037A E5 23              1107 	mov	a,_bp
   037C 24 0B              1108 	add	a,#0x0b
   037E F9                 1109 	mov	r1,a
   037F 74 04              1110 	mov	a,#0x04
   0381 28                 1111 	add	a,r0
   0382 F7                 1112 	mov	@r1,a
   0383 D0 01              1113 	pop	ar1
   0385 C0 00              1114 	push	ar0
   0387 E5 23              1115 	mov	a,_bp
   0389 24 0B              1116 	add	a,#0x0b
   038B F8                 1117 	mov	r0,a
   038C 86 00              1118 	mov	ar0,@r0
   038E 76 00              1119 	mov	@r0,#0x00
   0390 D0 00              1120 	pop	ar0
   0392 C0 01              1121 	push	ar1
   0394 E5 23              1122 	mov	a,_bp
   0396 24 0C              1123 	add	a,#0x0c
   0398 F9                 1124 	mov	r1,a
   0399 74 05              1125 	mov	a,#0x05
   039B 28                 1126 	add	a,r0
   039C F7                 1127 	mov	@r1,a
   039D D0 01              1128 	pop	ar1
   039F C0 00              1129 	push	ar0
   03A1 E5 23              1130 	mov	a,_bp
   03A3 24 0C              1131 	add	a,#0x0c
   03A5 F8                 1132 	mov	r0,a
   03A6 86 00              1133 	mov	ar0,@r0
   03A8 76 00              1134 	mov	@r0,#0x00
                           1135 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:183: char mode = 1;
   03AA E5 23              1136 	mov	a,_bp
   03AC 24 08              1137 	add	a,#0x08
   03AE F8                 1138 	mov	r0,a
   03AF 76 01              1139 	mov	@r0,#0x01
   03B1 D0 00              1140 	pop	ar0
                           1141 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:185: INT0 = 1; INT1 = 1; P2_0 = 1; P2_1 = 1;
   03B3 D2 B2              1142 	setb	_INT0
   03B5 D2 B3              1143 	setb	_INT1
   03B7 D2 A0              1144 	setb	_P2_0
   03B9 D2 A1              1145 	setb	_P2_1
                           1146 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:186: ton = 1500;
   03BB 75 12 DC           1147 	mov	_ton,#0xDC
   03BE 75 13 05           1148 	mov	(_ton + 1),#0x05
                           1149 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:187: toff = 30000 - 1500;
   03C1 75 14 54           1150 	mov	_toff,#0x54
   03C4 75 15 6F           1151 	mov	(_toff + 1),#0x6F
                           1152 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:188: SSD_Initial();
   03C7 C0 02              1153 	push	ar2
   03C9 C0 03              1154 	push	ar3
   03CB C0 04              1155 	push	ar4
   03CD C0 05              1156 	push	ar5
   03CF C0 07              1157 	push	ar7
   03D1 C0 00              1158 	push	ar0
   03D3 C0 01              1159 	push	ar1
   03D5 12 01 24           1160 	lcall	_SSD_Initial
                           1161 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:189: time_initial();
   03D8 12 01 C7           1162 	lcall	_time_initial
                           1163 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:190: UART_Init();
   03DB 12 01 95           1164 	lcall	_UART_Init
                           1165 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:191: server_initial();
   03DE 12 02 FB           1166 	lcall	_server_initial
                           1167 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:192: finish_setup();
   03E1 12 03 0D           1168 	lcall	_finish_setup
   03E4 D0 01              1169 	pop	ar1
   03E6 D0 00              1170 	pop	ar0
   03E8 D0 07              1171 	pop	ar7
   03EA D0 05              1172 	pop	ar5
   03EC D0 04              1173 	pop	ar4
   03EE D0 03              1174 	pop	ar3
   03F0 D0 02              1175 	pop	ar2
                           1176 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:194: while (1) {
   03F2                    1177 00273$:
                           1178 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:195: if (BT_data == '1') {
   03F2 C0 00              1179 	push	ar0
   03F4 E5 23              1180 	mov	a,_bp
   03F6 24 09              1181 	add	a,#0x09
   03F8 F8                 1182 	mov	r0,a
   03F9 B6 31 02           1183 	cjne	@r0,#0x31,00357$
   03FC 80 04              1184 	sjmp	00358$
   03FE                    1185 00357$:
   03FE D0 00              1186 	pop	ar0
   0400 80 31              1187 	sjmp	00104$
   0402                    1188 00358$:
   0402 D0 00              1189 	pop	ar0
                           1190 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:196: server_action(1);
   0404 90 00 01           1191 	mov	dptr,#0x0001
   0407 C0 02              1192 	push	ar2
   0409 C0 03              1193 	push	ar3
   040B C0 04              1194 	push	ar4
   040D C0 05              1195 	push	ar5
   040F C0 07              1196 	push	ar7
   0411 C0 00              1197 	push	ar0
   0413 C0 01              1198 	push	ar1
   0415 12 02 C3           1199 	lcall	_server_action
   0418 D0 01              1200 	pop	ar1
   041A D0 00              1201 	pop	ar0
   041C D0 07              1202 	pop	ar7
   041E D0 05              1203 	pop	ar5
   0420 D0 04              1204 	pop	ar4
   0422 D0 03              1205 	pop	ar3
   0424 D0 02              1206 	pop	ar2
                           1207 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:197: BT_data = ' ';
   0426 C0 00              1208 	push	ar0
   0428 E5 23              1209 	mov	a,_bp
   042A 24 09              1210 	add	a,#0x09
   042C F8                 1211 	mov	r0,a
   042D 76 20              1212 	mov	@r0,#0x20
   042F D0 00              1213 	pop	ar0
   0431 80 3F              1214 	sjmp	00105$
   0433                    1215 00104$:
                           1216 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:198: } else if (BT_data == '2') {
   0433 C0 00              1217 	push	ar0
   0435 E5 23              1218 	mov	a,_bp
   0437 24 09              1219 	add	a,#0x09
   0439 F8                 1220 	mov	r0,a
   043A B6 32 02           1221 	cjne	@r0,#0x32,00359$
   043D 80 04              1222 	sjmp	00360$
   043F                    1223 00359$:
   043F D0 00              1224 	pop	ar0
   0441 80 2F              1225 	sjmp	00105$
   0443                    1226 00360$:
   0443 D0 00              1227 	pop	ar0
                           1228 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:199: server_action(2);
   0445 90 00 02           1229 	mov	dptr,#0x0002
   0448 C0 02              1230 	push	ar2
   044A C0 03              1231 	push	ar3
   044C C0 04              1232 	push	ar4
   044E C0 05              1233 	push	ar5
   0450 C0 07              1234 	push	ar7
   0452 C0 00              1235 	push	ar0
   0454 C0 01              1236 	push	ar1
   0456 12 02 C3           1237 	lcall	_server_action
   0459 D0 01              1238 	pop	ar1
   045B D0 00              1239 	pop	ar0
   045D D0 07              1240 	pop	ar7
   045F D0 05              1241 	pop	ar5
   0461 D0 04              1242 	pop	ar4
   0463 D0 03              1243 	pop	ar3
   0465 D0 02              1244 	pop	ar2
                           1245 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:200: BT_data = ' ';
   0467 C0 00              1246 	push	ar0
   0469 E5 23              1247 	mov	a,_bp
   046B 24 09              1248 	add	a,#0x09
   046D F8                 1249 	mov	r0,a
   046E 76 20              1250 	mov	@r0,#0x20
   0470 D0 00              1251 	pop	ar0
   0472                    1252 00105$:
                           1253 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:203: if (INT0 == 0 && prebtn0 == 1) {
   0472 30 B2 03           1254 	jnb	_INT0,00361$
   0475 02 05 B5           1255 	ljmp	00138$
   0478                    1256 00361$:
   0478 BA 01 02           1257 	cjne	r2,#0x01,00362$
   047B 80 03              1258 	sjmp	00363$
   047D                    1259 00362$:
   047D 02 05 B5           1260 	ljmp	00138$
   0480                    1261 00363$:
                           1262 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:204: delay_ms(10);
   0480 90 00 0A           1263 	mov	dptr,#0x000A
   0483 C0 03              1264 	push	ar3
   0485 C0 04              1265 	push	ar4
   0487 C0 05              1266 	push	ar5
   0489 C0 07              1267 	push	ar7
   048B C0 00              1268 	push	ar0
   048D C0 01              1269 	push	ar1
   048F 12 01 7A           1270 	lcall	_delay_ms
   0492 D0 01              1271 	pop	ar1
   0494 D0 00              1272 	pop	ar0
   0496 D0 07              1273 	pop	ar7
   0498 D0 05              1274 	pop	ar5
   049A D0 04              1275 	pop	ar4
   049C D0 03              1276 	pop	ar3
                           1277 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:205: if (INT0 == 0) {
   049E 30 B2 03           1278 	jnb	_INT0,00364$
   04A1 02 05 B5           1279 	ljmp	00138$
   04A4                    1280 00364$:
                           1281 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:206: if (mode == 1) { // 開燈
   04A4 C0 00              1282 	push	ar0
   04A6 E5 23              1283 	mov	a,_bp
   04A8 24 08              1284 	add	a,#0x08
   04AA F8                 1285 	mov	r0,a
   04AB B6 01 02           1286 	cjne	@r0,#0x01,00365$
   04AE 80 04              1287 	sjmp	00366$
   04B0                    1288 00365$:
   04B0 D0 00              1289 	pop	ar0
   04B2 80 23              1290 	sjmp	00133$
   04B4                    1291 00366$:
   04B4 D0 00              1292 	pop	ar0
                           1293 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:207: server_action(1);
   04B6 90 00 01           1294 	mov	dptr,#0x0001
   04B9 C0 03              1295 	push	ar3
   04BB C0 04              1296 	push	ar4
   04BD C0 05              1297 	push	ar5
   04BF C0 07              1298 	push	ar7
   04C1 C0 00              1299 	push	ar0
   04C3 C0 01              1300 	push	ar1
   04C5 12 02 C3           1301 	lcall	_server_action
   04C8 D0 01              1302 	pop	ar1
   04CA D0 00              1303 	pop	ar0
   04CC D0 07              1304 	pop	ar7
   04CE D0 05              1305 	pop	ar5
   04D0 D0 04              1306 	pop	ar4
   04D2 D0 03              1307 	pop	ar3
   04D4 02 05 B5           1308 	ljmp	00138$
   04D7                    1309 00133$:
                           1310 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:208: } else if (mode == 2) {
   04D7 C0 00              1311 	push	ar0
   04D9 E5 23              1312 	mov	a,_bp
   04DB 24 08              1313 	add	a,#0x08
   04DD F8                 1314 	mov	r0,a
   04DE B6 02 02           1315 	cjne	@r0,#0x02,00367$
   04E1 80 04              1316 	sjmp	00368$
   04E3                    1317 00367$:
   04E3 D0 00              1318 	pop	ar0
   04E5 80 6E              1319 	sjmp	00130$
   04E7                    1320 00368$:
                           1321 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:209: switch(mode2_change_place) {
   04E7 A8 23              1322 	mov	r0,_bp
   04E9 08                 1323 	inc	r0
   04EA B6 00 04           1324 	cjne	@r0,#0x00,00369$
   04ED D0 00              1325 	pop	ar0
   04EF 80 0E              1326 	sjmp	00107$
   04F1                    1327 00369$:
   04F1 A8 23              1328 	mov	r0,_bp
   04F3 08                 1329 	inc	r0
   04F4 B6 03 02           1330 	cjne	@r0,#0x03,00370$
   04F7 80 04              1331 	sjmp	00371$
   04F9                    1332 00370$:
   04F9 D0 00              1333 	pop	ar0
   04FB 80 2E              1334 	sjmp	00110$
   04FD                    1335 00371$:
   04FD D0 00              1336 	pop	ar0
                           1337 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:211: case 3:
   04FF                    1338 00107$:
                           1339 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:212: if (++open_close_time[mode2_change_place] == 24) {
   04FF C0 05              1340 	push	ar5
   0501 C0 01              1341 	push	ar1
   0503 A9 23              1342 	mov	r1,_bp
   0505 09                 1343 	inc	r1
   0506 E7                 1344 	mov	a,@r1
   0507 28                 1345 	add	a,r0
   0508 FA                 1346 	mov	r2,a
   0509 D0 01              1347 	pop	ar1
   050B C0 00              1348 	push	ar0
   050D A8 02              1349 	mov	r0,ar2
   050F 06                 1350 	inc	@r0
   0510 86 05              1351 	mov	ar5,@r0
   0512 D0 00              1352 	pop	ar0
   0514 BD 18 02           1353 	cjne	r5,#0x18,00372$
   0517 80 05              1354 	sjmp	00373$
   0519                    1355 00372$:
   0519 D0 05              1356 	pop	ar5
   051B 02 05 B5           1357 	ljmp	00138$
   051E                    1358 00373$:
   051E D0 05              1359 	pop	ar5
                           1360 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:213: open_close_time[mode2_change_place] = 0;
   0520 C0 00              1361 	push	ar0
   0522 A8 02              1362 	mov	r0,ar2
   0524 76 00              1363 	mov	@r0,#0x00
   0526 D0 00              1364 	pop	ar0
                           1365 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:215: break;
   0528 02 05 B5           1366 	ljmp	00138$
                           1367 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:216: default:
   052B                    1368 00110$:
                           1369 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:217: if (++open_close_time[mode2_change_place] == 60) {
   052B C0 05              1370 	push	ar5
   052D C0 01              1371 	push	ar1
   052F A9 23              1372 	mov	r1,_bp
   0531 09                 1373 	inc	r1
   0532 E7                 1374 	mov	a,@r1
   0533 28                 1375 	add	a,r0
   0534 FA                 1376 	mov	r2,a
   0535 D0 01              1377 	pop	ar1
   0537 C0 00              1378 	push	ar0
   0539 A8 02              1379 	mov	r0,ar2
   053B 06                 1380 	inc	@r0
   053C 86 05              1381 	mov	ar5,@r0
   053E D0 00              1382 	pop	ar0
   0540 BD 3C 02           1383 	cjne	r5,#0x3C,00374$
   0543 80 04              1384 	sjmp	00375$
   0545                    1385 00374$:
   0545 D0 05              1386 	pop	ar5
   0547 80 6C              1387 	sjmp	00138$
   0549                    1388 00375$:
   0549 D0 05              1389 	pop	ar5
                           1390 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:218: open_close_time[mode2_change_place] = 0;
   054B C0 00              1391 	push	ar0
   054D A8 02              1392 	mov	r0,ar2
   054F 76 00              1393 	mov	@r0,#0x00
   0551 D0 00              1394 	pop	ar0
                           1395 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:220: }
   0553 80 60              1396 	sjmp	00138$
   0555                    1397 00130$:
                           1398 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:221: } else if (mode == 3) {
   0555 C0 00              1399 	push	ar0
   0557 E5 23              1400 	mov	a,_bp
   0559 24 08              1401 	add	a,#0x08
   055B F8                 1402 	mov	r0,a
   055C B6 03 04           1403 	cjne	@r0,#0x03,00376$
   055F D0 00              1404 	pop	ar0
   0561 80 52              1405 	sjmp	00138$
   0563                    1406 00376$:
                           1407 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:223: } else if (mode == 4) {
   0563 E5 23              1408 	mov	a,_bp
   0565 24 08              1409 	add	a,#0x08
   0567 F8                 1410 	mov	r0,a
   0568 B6 04 02           1411 	cjne	@r0,#0x04,00377$
   056B 80 04              1412 	sjmp	00378$
   056D                    1413 00377$:
   056D D0 00              1414 	pop	ar0
   056F 80 44              1415 	sjmp	00138$
   0571                    1416 00378$:
   0571 D0 00              1417 	pop	ar0
                           1418 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:224: switch (change_time) {
   0573 E4                 1419 	clr	a
   0574 B5 1F 02           1420 	cjne	a,_change_time,00379$
   0577 80 0E              1421 	sjmp	00114$
   0579                    1422 00379$:
   0579 74 01              1423 	mov	a,#0x01
   057B B5 1F 02           1424 	cjne	a,_change_time,00380$
   057E 80 17              1425 	sjmp	00117$
   0580                    1426 00380$:
   0580 74 02              1427 	mov	a,#0x02
                           1428 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:225: case 0:
   0582 B5 1F 30           1429 	cjne	a,_change_time,00138$
   0585 80 20              1430 	sjmp	00120$
   0587                    1431 00114$:
                           1432 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:226: if (++T_hour >= 24) {
   0587 05 1A              1433 	inc	_T_hour
   0589 C3                 1434 	clr	c
   058A E5 1A              1435 	mov	a,_T_hour
   058C 64 80              1436 	xrl	a,#0x80
   058E 94 98              1437 	subb	a,#0x98
   0590 40 23              1438 	jc	00138$
                           1439 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:227: T_hour = 0;
   0592 75 1A 00           1440 	mov	_T_hour,#0x00
                           1441 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:229: break;
                           1442 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:230: case 1:
   0595 80 1E              1443 	sjmp	00138$
   0597                    1444 00117$:
                           1445 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:231: if (++T_min >= 60) {
   0597 05 1B              1446 	inc	_T_min
   0599 C3                 1447 	clr	c
   059A E5 1B              1448 	mov	a,_T_min
   059C 64 80              1449 	xrl	a,#0x80
   059E 94 BC              1450 	subb	a,#0xbc
   05A0 40 13              1451 	jc	00138$
                           1452 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:232: T_min = 0;
   05A2 75 1B 00           1453 	mov	_T_min,#0x00
                           1454 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:234: break;
                           1455 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:235: case 2:
   05A5 80 0E              1456 	sjmp	00138$
   05A7                    1457 00120$:
                           1458 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:236: if (++T_sec >= 60) {
   05A7 05 1C              1459 	inc	_T_sec
   05A9 C3                 1460 	clr	c
   05AA E5 1C              1461 	mov	a,_T_sec
   05AC 64 80              1462 	xrl	a,#0x80
   05AE 94 BC              1463 	subb	a,#0xbc
   05B0 40 03              1464 	jc	00138$
                           1465 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:237: T_sec = 0;
   05B2 75 1C 00           1466 	mov	_T_sec,#0x00
                           1467 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:239: }
   05B5                    1468 00138$:
                           1469 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:243: if (INT1 == 0 && prebtn1 == 1) {
   05B5 30 B3 03           1470 	jnb	_INT1,00385$
   05B8 02 06 E5           1471 	ljmp	00176$
   05BB                    1472 00385$:
   05BB BB 01 02           1473 	cjne	r3,#0x01,00386$
   05BE 80 03              1474 	sjmp	00387$
   05C0                    1475 00386$:
   05C0 02 06 E5           1476 	ljmp	00176$
   05C3                    1477 00387$:
                           1478 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:244: delay_ms(10);
   05C3 90 00 0A           1479 	mov	dptr,#0x000A
   05C6 C0 04              1480 	push	ar4
   05C8 C0 05              1481 	push	ar5
   05CA C0 07              1482 	push	ar7
   05CC C0 00              1483 	push	ar0
   05CE C0 01              1484 	push	ar1
   05D0 12 01 7A           1485 	lcall	_delay_ms
   05D3 D0 01              1486 	pop	ar1
   05D5 D0 00              1487 	pop	ar0
   05D7 D0 07              1488 	pop	ar7
   05D9 D0 05              1489 	pop	ar5
   05DB D0 04              1490 	pop	ar4
                           1491 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:245: if (INT1 == 0) {
   05DD 30 B3 03           1492 	jnb	_INT1,00388$
   05E0 02 06 E5           1493 	ljmp	00176$
   05E3                    1494 00388$:
                           1495 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:246: if (mode == 1) {
   05E3 C0 00              1496 	push	ar0
   05E5 E5 23              1497 	mov	a,_bp
   05E7 24 08              1498 	add	a,#0x08
   05E9 F8                 1499 	mov	r0,a
   05EA B6 01 02           1500 	cjne	@r0,#0x01,00389$
   05ED 80 04              1501 	sjmp	00390$
   05EF                    1502 00389$:
   05EF D0 00              1503 	pop	ar0
   05F1 80 1F              1504 	sjmp	00171$
   05F3                    1505 00390$:
   05F3 D0 00              1506 	pop	ar0
                           1507 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:247: server_action(2);
   05F5 90 00 02           1508 	mov	dptr,#0x0002
   05F8 C0 04              1509 	push	ar4
   05FA C0 05              1510 	push	ar5
   05FC C0 07              1511 	push	ar7
   05FE C0 00              1512 	push	ar0
   0600 C0 01              1513 	push	ar1
   0602 12 02 C3           1514 	lcall	_server_action
   0605 D0 01              1515 	pop	ar1
   0607 D0 00              1516 	pop	ar0
   0609 D0 07              1517 	pop	ar7
   060B D0 05              1518 	pop	ar5
   060D D0 04              1519 	pop	ar4
   060F 02 06 E5           1520 	ljmp	00176$
   0612                    1521 00171$:
                           1522 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:248: } else if (mode == 2) {
   0612 C0 00              1523 	push	ar0
   0614 E5 23              1524 	mov	a,_bp
   0616 24 08              1525 	add	a,#0x08
   0618 F8                 1526 	mov	r0,a
   0619 B6 02 02           1527 	cjne	@r0,#0x02,00391$
   061C 80 04              1528 	sjmp	00392$
   061E                    1529 00391$:
   061E D0 00              1530 	pop	ar0
   0620 80 75              1531 	sjmp	00168$
   0622                    1532 00392$:
                           1533 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:249: switch(mode2_change_place) {
   0622 A8 23              1534 	mov	r0,_bp
   0624 08                 1535 	inc	r0
   0625 B6 00 04           1536 	cjne	@r0,#0x00,00393$
   0628 D0 00              1537 	pop	ar0
   062A 80 0E              1538 	sjmp	00141$
   062C                    1539 00393$:
   062C A8 23              1540 	mov	r0,_bp
   062E 08                 1541 	inc	r0
   062F B6 03 02           1542 	cjne	@r0,#0x03,00394$
   0632 80 04              1543 	sjmp	00395$
   0634                    1544 00394$:
   0634 D0 00              1545 	pop	ar0
   0636 80 32              1546 	sjmp	00144$
   0638                    1547 00395$:
   0638 D0 00              1548 	pop	ar0
                           1549 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:251: case 3:
   063A                    1550 00141$:
                           1551 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:252: if (--open_close_time[mode2_change_place] <= 0) {
   063A C0 05              1552 	push	ar5
   063C C0 01              1553 	push	ar1
   063E A9 23              1554 	mov	r1,_bp
   0640 09                 1555 	inc	r1
   0641 E7                 1556 	mov	a,@r1
   0642 28                 1557 	add	a,r0
   0643 FA                 1558 	mov	r2,a
   0644 D0 01              1559 	pop	ar1
   0646 C0 00              1560 	push	ar0
   0648 A8 02              1561 	mov	r0,ar2
   064A 16                 1562 	dec	@r0
   064B 86 05              1563 	mov	ar5,@r0
   064D D0 00              1564 	pop	ar0
   064F C3                 1565 	clr	c
   0650 74 80              1566 	mov	a,#(0x00 ^ 0x80)
   0652 8D F0              1567 	mov	b,r5
   0654 63 F0 80           1568 	xrl	b,#0x80
   0657 95 F0              1569 	subb	a,b
   0659 D0 05              1570 	pop	ar5
   065B 50 03              1571 	jnc	00396$
   065D 02 06 E5           1572 	ljmp	00176$
   0660                    1573 00396$:
                           1574 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:253: open_close_time[mode2_change_place] = 23;
   0660 C0 00              1575 	push	ar0
   0662 A8 02              1576 	mov	r0,ar2
   0664 76 17              1577 	mov	@r0,#0x17
   0666 D0 00              1578 	pop	ar0
                           1579 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:255: break;
                           1580 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:256: default:
   0668 80 7B              1581 	sjmp	00176$
   066A                    1582 00144$:
                           1583 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:257: if (--open_close_time[mode2_change_place] <= 0) {
   066A C0 05              1584 	push	ar5
   066C C0 01              1585 	push	ar1
   066E A9 23              1586 	mov	r1,_bp
   0670 09                 1587 	inc	r1
   0671 E7                 1588 	mov	a,@r1
   0672 28                 1589 	add	a,r0
   0673 FA                 1590 	mov	r2,a
   0674 D0 01              1591 	pop	ar1
   0676 C0 00              1592 	push	ar0
   0678 A8 02              1593 	mov	r0,ar2
   067A 16                 1594 	dec	@r0
   067B 86 05              1595 	mov	ar5,@r0
   067D D0 00              1596 	pop	ar0
   067F C3                 1597 	clr	c
   0680 74 80              1598 	mov	a,#(0x00 ^ 0x80)
   0682 8D F0              1599 	mov	b,r5
   0684 63 F0 80           1600 	xrl	b,#0x80
   0687 95 F0              1601 	subb	a,b
   0689 D0 05              1602 	pop	ar5
   068B 40 58              1603 	jc	00176$
                           1604 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:258: open_close_time[mode2_change_place] = 59;
   068D C0 00              1605 	push	ar0
   068F A8 02              1606 	mov	r0,ar2
   0691 76 3B              1607 	mov	@r0,#0x3B
   0693 D0 00              1608 	pop	ar0
                           1609 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:260: }
   0695 80 4E              1610 	sjmp	00176$
   0697                    1611 00168$:
                           1612 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:261: } else if (mode == 3) {
   0697 C0 00              1613 	push	ar0
   0699 E5 23              1614 	mov	a,_bp
   069B 24 08              1615 	add	a,#0x08
   069D F8                 1616 	mov	r0,a
   069E B6 03 04           1617 	cjne	@r0,#0x03,00398$
   06A1 D0 00              1618 	pop	ar0
   06A3 80 40              1619 	sjmp	00176$
   06A5                    1620 00398$:
                           1621 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:263: } else if (mode == 4) {
   06A5 E5 23              1622 	mov	a,_bp
   06A7 24 08              1623 	add	a,#0x08
   06A9 F8                 1624 	mov	r0,a
   06AA B6 04 02           1625 	cjne	@r0,#0x04,00399$
   06AD 80 04              1626 	sjmp	00400$
   06AF                    1627 00399$:
   06AF D0 00              1628 	pop	ar0
   06B1 80 32              1629 	sjmp	00176$
   06B3                    1630 00400$:
   06B3 D0 00              1631 	pop	ar0
                           1632 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:264: if (change_time == 0) {
   06B5 E5 1F              1633 	mov	a,_change_time
   06B7 70 0C              1634 	jnz	00160$
                           1635 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:265: if (--T_hour < 0) {
   06B9 15 1A              1636 	dec	_T_hour
   06BB E5 1A              1637 	mov	a,_T_hour
   06BD 30 E7 25           1638 	jnb	acc.7,00176$
                           1639 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:266: T_hour = 23;
   06C0 75 1A 17           1640 	mov	_T_hour,#0x17
   06C3 80 20              1641 	sjmp	00176$
   06C5                    1642 00160$:
                           1643 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:268: } else if (change_time == 1) {
   06C5 74 01              1644 	mov	a,#0x01
   06C7 B5 1F 0C           1645 	cjne	a,_change_time,00157$
                           1646 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:269: if (--T_min < 0) {
   06CA 15 1B              1647 	dec	_T_min
   06CC E5 1B              1648 	mov	a,_T_min
   06CE 30 E7 14           1649 	jnb	acc.7,00176$
                           1650 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:270: T_min = 59;
   06D1 75 1B 3B           1651 	mov	_T_min,#0x3B
   06D4 80 0F              1652 	sjmp	00176$
   06D6                    1653 00157$:
                           1654 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:272: } else if (change_time == 2) {
   06D6 74 02              1655 	mov	a,#0x02
   06D8 B5 1F 0A           1656 	cjne	a,_change_time,00176$
                           1657 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:273: if (--T_sec < 0) {
   06DB 15 1C              1658 	dec	_T_sec
   06DD E5 1C              1659 	mov	a,_T_sec
   06DF 30 E7 03           1660 	jnb	acc.7,00176$
                           1661 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:274: T_sec = 59;
   06E2 75 1C 3B           1662 	mov	_T_sec,#0x3B
   06E5                    1663 00176$:
                           1664 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:280: if (P2_0 == 0 && prebtn2 == 1) {
   06E5 30 A0 03           1665 	jnb	_P2_0,00409$
   06E8 02 07 76           1666 	ljmp	00192$
   06EB                    1667 00409$:
   06EB BC 01 02           1668 	cjne	r4,#0x01,00410$
   06EE 80 03              1669 	sjmp	00411$
   06F0                    1670 00410$:
   06F0 02 07 76           1671 	ljmp	00192$
   06F3                    1672 00411$:
                           1673 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:281: delay_ms(10);
   06F3 90 00 0A           1674 	mov	dptr,#0x000A
   06F6 C0 05              1675 	push	ar5
   06F8 C0 07              1676 	push	ar7
   06FA C0 00              1677 	push	ar0
   06FC C0 01              1678 	push	ar1
   06FE 12 01 7A           1679 	lcall	_delay_ms
   0701 D0 01              1680 	pop	ar1
   0703 D0 00              1681 	pop	ar0
   0705 D0 07              1682 	pop	ar7
   0707 D0 05              1683 	pop	ar5
                           1684 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:282: if (P2_0 == 0) {
   0709 20 A0 6A           1685 	jb	_P2_0,00192$
                           1686 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:283: if (mode == 1) {
   070C C0 00              1687 	push	ar0
   070E E5 23              1688 	mov	a,_bp
   0710 24 08              1689 	add	a,#0x08
   0712 F8                 1690 	mov	r0,a
   0713 B6 01 02           1691 	cjne	@r0,#0x01,00413$
   0716 80 04              1692 	sjmp	00414$
   0718                    1693 00413$:
   0718 D0 00              1694 	pop	ar0
   071A 80 0B              1695 	sjmp	00187$
   071C                    1696 00414$:
                           1697 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:284: mode = 2;
   071C E5 23              1698 	mov	a,_bp
   071E 24 08              1699 	add	a,#0x08
   0720 F8                 1700 	mov	r0,a
   0721 76 02              1701 	mov	@r0,#0x02
   0723 D0 00              1702 	pop	ar0
   0725 80 4F              1703 	sjmp	00192$
   0727                    1704 00187$:
                           1705 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:285: } else if (mode == 2) {
   0727 C0 00              1706 	push	ar0
   0729 E5 23              1707 	mov	a,_bp
   072B 24 08              1708 	add	a,#0x08
   072D F8                 1709 	mov	r0,a
   072E B6 02 02           1710 	cjne	@r0,#0x02,00415$
   0731 80 04              1711 	sjmp	00416$
   0733                    1712 00415$:
   0733 D0 00              1713 	pop	ar0
   0735 80 0B              1714 	sjmp	00184$
   0737                    1715 00416$:
                           1716 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:286: mode = 3;
   0737 E5 23              1717 	mov	a,_bp
   0739 24 08              1718 	add	a,#0x08
   073B F8                 1719 	mov	r0,a
   073C 76 03              1720 	mov	@r0,#0x03
   073E D0 00              1721 	pop	ar0
   0740 80 34              1722 	sjmp	00192$
   0742                    1723 00184$:
                           1724 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:287: } else if (mode == 3) {
   0742 C0 00              1725 	push	ar0
   0744 E5 23              1726 	mov	a,_bp
   0746 24 08              1727 	add	a,#0x08
   0748 F8                 1728 	mov	r0,a
   0749 B6 03 02           1729 	cjne	@r0,#0x03,00417$
   074C 80 04              1730 	sjmp	00418$
   074E                    1731 00417$:
   074E D0 00              1732 	pop	ar0
   0750 80 0B              1733 	sjmp	00181$
   0752                    1734 00418$:
                           1735 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:288: mode = 4;
   0752 E5 23              1736 	mov	a,_bp
   0754 24 08              1737 	add	a,#0x08
   0756 F8                 1738 	mov	r0,a
   0757 76 04              1739 	mov	@r0,#0x04
   0759 D0 00              1740 	pop	ar0
   075B 80 19              1741 	sjmp	00192$
   075D                    1742 00181$:
                           1743 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:289: } else if (mode == 4) {
   075D C0 00              1744 	push	ar0
   075F E5 23              1745 	mov	a,_bp
   0761 24 08              1746 	add	a,#0x08
   0763 F8                 1747 	mov	r0,a
   0764 B6 04 02           1748 	cjne	@r0,#0x04,00419$
   0767 80 04              1749 	sjmp	00420$
   0769                    1750 00419$:
   0769 D0 00              1751 	pop	ar0
   076B 80 09              1752 	sjmp	00192$
   076D                    1753 00420$:
                           1754 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:290: mode = 1;
   076D E5 23              1755 	mov	a,_bp
   076F 24 08              1756 	add	a,#0x08
   0771 F8                 1757 	mov	r0,a
   0772 76 01              1758 	mov	@r0,#0x01
   0774 D0 00              1759 	pop	ar0
   0776                    1760 00192$:
                           1761 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:294: if (P2_1 == 0 && prebtn3 == 1) {
   0776 20 A1 75           1762 	jb	_P2_1,00212$
   0779 BD 01 72           1763 	cjne	r5,#0x01,00212$
                           1764 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:295: delay_ms(10);
   077C 90 00 0A           1765 	mov	dptr,#0x000A
   077F C0 07              1766 	push	ar7
   0781 C0 00              1767 	push	ar0
   0783 C0 01              1768 	push	ar1
   0785 12 01 7A           1769 	lcall	_delay_ms
   0788 D0 01              1770 	pop	ar1
   078A D0 00              1771 	pop	ar0
   078C D0 07              1772 	pop	ar7
                           1773 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:296: if (P2_1 == 0) {
   078E 20 A1 5D           1774 	jb	_P2_1,00212$
                           1775 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:297: if (mode == 1) {
   0791 C0 00              1776 	push	ar0
   0793 E5 23              1777 	mov	a,_bp
   0795 24 08              1778 	add	a,#0x08
   0797 F8                 1779 	mov	r0,a
   0798 B6 01 04           1780 	cjne	@r0,#0x01,00425$
   079B D0 00              1781 	pop	ar0
   079D 80 4F              1782 	sjmp	00212$
   079F                    1783 00425$:
                           1784 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:299: } else if (mode == 2) {
   079F E5 23              1785 	mov	a,_bp
   07A1 24 08              1786 	add	a,#0x08
   07A3 F8                 1787 	mov	r0,a
   07A4 B6 02 02           1788 	cjne	@r0,#0x02,00426$
   07A7 80 04              1789 	sjmp	00427$
   07A9                    1790 00426$:
   07A9 D0 00              1791 	pop	ar0
   07AB 80 19              1792 	sjmp	00204$
   07AD                    1793 00427$:
                           1794 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:300: if (++mode2_change_place == 6) {
   07AD A8 23              1795 	mov	r0,_bp
   07AF 08                 1796 	inc	r0
   07B0 06                 1797 	inc	@r0
   07B1 A8 23              1798 	mov	r0,_bp
   07B3 08                 1799 	inc	r0
   07B4 B6 06 02           1800 	cjne	@r0,#0x06,00428$
   07B7 80 04              1801 	sjmp	00429$
   07B9                    1802 00428$:
   07B9 D0 00              1803 	pop	ar0
   07BB 80 31              1804 	sjmp	00212$
   07BD                    1805 00429$:
                           1806 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:301: mode2_change_place = 0;
   07BD A8 23              1807 	mov	r0,_bp
   07BF 08                 1808 	inc	r0
   07C0 76 00              1809 	mov	@r0,#0x00
   07C2 D0 00              1810 	pop	ar0
   07C4 80 28              1811 	sjmp	00212$
   07C6                    1812 00204$:
                           1813 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:303: } else if (mode == 3) {
   07C6 C0 00              1814 	push	ar0
   07C8 E5 23              1815 	mov	a,_bp
   07CA 24 08              1816 	add	a,#0x08
   07CC F8                 1817 	mov	r0,a
   07CD B6 03 04           1818 	cjne	@r0,#0x03,00430$
   07D0 D0 00              1819 	pop	ar0
   07D2 80 1A              1820 	sjmp	00212$
   07D4                    1821 00430$:
                           1822 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:305: } else if (mode == 4) {
   07D4 E5 23              1823 	mov	a,_bp
   07D6 24 08              1824 	add	a,#0x08
   07D8 F8                 1825 	mov	r0,a
   07D9 B6 04 02           1826 	cjne	@r0,#0x04,00431$
   07DC 80 04              1827 	sjmp	00432$
   07DE                    1828 00431$:
   07DE D0 00              1829 	pop	ar0
   07E0 80 0C              1830 	sjmp	00212$
   07E2                    1831 00432$:
   07E2 D0 00              1832 	pop	ar0
                           1833 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:306: if (++change_time == 3) {
   07E4 05 1F              1834 	inc	_change_time
   07E6 74 03              1835 	mov	a,#0x03
   07E8 B5 1F 03           1836 	cjne	a,_change_time,00212$
                           1837 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:307: change_time = 0;
   07EB 75 1F 00           1838 	mov	_change_time,#0x00
   07EE                    1839 00212$:
                           1840 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:314: if (mode == 1) { // 一般模式
   07EE C0 00              1841 	push	ar0
   07F0 E5 23              1842 	mov	a,_bp
   07F2 24 08              1843 	add	a,#0x08
   07F4 F8                 1844 	mov	r0,a
   07F5 B6 01 02           1845 	cjne	@r0,#0x01,00435$
   07F8 80 04              1846 	sjmp	00436$
   07FA                    1847 00435$:
   07FA D0 00              1848 	pop	ar0
   07FC 80 49              1849 	sjmp	00270$
   07FE                    1850 00436$:
   07FE D0 00              1851 	pop	ar0
                           1852 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:315: for (i = 0; i <= 8; i++) {
   0800 75 22 00           1853 	mov	_i,#0x00
   0803                    1854 00275$:
   0803 C3                 1855 	clr	c
   0804 74 88              1856 	mov	a,#(0x08 ^ 0x80)
   0806 85 22 F0           1857 	mov	b,_i
   0809 63 F0 80           1858 	xrl	b,#0x80
   080C 95 F0              1859 	subb	a,b
   080E 40 1C              1860 	jc	00278$
                           1861 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:316: Write7219(i, 0x0f);
   0810 85 22 82           1862 	mov	dpl,_i
   0813 C0 07              1863 	push	ar7
   0815 C0 00              1864 	push	ar0
   0817 C0 01              1865 	push	ar1
   0819 74 0F              1866 	mov	a,#0x0F
   081B C0 E0              1867 	push	acc
   081D 12 00 FB           1868 	lcall	_Write7219
   0820 15 81              1869 	dec	sp
   0822 D0 01              1870 	pop	ar1
   0824 D0 00              1871 	pop	ar0
   0826 D0 07              1872 	pop	ar7
                           1873 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:315: for (i = 0; i <= 8; i++) {
   0828 05 22              1874 	inc	_i
   082A 80 D7              1875 	sjmp	00275$
   082C                    1876 00278$:
                           1877 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:318: Write7219(1, 1);
   082C C0 07              1878 	push	ar7
   082E C0 00              1879 	push	ar0
   0830 C0 01              1880 	push	ar1
   0832 74 01              1881 	mov	a,#0x01
   0834 C0 E0              1882 	push	acc
   0836 75 82 01           1883 	mov	dpl,#0x01
   0839 12 00 FB           1884 	lcall	_Write7219
   083C 15 81              1885 	dec	sp
   083E D0 01              1886 	pop	ar1
   0840 D0 00              1887 	pop	ar0
   0842 D0 07              1888 	pop	ar7
   0844 02 13 AC           1889 	ljmp	00271$
   0847                    1890 00270$:
                           1891 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:319: } else if (mode == 2) { // 設定自動時間模式
   0847 C0 00              1892 	push	ar0
   0849 E5 23              1893 	mov	a,_bp
   084B 24 08              1894 	add	a,#0x08
   084D F8                 1895 	mov	r0,a
   084E B6 02 02           1896 	cjne	@r0,#0x02,00438$
   0851 80 05              1897 	sjmp	00439$
   0853                    1898 00438$:
   0853 D0 00              1899 	pop	ar0
   0855 02 12 0F           1900 	ljmp	00267$
   0858                    1901 00439$:
                           1902 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:320: if (mode2_change_place < 3) {
   0858 A8 23              1903 	mov	r0,_bp
   085A 08                 1904 	inc	r0
   085B C3                 1905 	clr	c
   085C E6                 1906 	mov	a,@r0
   085D 64 80              1907 	xrl	a,#0x80
   085F 94 83              1908 	subb	a,#0x83
   0861 D0 00              1909 	pop	ar0
   0863 40 03              1910 	jc	00440$
   0865 02 0C A1           1911 	ljmp	00249$
   0868                    1912 00440$:
                           1913 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:321: if (mode2_change_place == 0) {
   0868 C0 00              1914 	push	ar0
   086A A8 23              1915 	mov	r0,_bp
   086C 08                 1916 	inc	r0
   086D E6                 1917 	mov	a,@r0
   086E D0 00              1918 	pop	ar0
   0870 60 03              1919 	jz	00441$
   0872 02 09 CB           1920 	ljmp	00229$
   0875                    1921 00441$:
                           1922 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:322: if (time_count >= 50) {
   0875 C3                 1923 	clr	c
   0876 E5 18              1924 	mov	a,_time_count
   0878 94 32              1925 	subb	a,#0x32
   087A E5 19              1926 	mov	a,(_time_count + 1)
   087C 94 00              1927 	subb	a,#0x00
   087E 40 60              1928 	jc	00215$
                           1929 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:323: Write7219(8, open_close_time[0] / 10);
   0880 C0 07              1930 	push	ar7
   0882 86 07              1931 	mov	ar7,@r0
   0884 C2 D5              1932 	clr	F0
   0886 75 F0 0A           1933 	mov	b,#0x0a
   0889 EF                 1934 	mov	a,r7
   088A 30 E7 04           1935 	jnb	acc.7,00443$
   088D B2 D5              1936 	cpl	F0
   088F F4                 1937 	cpl	a
   0890 04                 1938 	inc	a
   0891                    1939 00443$:
   0891 84                 1940 	div	ab
   0892 30 D5 02           1941 	jnb	F0,00444$
   0895 F4                 1942 	cpl	a
   0896 04                 1943 	inc	a
   0897                    1944 00444$:
   0897 FF                 1945 	mov	r7,a
   0898 C0 07              1946 	push	ar7
   089A C0 00              1947 	push	ar0
   089C C0 01              1948 	push	ar1
   089E C0 07              1949 	push	ar7
   08A0 75 82 08           1950 	mov	dpl,#0x08
   08A3 12 00 FB           1951 	lcall	_Write7219
   08A6 15 81              1952 	dec	sp
   08A8 D0 01              1953 	pop	ar1
   08AA D0 00              1954 	pop	ar0
   08AC D0 07              1955 	pop	ar7
                           1956 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:324: Write7219(7, open_close_time[0] % 10); 
   08AE 86 07              1957 	mov	ar7,@r0
   08B0 75 F0 0A           1958 	mov	b,#0x0a
   08B3 EF                 1959 	mov	a,r7
   08B4 C2 D5              1960 	clr	F0
   08B6 30 E7 04           1961 	jnb	acc.7,00445$
   08B9 D2 D5              1962 	setb	F0
   08BB F4                 1963 	cpl	a
   08BC 04                 1964 	inc	a
   08BD                    1965 00445$:
   08BD 84                 1966 	div	ab
   08BE E5 F0              1967 	mov	a,b
   08C0 30 D5 02           1968 	jnb	F0,00446$
   08C3 F4                 1969 	cpl	a
   08C4 04                 1970 	inc	a
   08C5                    1971 00446$:
   08C5 FF                 1972 	mov	r7,a
   08C6 C0 07              1973 	push	ar7
   08C8 C0 00              1974 	push	ar0
   08CA C0 01              1975 	push	ar1
   08CC C0 07              1976 	push	ar7
   08CE 75 82 07           1977 	mov	dpl,#0x07
   08D1 12 00 FB           1978 	lcall	_Write7219
   08D4 15 81              1979 	dec	sp
   08D6 D0 01              1980 	pop	ar1
   08D8 D0 00              1981 	pop	ar0
   08DA D0 07              1982 	pop	ar7
   08DC D0 07              1983 	pop	ar7
   08DE 80 24              1984 	sjmp	00216$
   08E0                    1985 00215$:
                           1986 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:326: Write7219(8, 0x0f);
   08E0 C0 07              1987 	push	ar7
   08E2 C0 00              1988 	push	ar0
   08E4 C0 01              1989 	push	ar1
   08E6 74 0F              1990 	mov	a,#0x0F
   08E8 C0 E0              1991 	push	acc
   08EA 75 82 08           1992 	mov	dpl,#0x08
   08ED 12 00 FB           1993 	lcall	_Write7219
   08F0 15 81              1994 	dec	sp
                           1995 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:327: Write7219(7, 0x0f); 
   08F2 74 0F              1996 	mov	a,#0x0F
   08F4 C0 E0              1997 	push	acc
   08F6 75 82 07           1998 	mov	dpl,#0x07
   08F9 12 00 FB           1999 	lcall	_Write7219
   08FC 15 81              2000 	dec	sp
   08FE D0 01              2001 	pop	ar1
   0900 D0 00              2002 	pop	ar0
   0902 D0 07              2003 	pop	ar7
   0904                    2004 00216$:
                           2005 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:329: Write7219(6, open_close_time[1] / 10);
   0904 C0 00              2006 	push	ar0
   0906 87 06              2007 	mov	ar6,@r1
   0908 C2 D5              2008 	clr	F0
   090A 75 F0 0A           2009 	mov	b,#0x0a
   090D EE                 2010 	mov	a,r6
   090E 30 E7 04           2011 	jnb	acc.7,00447$
   0911 B2 D5              2012 	cpl	F0
   0913 F4                 2013 	cpl	a
   0914 04                 2014 	inc	a
   0915                    2015 00447$:
   0915 84                 2016 	div	ab
   0916 30 D5 02           2017 	jnb	F0,00448$
   0919 F4                 2018 	cpl	a
   091A 04                 2019 	inc	a
   091B                    2020 00448$:
   091B FE                 2021 	mov	r6,a
   091C C0 07              2022 	push	ar7
   091E C0 00              2023 	push	ar0
   0920 C0 01              2024 	push	ar1
   0922 C0 06              2025 	push	ar6
   0924 75 82 06           2026 	mov	dpl,#0x06
   0927 12 00 FB           2027 	lcall	_Write7219
   092A 15 81              2028 	dec	sp
   092C D0 01              2029 	pop	ar1
   092E D0 00              2030 	pop	ar0
   0930 D0 07              2031 	pop	ar7
                           2032 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:330: Write7219(5, open_close_time[1] % 10);
   0932 87 06              2033 	mov	ar6,@r1
   0934 75 F0 0A           2034 	mov	b,#0x0a
   0937 EE                 2035 	mov	a,r6
   0938 C2 D5              2036 	clr	F0
   093A 30 E7 04           2037 	jnb	acc.7,00449$
   093D D2 D5              2038 	setb	F0
   093F F4                 2039 	cpl	a
   0940 04                 2040 	inc	a
   0941                    2041 00449$:
   0941 84                 2042 	div	ab
   0942 E5 F0              2043 	mov	a,b
   0944 30 D5 02           2044 	jnb	F0,00450$
   0947 F4                 2045 	cpl	a
   0948 04                 2046 	inc	a
   0949                    2047 00450$:
   0949 FE                 2048 	mov	r6,a
   094A C0 07              2049 	push	ar7
   094C C0 00              2050 	push	ar0
   094E C0 01              2051 	push	ar1
   0950 C0 06              2052 	push	ar6
   0952 75 82 05           2053 	mov	dpl,#0x05
   0955 12 00 FB           2054 	lcall	_Write7219
   0958 15 81              2055 	dec	sp
   095A D0 01              2056 	pop	ar1
   095C D0 00              2057 	pop	ar0
   095E D0 07              2058 	pop	ar7
                           2059 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:331: Write7219(4, open_close_time[2] / 10);
   0960 C0 00              2060 	push	ar0
   0962 A8 07              2061 	mov	r0,ar7
   0964 86 06              2062 	mov	ar6,@r0
   0966 D0 00              2063 	pop	ar0
   0968 C2 D5              2064 	clr	F0
   096A 75 F0 0A           2065 	mov	b,#0x0a
   096D EE                 2066 	mov	a,r6
   096E 30 E7 04           2067 	jnb	acc.7,00451$
   0971 B2 D5              2068 	cpl	F0
   0973 F4                 2069 	cpl	a
   0974 04                 2070 	inc	a
   0975                    2071 00451$:
   0975 84                 2072 	div	ab
   0976 30 D5 02           2073 	jnb	F0,00452$
   0979 F4                 2074 	cpl	a
   097A 04                 2075 	inc	a
   097B                    2076 00452$:
   097B FE                 2077 	mov	r6,a
   097C C0 07              2078 	push	ar7
   097E C0 00              2079 	push	ar0
   0980 C0 01              2080 	push	ar1
   0982 C0 06              2081 	push	ar6
   0984 75 82 04           2082 	mov	dpl,#0x04
   0987 12 00 FB           2083 	lcall	_Write7219
   098A 15 81              2084 	dec	sp
   098C D0 01              2085 	pop	ar1
   098E D0 00              2086 	pop	ar0
   0990 D0 07              2087 	pop	ar7
                           2088 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:332: Write7219(3, open_close_time[2] % 10);
   0992 C0 00              2089 	push	ar0
   0994 A8 07              2090 	mov	r0,ar7
   0996 86 06              2091 	mov	ar6,@r0
   0998 D0 00              2092 	pop	ar0
   099A 75 F0 0A           2093 	mov	b,#0x0a
   099D EE                 2094 	mov	a,r6
   099E C2 D5              2095 	clr	F0
   09A0 30 E7 04           2096 	jnb	acc.7,00453$
   09A3 D2 D5              2097 	setb	F0
   09A5 F4                 2098 	cpl	a
   09A6 04                 2099 	inc	a
   09A7                    2100 00453$:
   09A7 84                 2101 	div	ab
   09A8 E5 F0              2102 	mov	a,b
   09AA 30 D5 02           2103 	jnb	F0,00454$
   09AD F4                 2104 	cpl	a
   09AE 04                 2105 	inc	a
   09AF                    2106 00454$:
   09AF FE                 2107 	mov	r6,a
   09B0 C0 07              2108 	push	ar7
   09B2 C0 00              2109 	push	ar0
   09B4 C0 01              2110 	push	ar1
   09B6 C0 06              2111 	push	ar6
   09B8 75 82 03           2112 	mov	dpl,#0x03
   09BB 12 00 FB           2113 	lcall	_Write7219
   09BE 15 81              2114 	dec	sp
   09C0 D0 01              2115 	pop	ar1
   09C2 D0 00              2116 	pop	ar0
   09C4 D0 07              2117 	pop	ar7
   09C6 D0 00              2118 	pop	ar0
   09C8 02 0C 86           2119 	ljmp	00230$
   09CB                    2120 00229$:
                           2121 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:333: } else if (mode2_change_place == 1) {
   09CB C0 00              2122 	push	ar0
   09CD A8 23              2123 	mov	r0,_bp
   09CF 08                 2124 	inc	r0
   09D0 B6 01 02           2125 	cjne	@r0,#0x01,00455$
   09D3 80 05              2126 	sjmp	00456$
   09D5                    2127 00455$:
   09D5 D0 00              2128 	pop	ar0
   09D7 02 0B 2A           2129 	ljmp	00226$
   09DA                    2130 00456$:
   09DA D0 00              2131 	pop	ar0
                           2132 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:334: if (time_count >= 50) {
   09DC C3                 2133 	clr	c
   09DD E5 18              2134 	mov	a,_time_count
   09DF 94 32              2135 	subb	a,#0x32
   09E1 E5 19              2136 	mov	a,(_time_count + 1)
   09E3 94 00              2137 	subb	a,#0x00
   09E5 40 5C              2138 	jc	00218$
                           2139 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:335: Write7219(6, open_close_time[1] / 10);
   09E7 87 06              2140 	mov	ar6,@r1
   09E9 C2 D5              2141 	clr	F0
   09EB 75 F0 0A           2142 	mov	b,#0x0a
   09EE EE                 2143 	mov	a,r6
   09EF 30 E7 04           2144 	jnb	acc.7,00458$
   09F2 B2 D5              2145 	cpl	F0
   09F4 F4                 2146 	cpl	a
   09F5 04                 2147 	inc	a
   09F6                    2148 00458$:
   09F6 84                 2149 	div	ab
   09F7 30 D5 02           2150 	jnb	F0,00459$
   09FA F4                 2151 	cpl	a
   09FB 04                 2152 	inc	a
   09FC                    2153 00459$:
   09FC FE                 2154 	mov	r6,a
   09FD C0 07              2155 	push	ar7
   09FF C0 00              2156 	push	ar0
   0A01 C0 01              2157 	push	ar1
   0A03 C0 06              2158 	push	ar6
   0A05 75 82 06           2159 	mov	dpl,#0x06
   0A08 12 00 FB           2160 	lcall	_Write7219
   0A0B 15 81              2161 	dec	sp
   0A0D D0 01              2162 	pop	ar1
   0A0F D0 00              2163 	pop	ar0
   0A11 D0 07              2164 	pop	ar7
                           2165 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:336: Write7219(5, open_close_time[1] % 10);
   0A13 87 06              2166 	mov	ar6,@r1
   0A15 75 F0 0A           2167 	mov	b,#0x0a
   0A18 EE                 2168 	mov	a,r6
   0A19 C2 D5              2169 	clr	F0
   0A1B 30 E7 04           2170 	jnb	acc.7,00460$
   0A1E D2 D5              2171 	setb	F0
   0A20 F4                 2172 	cpl	a
   0A21 04                 2173 	inc	a
   0A22                    2174 00460$:
   0A22 84                 2175 	div	ab
   0A23 E5 F0              2176 	mov	a,b
   0A25 30 D5 02           2177 	jnb	F0,00461$
   0A28 F4                 2178 	cpl	a
   0A29 04                 2179 	inc	a
   0A2A                    2180 00461$:
   0A2A FE                 2181 	mov	r6,a
   0A2B C0 07              2182 	push	ar7
   0A2D C0 00              2183 	push	ar0
   0A2F C0 01              2184 	push	ar1
   0A31 C0 06              2185 	push	ar6
   0A33 75 82 05           2186 	mov	dpl,#0x05
   0A36 12 00 FB           2187 	lcall	_Write7219
   0A39 15 81              2188 	dec	sp
   0A3B D0 01              2189 	pop	ar1
   0A3D D0 00              2190 	pop	ar0
   0A3F D0 07              2191 	pop	ar7
   0A41 80 24              2192 	sjmp	00219$
   0A43                    2193 00218$:
                           2194 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:338: Write7219(6, 0x0f);
   0A43 C0 07              2195 	push	ar7
   0A45 C0 00              2196 	push	ar0
   0A47 C0 01              2197 	push	ar1
   0A49 74 0F              2198 	mov	a,#0x0F
   0A4B C0 E0              2199 	push	acc
   0A4D 75 82 06           2200 	mov	dpl,#0x06
   0A50 12 00 FB           2201 	lcall	_Write7219
   0A53 15 81              2202 	dec	sp
                           2203 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:339: Write7219(5, 0x0f); 
   0A55 74 0F              2204 	mov	a,#0x0F
   0A57 C0 E0              2205 	push	acc
   0A59 75 82 05           2206 	mov	dpl,#0x05
   0A5C 12 00 FB           2207 	lcall	_Write7219
   0A5F 15 81              2208 	dec	sp
   0A61 D0 01              2209 	pop	ar1
   0A63 D0 00              2210 	pop	ar0
   0A65 D0 07              2211 	pop	ar7
   0A67                    2212 00219$:
                           2213 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:341: Write7219(8, open_close_time[0] / 10);
   0A67 86 06              2214 	mov	ar6,@r0
   0A69 C2 D5              2215 	clr	F0
   0A6B 75 F0 0A           2216 	mov	b,#0x0a
   0A6E EE                 2217 	mov	a,r6
   0A6F 30 E7 04           2218 	jnb	acc.7,00462$
   0A72 B2 D5              2219 	cpl	F0
   0A74 F4                 2220 	cpl	a
   0A75 04                 2221 	inc	a
   0A76                    2222 00462$:
   0A76 84                 2223 	div	ab
   0A77 30 D5 02           2224 	jnb	F0,00463$
   0A7A F4                 2225 	cpl	a
   0A7B 04                 2226 	inc	a
   0A7C                    2227 00463$:
   0A7C FE                 2228 	mov	r6,a
   0A7D C0 07              2229 	push	ar7
   0A7F C0 00              2230 	push	ar0
   0A81 C0 01              2231 	push	ar1
   0A83 C0 06              2232 	push	ar6
   0A85 75 82 08           2233 	mov	dpl,#0x08
   0A88 12 00 FB           2234 	lcall	_Write7219
   0A8B 15 81              2235 	dec	sp
   0A8D D0 01              2236 	pop	ar1
   0A8F D0 00              2237 	pop	ar0
   0A91 D0 07              2238 	pop	ar7
                           2239 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:342: Write7219(7, open_close_time[0] % 10); 
   0A93 86 06              2240 	mov	ar6,@r0
   0A95 75 F0 0A           2241 	mov	b,#0x0a
   0A98 EE                 2242 	mov	a,r6
   0A99 C2 D5              2243 	clr	F0
   0A9B 30 E7 04           2244 	jnb	acc.7,00464$
   0A9E D2 D5              2245 	setb	F0
   0AA0 F4                 2246 	cpl	a
   0AA1 04                 2247 	inc	a
   0AA2                    2248 00464$:
   0AA2 84                 2249 	div	ab
   0AA3 E5 F0              2250 	mov	a,b
   0AA5 30 D5 02           2251 	jnb	F0,00465$
   0AA8 F4                 2252 	cpl	a
   0AA9 04                 2253 	inc	a
   0AAA                    2254 00465$:
   0AAA FE                 2255 	mov	r6,a
   0AAB C0 07              2256 	push	ar7
   0AAD C0 00              2257 	push	ar0
   0AAF C0 01              2258 	push	ar1
   0AB1 C0 06              2259 	push	ar6
   0AB3 75 82 07           2260 	mov	dpl,#0x07
   0AB6 12 00 FB           2261 	lcall	_Write7219
   0AB9 15 81              2262 	dec	sp
   0ABB D0 01              2263 	pop	ar1
   0ABD D0 00              2264 	pop	ar0
   0ABF D0 07              2265 	pop	ar7
                           2266 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:343: Write7219(4, open_close_time[2] / 10);
   0AC1 C0 00              2267 	push	ar0
   0AC3 A8 07              2268 	mov	r0,ar7
   0AC5 86 06              2269 	mov	ar6,@r0
   0AC7 D0 00              2270 	pop	ar0
   0AC9 C2 D5              2271 	clr	F0
   0ACB 75 F0 0A           2272 	mov	b,#0x0a
   0ACE EE                 2273 	mov	a,r6
   0ACF 30 E7 04           2274 	jnb	acc.7,00466$
   0AD2 B2 D5              2275 	cpl	F0
   0AD4 F4                 2276 	cpl	a
   0AD5 04                 2277 	inc	a
   0AD6                    2278 00466$:
   0AD6 84                 2279 	div	ab
   0AD7 30 D5 02           2280 	jnb	F0,00467$
   0ADA F4                 2281 	cpl	a
   0ADB 04                 2282 	inc	a
   0ADC                    2283 00467$:
   0ADC FE                 2284 	mov	r6,a
   0ADD C0 07              2285 	push	ar7
   0ADF C0 00              2286 	push	ar0
   0AE1 C0 01              2287 	push	ar1
   0AE3 C0 06              2288 	push	ar6
   0AE5 75 82 04           2289 	mov	dpl,#0x04
   0AE8 12 00 FB           2290 	lcall	_Write7219
   0AEB 15 81              2291 	dec	sp
   0AED D0 01              2292 	pop	ar1
   0AEF D0 00              2293 	pop	ar0
   0AF1 D0 07              2294 	pop	ar7
                           2295 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:344: Write7219(3, open_close_time[2] % 10);
   0AF3 C0 00              2296 	push	ar0
   0AF5 A8 07              2297 	mov	r0,ar7
   0AF7 86 06              2298 	mov	ar6,@r0
   0AF9 D0 00              2299 	pop	ar0
   0AFB 75 F0 0A           2300 	mov	b,#0x0a
   0AFE EE                 2301 	mov	a,r6
   0AFF C2 D5              2302 	clr	F0
   0B01 30 E7 04           2303 	jnb	acc.7,00468$
   0B04 D2 D5              2304 	setb	F0
   0B06 F4                 2305 	cpl	a
   0B07 04                 2306 	inc	a
   0B08                    2307 00468$:
   0B08 84                 2308 	div	ab
   0B09 E5 F0              2309 	mov	a,b
   0B0B 30 D5 02           2310 	jnb	F0,00469$
   0B0E F4                 2311 	cpl	a
   0B0F 04                 2312 	inc	a
   0B10                    2313 00469$:
   0B10 FE                 2314 	mov	r6,a
   0B11 C0 07              2315 	push	ar7
   0B13 C0 00              2316 	push	ar0
   0B15 C0 01              2317 	push	ar1
   0B17 C0 06              2318 	push	ar6
   0B19 75 82 03           2319 	mov	dpl,#0x03
   0B1C 12 00 FB           2320 	lcall	_Write7219
   0B1F 15 81              2321 	dec	sp
   0B21 D0 01              2322 	pop	ar1
   0B23 D0 00              2323 	pop	ar0
   0B25 D0 07              2324 	pop	ar7
   0B27 02 0C 86           2325 	ljmp	00230$
   0B2A                    2326 00226$:
                           2327 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:345: } else if (mode2_change_place == 2) {
   0B2A C0 00              2328 	push	ar0
   0B2C A8 23              2329 	mov	r0,_bp
   0B2E 08                 2330 	inc	r0
   0B2F B6 02 02           2331 	cjne	@r0,#0x02,00470$
   0B32 80 05              2332 	sjmp	00471$
   0B34                    2333 00470$:
   0B34 D0 00              2334 	pop	ar0
   0B36 02 0C 86           2335 	ljmp	00230$
   0B39                    2336 00471$:
   0B39 D0 00              2337 	pop	ar0
                           2338 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:346: if (time_count >= 50) {
   0B3B C3                 2339 	clr	c
   0B3C E5 18              2340 	mov	a,_time_count
   0B3E 94 32              2341 	subb	a,#0x32
   0B40 E5 19              2342 	mov	a,(_time_count + 1)
   0B42 94 00              2343 	subb	a,#0x00
   0B44 40 68              2344 	jc	00221$
                           2345 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:347: Write7219(4, open_close_time[2] / 10);
   0B46 C0 00              2346 	push	ar0
   0B48 A8 07              2347 	mov	r0,ar7
   0B4A 86 06              2348 	mov	ar6,@r0
   0B4C D0 00              2349 	pop	ar0
   0B4E C2 D5              2350 	clr	F0
   0B50 75 F0 0A           2351 	mov	b,#0x0a
   0B53 EE                 2352 	mov	a,r6
   0B54 30 E7 04           2353 	jnb	acc.7,00473$
   0B57 B2 D5              2354 	cpl	F0
   0B59 F4                 2355 	cpl	a
   0B5A 04                 2356 	inc	a
   0B5B                    2357 00473$:
   0B5B 84                 2358 	div	ab
   0B5C 30 D5 02           2359 	jnb	F0,00474$
   0B5F F4                 2360 	cpl	a
   0B60 04                 2361 	inc	a
   0B61                    2362 00474$:
   0B61 FE                 2363 	mov	r6,a
   0B62 C0 07              2364 	push	ar7
   0B64 C0 00              2365 	push	ar0
   0B66 C0 01              2366 	push	ar1
   0B68 C0 06              2367 	push	ar6
   0B6A 75 82 04           2368 	mov	dpl,#0x04
   0B6D 12 00 FB           2369 	lcall	_Write7219
   0B70 15 81              2370 	dec	sp
   0B72 D0 01              2371 	pop	ar1
   0B74 D0 00              2372 	pop	ar0
   0B76 D0 07              2373 	pop	ar7
                           2374 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:348: Write7219(3, open_close_time[2] % 10);
   0B78 C0 00              2375 	push	ar0
   0B7A A8 07              2376 	mov	r0,ar7
   0B7C 86 06              2377 	mov	ar6,@r0
   0B7E D0 00              2378 	pop	ar0
   0B80 75 F0 0A           2379 	mov	b,#0x0a
   0B83 EE                 2380 	mov	a,r6
   0B84 C2 D5              2381 	clr	F0
   0B86 30 E7 04           2382 	jnb	acc.7,00475$
   0B89 D2 D5              2383 	setb	F0
   0B8B F4                 2384 	cpl	a
   0B8C 04                 2385 	inc	a
   0B8D                    2386 00475$:
   0B8D 84                 2387 	div	ab
   0B8E E5 F0              2388 	mov	a,b
   0B90 30 D5 02           2389 	jnb	F0,00476$
   0B93 F4                 2390 	cpl	a
   0B94 04                 2391 	inc	a
   0B95                    2392 00476$:
   0B95 FE                 2393 	mov	r6,a
   0B96 C0 07              2394 	push	ar7
   0B98 C0 00              2395 	push	ar0
   0B9A C0 01              2396 	push	ar1
   0B9C C0 06              2397 	push	ar6
   0B9E 75 82 03           2398 	mov	dpl,#0x03
   0BA1 12 00 FB           2399 	lcall	_Write7219
   0BA4 15 81              2400 	dec	sp
   0BA6 D0 01              2401 	pop	ar1
   0BA8 D0 00              2402 	pop	ar0
   0BAA D0 07              2403 	pop	ar7
   0BAC 80 24              2404 	sjmp	00222$
   0BAE                    2405 00221$:
                           2406 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:350: Write7219(4, 0x0f);
   0BAE C0 07              2407 	push	ar7
   0BB0 C0 00              2408 	push	ar0
   0BB2 C0 01              2409 	push	ar1
   0BB4 74 0F              2410 	mov	a,#0x0F
   0BB6 C0 E0              2411 	push	acc
   0BB8 75 82 04           2412 	mov	dpl,#0x04
   0BBB 12 00 FB           2413 	lcall	_Write7219
   0BBE 15 81              2414 	dec	sp
                           2415 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:351: Write7219(3, 0x0f); 
   0BC0 74 0F              2416 	mov	a,#0x0F
   0BC2 C0 E0              2417 	push	acc
   0BC4 75 82 03           2418 	mov	dpl,#0x03
   0BC7 12 00 FB           2419 	lcall	_Write7219
   0BCA 15 81              2420 	dec	sp
   0BCC D0 01              2421 	pop	ar1
   0BCE D0 00              2422 	pop	ar0
   0BD0 D0 07              2423 	pop	ar7
   0BD2                    2424 00222$:
                           2425 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:353: Write7219(6, open_close_time[1] / 10);
   0BD2 87 06              2426 	mov	ar6,@r1
   0BD4 C2 D5              2427 	clr	F0
   0BD6 75 F0 0A           2428 	mov	b,#0x0a
   0BD9 EE                 2429 	mov	a,r6
   0BDA 30 E7 04           2430 	jnb	acc.7,00477$
   0BDD B2 D5              2431 	cpl	F0
   0BDF F4                 2432 	cpl	a
   0BE0 04                 2433 	inc	a
   0BE1                    2434 00477$:
   0BE1 84                 2435 	div	ab
   0BE2 30 D5 02           2436 	jnb	F0,00478$
   0BE5 F4                 2437 	cpl	a
   0BE6 04                 2438 	inc	a
   0BE7                    2439 00478$:
   0BE7 FE                 2440 	mov	r6,a
   0BE8 C0 07              2441 	push	ar7
   0BEA C0 00              2442 	push	ar0
   0BEC C0 01              2443 	push	ar1
   0BEE C0 06              2444 	push	ar6
   0BF0 75 82 06           2445 	mov	dpl,#0x06
   0BF3 12 00 FB           2446 	lcall	_Write7219
   0BF6 15 81              2447 	dec	sp
   0BF8 D0 01              2448 	pop	ar1
   0BFA D0 00              2449 	pop	ar0
   0BFC D0 07              2450 	pop	ar7
                           2451 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:354: Write7219(5, open_close_time[1] % 10);
   0BFE 87 06              2452 	mov	ar6,@r1
   0C00 75 F0 0A           2453 	mov	b,#0x0a
   0C03 EE                 2454 	mov	a,r6
   0C04 C2 D5              2455 	clr	F0
   0C06 30 E7 04           2456 	jnb	acc.7,00479$
   0C09 D2 D5              2457 	setb	F0
   0C0B F4                 2458 	cpl	a
   0C0C 04                 2459 	inc	a
   0C0D                    2460 00479$:
   0C0D 84                 2461 	div	ab
   0C0E E5 F0              2462 	mov	a,b
   0C10 30 D5 02           2463 	jnb	F0,00480$
   0C13 F4                 2464 	cpl	a
   0C14 04                 2465 	inc	a
   0C15                    2466 00480$:
   0C15 FE                 2467 	mov	r6,a
   0C16 C0 07              2468 	push	ar7
   0C18 C0 00              2469 	push	ar0
   0C1A C0 01              2470 	push	ar1
   0C1C C0 06              2471 	push	ar6
   0C1E 75 82 05           2472 	mov	dpl,#0x05
   0C21 12 00 FB           2473 	lcall	_Write7219
   0C24 15 81              2474 	dec	sp
   0C26 D0 01              2475 	pop	ar1
   0C28 D0 00              2476 	pop	ar0
   0C2A D0 07              2477 	pop	ar7
                           2478 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:355: Write7219(8, open_close_time[0] / 10);
   0C2C 86 06              2479 	mov	ar6,@r0
   0C2E C2 D5              2480 	clr	F0
   0C30 75 F0 0A           2481 	mov	b,#0x0a
   0C33 EE                 2482 	mov	a,r6
   0C34 30 E7 04           2483 	jnb	acc.7,00481$
   0C37 B2 D5              2484 	cpl	F0
   0C39 F4                 2485 	cpl	a
   0C3A 04                 2486 	inc	a
   0C3B                    2487 00481$:
   0C3B 84                 2488 	div	ab
   0C3C 30 D5 02           2489 	jnb	F0,00482$
   0C3F F4                 2490 	cpl	a
   0C40 04                 2491 	inc	a
   0C41                    2492 00482$:
   0C41 FE                 2493 	mov	r6,a
   0C42 C0 07              2494 	push	ar7
   0C44 C0 00              2495 	push	ar0
   0C46 C0 01              2496 	push	ar1
   0C48 C0 06              2497 	push	ar6
   0C4A 75 82 08           2498 	mov	dpl,#0x08
   0C4D 12 00 FB           2499 	lcall	_Write7219
   0C50 15 81              2500 	dec	sp
   0C52 D0 01              2501 	pop	ar1
   0C54 D0 00              2502 	pop	ar0
   0C56 D0 07              2503 	pop	ar7
                           2504 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:356: Write7219(7, open_close_time[0] % 10); 
   0C58 86 06              2505 	mov	ar6,@r0
   0C5A 75 F0 0A           2506 	mov	b,#0x0a
   0C5D EE                 2507 	mov	a,r6
   0C5E C2 D5              2508 	clr	F0
   0C60 30 E7 04           2509 	jnb	acc.7,00483$
   0C63 D2 D5              2510 	setb	F0
   0C65 F4                 2511 	cpl	a
   0C66 04                 2512 	inc	a
   0C67                    2513 00483$:
   0C67 84                 2514 	div	ab
   0C68 E5 F0              2515 	mov	a,b
   0C6A 30 D5 02           2516 	jnb	F0,00484$
   0C6D F4                 2517 	cpl	a
   0C6E 04                 2518 	inc	a
   0C6F                    2519 00484$:
   0C6F FE                 2520 	mov	r6,a
   0C70 C0 07              2521 	push	ar7
   0C72 C0 00              2522 	push	ar0
   0C74 C0 01              2523 	push	ar1
   0C76 C0 06              2524 	push	ar6
   0C78 75 82 07           2525 	mov	dpl,#0x07
   0C7B 12 00 FB           2526 	lcall	_Write7219
   0C7E 15 81              2527 	dec	sp
   0C80 D0 01              2528 	pop	ar1
   0C82 D0 00              2529 	pop	ar0
   0C84 D0 07              2530 	pop	ar7
   0C86                    2531 00230$:
                           2532 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:358: Write7219(2, 1);
   0C86 C0 07              2533 	push	ar7
   0C88 C0 00              2534 	push	ar0
   0C8A C0 01              2535 	push	ar1
   0C8C 74 01              2536 	mov	a,#0x01
   0C8E C0 E0              2537 	push	acc
   0C90 75 82 02           2538 	mov	dpl,#0x02
   0C93 12 00 FB           2539 	lcall	_Write7219
   0C96 15 81              2540 	dec	sp
   0C98 D0 01              2541 	pop	ar1
   0C9A D0 00              2542 	pop	ar0
   0C9C D0 07              2543 	pop	ar7
   0C9E 02 11 75           2544 	ljmp	00250$
   0CA1                    2545 00249$:
                           2546 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:360: if (mode2_change_place == 3) {
   0CA1 C0 00              2547 	push	ar0
   0CA3 A8 23              2548 	mov	r0,_bp
   0CA5 08                 2549 	inc	r0
   0CA6 B6 03 02           2550 	cjne	@r0,#0x03,00485$
   0CA9 80 05              2551 	sjmp	00486$
   0CAB                    2552 00485$:
   0CAB D0 00              2553 	pop	ar0
   0CAD 02 0E 36           2554 	ljmp	00246$
   0CB0                    2555 00486$:
   0CB0 D0 00              2556 	pop	ar0
                           2557 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:361: if (time_count >= 50) {
   0CB2 C3                 2558 	clr	c
   0CB3 E5 18              2559 	mov	a,_time_count
   0CB5 94 32              2560 	subb	a,#0x32
   0CB7 E5 19              2561 	mov	a,(_time_count + 1)
   0CB9 94 00              2562 	subb	a,#0x00
   0CBB 40 72              2563 	jc	00232$
                           2564 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:362: Write7219(8, open_close_time[3] / 10);
   0CBD C0 00              2565 	push	ar0
   0CBF E5 23              2566 	mov	a,_bp
   0CC1 24 0A              2567 	add	a,#0x0a
   0CC3 F8                 2568 	mov	r0,a
   0CC4 86 00              2569 	mov	ar0,@r0
   0CC6 86 06              2570 	mov	ar6,@r0
   0CC8 D0 00              2571 	pop	ar0
   0CCA C2 D5              2572 	clr	F0
   0CCC 75 F0 0A           2573 	mov	b,#0x0a
   0CCF EE                 2574 	mov	a,r6
   0CD0 30 E7 04           2575 	jnb	acc.7,00488$
   0CD3 B2 D5              2576 	cpl	F0
   0CD5 F4                 2577 	cpl	a
   0CD6 04                 2578 	inc	a
   0CD7                    2579 00488$:
   0CD7 84                 2580 	div	ab
   0CD8 30 D5 02           2581 	jnb	F0,00489$
   0CDB F4                 2582 	cpl	a
   0CDC 04                 2583 	inc	a
   0CDD                    2584 00489$:
   0CDD FE                 2585 	mov	r6,a
   0CDE C0 07              2586 	push	ar7
   0CE0 C0 00              2587 	push	ar0
   0CE2 C0 01              2588 	push	ar1
   0CE4 C0 06              2589 	push	ar6
   0CE6 75 82 08           2590 	mov	dpl,#0x08
   0CE9 12 00 FB           2591 	lcall	_Write7219
   0CEC 15 81              2592 	dec	sp
   0CEE D0 01              2593 	pop	ar1
   0CF0 D0 00              2594 	pop	ar0
   0CF2 D0 07              2595 	pop	ar7
                           2596 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:363: Write7219(7, open_close_time[3] % 10); 
   0CF4 C0 00              2597 	push	ar0
   0CF6 E5 23              2598 	mov	a,_bp
   0CF8 24 0A              2599 	add	a,#0x0a
   0CFA F8                 2600 	mov	r0,a
   0CFB 86 00              2601 	mov	ar0,@r0
   0CFD 86 06              2602 	mov	ar6,@r0
   0CFF D0 00              2603 	pop	ar0
   0D01 75 F0 0A           2604 	mov	b,#0x0a
   0D04 EE                 2605 	mov	a,r6
   0D05 C2 D5              2606 	clr	F0
   0D07 30 E7 04           2607 	jnb	acc.7,00490$
   0D0A D2 D5              2608 	setb	F0
   0D0C F4                 2609 	cpl	a
   0D0D 04                 2610 	inc	a
   0D0E                    2611 00490$:
   0D0E 84                 2612 	div	ab
   0D0F E5 F0              2613 	mov	a,b
   0D11 30 D5 02           2614 	jnb	F0,00491$
   0D14 F4                 2615 	cpl	a
   0D15 04                 2616 	inc	a
   0D16                    2617 00491$:
   0D16 FE                 2618 	mov	r6,a
   0D17 C0 07              2619 	push	ar7
   0D19 C0 00              2620 	push	ar0
   0D1B C0 01              2621 	push	ar1
   0D1D C0 06              2622 	push	ar6
   0D1F 75 82 07           2623 	mov	dpl,#0x07
   0D22 12 00 FB           2624 	lcall	_Write7219
   0D25 15 81              2625 	dec	sp
   0D27 D0 01              2626 	pop	ar1
   0D29 D0 00              2627 	pop	ar0
   0D2B D0 07              2628 	pop	ar7
   0D2D 80 24              2629 	sjmp	00233$
   0D2F                    2630 00232$:
                           2631 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:365: Write7219(8, 0x0f);
   0D2F C0 07              2632 	push	ar7
   0D31 C0 00              2633 	push	ar0
   0D33 C0 01              2634 	push	ar1
   0D35 74 0F              2635 	mov	a,#0x0F
   0D37 C0 E0              2636 	push	acc
   0D39 75 82 08           2637 	mov	dpl,#0x08
   0D3C 12 00 FB           2638 	lcall	_Write7219
   0D3F 15 81              2639 	dec	sp
                           2640 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:366: Write7219(7, 0x0f); 
   0D41 74 0F              2641 	mov	a,#0x0F
   0D43 C0 E0              2642 	push	acc
   0D45 75 82 07           2643 	mov	dpl,#0x07
   0D48 12 00 FB           2644 	lcall	_Write7219
   0D4B 15 81              2645 	dec	sp
   0D4D D0 01              2646 	pop	ar1
   0D4F D0 00              2647 	pop	ar0
   0D51 D0 07              2648 	pop	ar7
   0D53                    2649 00233$:
                           2650 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:368: Write7219(6, open_close_time[4] / 10);
   0D53 C0 00              2651 	push	ar0
   0D55 E5 23              2652 	mov	a,_bp
   0D57 24 0B              2653 	add	a,#0x0b
   0D59 F8                 2654 	mov	r0,a
   0D5A 86 00              2655 	mov	ar0,@r0
   0D5C 86 06              2656 	mov	ar6,@r0
   0D5E D0 00              2657 	pop	ar0
   0D60 C2 D5              2658 	clr	F0
   0D62 75 F0 0A           2659 	mov	b,#0x0a
   0D65 EE                 2660 	mov	a,r6
   0D66 30 E7 04           2661 	jnb	acc.7,00492$
   0D69 B2 D5              2662 	cpl	F0
   0D6B F4                 2663 	cpl	a
   0D6C 04                 2664 	inc	a
   0D6D                    2665 00492$:
   0D6D 84                 2666 	div	ab
   0D6E 30 D5 02           2667 	jnb	F0,00493$
   0D71 F4                 2668 	cpl	a
   0D72 04                 2669 	inc	a
   0D73                    2670 00493$:
   0D73 FE                 2671 	mov	r6,a
   0D74 C0 07              2672 	push	ar7
   0D76 C0 00              2673 	push	ar0
   0D78 C0 01              2674 	push	ar1
   0D7A C0 06              2675 	push	ar6
   0D7C 75 82 06           2676 	mov	dpl,#0x06
   0D7F 12 00 FB           2677 	lcall	_Write7219
   0D82 15 81              2678 	dec	sp
   0D84 D0 01              2679 	pop	ar1
   0D86 D0 00              2680 	pop	ar0
   0D88 D0 07              2681 	pop	ar7
                           2682 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:369: Write7219(5, open_close_time[4] % 10);
   0D8A C0 00              2683 	push	ar0
   0D8C E5 23              2684 	mov	a,_bp
   0D8E 24 0B              2685 	add	a,#0x0b
   0D90 F8                 2686 	mov	r0,a
   0D91 86 00              2687 	mov	ar0,@r0
   0D93 86 06              2688 	mov	ar6,@r0
   0D95 D0 00              2689 	pop	ar0
   0D97 75 F0 0A           2690 	mov	b,#0x0a
   0D9A EE                 2691 	mov	a,r6
   0D9B C2 D5              2692 	clr	F0
   0D9D 30 E7 04           2693 	jnb	acc.7,00494$
   0DA0 D2 D5              2694 	setb	F0
   0DA2 F4                 2695 	cpl	a
   0DA3 04                 2696 	inc	a
   0DA4                    2697 00494$:
   0DA4 84                 2698 	div	ab
   0DA5 E5 F0              2699 	mov	a,b
   0DA7 30 D5 02           2700 	jnb	F0,00495$
   0DAA F4                 2701 	cpl	a
   0DAB 04                 2702 	inc	a
   0DAC                    2703 00495$:
   0DAC FE                 2704 	mov	r6,a
   0DAD C0 07              2705 	push	ar7
   0DAF C0 00              2706 	push	ar0
   0DB1 C0 01              2707 	push	ar1
   0DB3 C0 06              2708 	push	ar6
   0DB5 75 82 05           2709 	mov	dpl,#0x05
   0DB8 12 00 FB           2710 	lcall	_Write7219
   0DBB 15 81              2711 	dec	sp
   0DBD D0 01              2712 	pop	ar1
   0DBF D0 00              2713 	pop	ar0
   0DC1 D0 07              2714 	pop	ar7
                           2715 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:370: Write7219(4, open_close_time[5] / 10);
   0DC3 C0 00              2716 	push	ar0
   0DC5 E5 23              2717 	mov	a,_bp
   0DC7 24 0C              2718 	add	a,#0x0c
   0DC9 F8                 2719 	mov	r0,a
   0DCA 86 00              2720 	mov	ar0,@r0
   0DCC 86 06              2721 	mov	ar6,@r0
   0DCE D0 00              2722 	pop	ar0
   0DD0 C2 D5              2723 	clr	F0
   0DD2 75 F0 0A           2724 	mov	b,#0x0a
   0DD5 EE                 2725 	mov	a,r6
   0DD6 30 E7 04           2726 	jnb	acc.7,00496$
   0DD9 B2 D5              2727 	cpl	F0
   0DDB F4                 2728 	cpl	a
   0DDC 04                 2729 	inc	a
   0DDD                    2730 00496$:
   0DDD 84                 2731 	div	ab
   0DDE 30 D5 02           2732 	jnb	F0,00497$
   0DE1 F4                 2733 	cpl	a
   0DE2 04                 2734 	inc	a
   0DE3                    2735 00497$:
   0DE3 FE                 2736 	mov	r6,a
   0DE4 C0 07              2737 	push	ar7
   0DE6 C0 00              2738 	push	ar0
   0DE8 C0 01              2739 	push	ar1
   0DEA C0 06              2740 	push	ar6
   0DEC 75 82 04           2741 	mov	dpl,#0x04
   0DEF 12 00 FB           2742 	lcall	_Write7219
   0DF2 15 81              2743 	dec	sp
   0DF4 D0 01              2744 	pop	ar1
   0DF6 D0 00              2745 	pop	ar0
   0DF8 D0 07              2746 	pop	ar7
                           2747 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:371: Write7219(3, open_close_time[5] % 10);
   0DFA C0 00              2748 	push	ar0
   0DFC E5 23              2749 	mov	a,_bp
   0DFE 24 0C              2750 	add	a,#0x0c
   0E00 F8                 2751 	mov	r0,a
   0E01 86 00              2752 	mov	ar0,@r0
   0E03 86 06              2753 	mov	ar6,@r0
   0E05 D0 00              2754 	pop	ar0
   0E07 75 F0 0A           2755 	mov	b,#0x0a
   0E0A EE                 2756 	mov	a,r6
   0E0B C2 D5              2757 	clr	F0
   0E0D 30 E7 04           2758 	jnb	acc.7,00498$
   0E10 D2 D5              2759 	setb	F0
   0E12 F4                 2760 	cpl	a
   0E13 04                 2761 	inc	a
   0E14                    2762 00498$:
   0E14 84                 2763 	div	ab
   0E15 E5 F0              2764 	mov	a,b
   0E17 30 D5 02           2765 	jnb	F0,00499$
   0E1A F4                 2766 	cpl	a
   0E1B 04                 2767 	inc	a
   0E1C                    2768 00499$:
   0E1C FE                 2769 	mov	r6,a
   0E1D C0 07              2770 	push	ar7
   0E1F C0 00              2771 	push	ar0
   0E21 C0 01              2772 	push	ar1
   0E23 C0 06              2773 	push	ar6
   0E25 75 82 03           2774 	mov	dpl,#0x03
   0E28 12 00 FB           2775 	lcall	_Write7219
   0E2B 15 81              2776 	dec	sp
   0E2D D0 01              2777 	pop	ar1
   0E2F D0 00              2778 	pop	ar0
   0E31 D0 07              2779 	pop	ar7
   0E33 02 11 5D           2780 	ljmp	00247$
   0E36                    2781 00246$:
                           2782 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:372: } else if (mode2_change_place == 4) {
   0E36 C0 00              2783 	push	ar0
   0E38 A8 23              2784 	mov	r0,_bp
   0E3A 08                 2785 	inc	r0
   0E3B B6 04 02           2786 	cjne	@r0,#0x04,00500$
   0E3E 80 05              2787 	sjmp	00501$
   0E40                    2788 00500$:
   0E40 D0 00              2789 	pop	ar0
   0E42 02 0F CB           2790 	ljmp	00243$
   0E45                    2791 00501$:
   0E45 D0 00              2792 	pop	ar0
                           2793 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:373: if (time_count >= 50) {
   0E47 C3                 2794 	clr	c
   0E48 E5 18              2795 	mov	a,_time_count
   0E4A 94 32              2796 	subb	a,#0x32
   0E4C E5 19              2797 	mov	a,(_time_count + 1)
   0E4E 94 00              2798 	subb	a,#0x00
   0E50 40 72              2799 	jc	00235$
                           2800 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:374: Write7219(6, open_close_time[4] / 10);
   0E52 C0 00              2801 	push	ar0
   0E54 E5 23              2802 	mov	a,_bp
   0E56 24 0B              2803 	add	a,#0x0b
   0E58 F8                 2804 	mov	r0,a
   0E59 86 00              2805 	mov	ar0,@r0
   0E5B 86 06              2806 	mov	ar6,@r0
   0E5D D0 00              2807 	pop	ar0
   0E5F C2 D5              2808 	clr	F0
   0E61 75 F0 0A           2809 	mov	b,#0x0a
   0E64 EE                 2810 	mov	a,r6
   0E65 30 E7 04           2811 	jnb	acc.7,00503$
   0E68 B2 D5              2812 	cpl	F0
   0E6A F4                 2813 	cpl	a
   0E6B 04                 2814 	inc	a
   0E6C                    2815 00503$:
   0E6C 84                 2816 	div	ab
   0E6D 30 D5 02           2817 	jnb	F0,00504$
   0E70 F4                 2818 	cpl	a
   0E71 04                 2819 	inc	a
   0E72                    2820 00504$:
   0E72 FE                 2821 	mov	r6,a
   0E73 C0 07              2822 	push	ar7
   0E75 C0 00              2823 	push	ar0
   0E77 C0 01              2824 	push	ar1
   0E79 C0 06              2825 	push	ar6
   0E7B 75 82 06           2826 	mov	dpl,#0x06
   0E7E 12 00 FB           2827 	lcall	_Write7219
   0E81 15 81              2828 	dec	sp
   0E83 D0 01              2829 	pop	ar1
   0E85 D0 00              2830 	pop	ar0
   0E87 D0 07              2831 	pop	ar7
                           2832 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:375: Write7219(5, open_close_time[4] % 10);
   0E89 C0 00              2833 	push	ar0
   0E8B E5 23              2834 	mov	a,_bp
   0E8D 24 0B              2835 	add	a,#0x0b
   0E8F F8                 2836 	mov	r0,a
   0E90 86 00              2837 	mov	ar0,@r0
   0E92 86 06              2838 	mov	ar6,@r0
   0E94 D0 00              2839 	pop	ar0
   0E96 75 F0 0A           2840 	mov	b,#0x0a
   0E99 EE                 2841 	mov	a,r6
   0E9A C2 D5              2842 	clr	F0
   0E9C 30 E7 04           2843 	jnb	acc.7,00505$
   0E9F D2 D5              2844 	setb	F0
   0EA1 F4                 2845 	cpl	a
   0EA2 04                 2846 	inc	a
   0EA3                    2847 00505$:
   0EA3 84                 2848 	div	ab
   0EA4 E5 F0              2849 	mov	a,b
   0EA6 30 D5 02           2850 	jnb	F0,00506$
   0EA9 F4                 2851 	cpl	a
   0EAA 04                 2852 	inc	a
   0EAB                    2853 00506$:
   0EAB FE                 2854 	mov	r6,a
   0EAC C0 07              2855 	push	ar7
   0EAE C0 00              2856 	push	ar0
   0EB0 C0 01              2857 	push	ar1
   0EB2 C0 06              2858 	push	ar6
   0EB4 75 82 05           2859 	mov	dpl,#0x05
   0EB7 12 00 FB           2860 	lcall	_Write7219
   0EBA 15 81              2861 	dec	sp
   0EBC D0 01              2862 	pop	ar1
   0EBE D0 00              2863 	pop	ar0
   0EC0 D0 07              2864 	pop	ar7
   0EC2 80 24              2865 	sjmp	00236$
   0EC4                    2866 00235$:
                           2867 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:377: Write7219(6, 0x0f);
   0EC4 C0 07              2868 	push	ar7
   0EC6 C0 00              2869 	push	ar0
   0EC8 C0 01              2870 	push	ar1
   0ECA 74 0F              2871 	mov	a,#0x0F
   0ECC C0 E0              2872 	push	acc
   0ECE 75 82 06           2873 	mov	dpl,#0x06
   0ED1 12 00 FB           2874 	lcall	_Write7219
   0ED4 15 81              2875 	dec	sp
                           2876 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:378: Write7219(5, 0x0f); 
   0ED6 74 0F              2877 	mov	a,#0x0F
   0ED8 C0 E0              2878 	push	acc
   0EDA 75 82 05           2879 	mov	dpl,#0x05
   0EDD 12 00 FB           2880 	lcall	_Write7219
   0EE0 15 81              2881 	dec	sp
   0EE2 D0 01              2882 	pop	ar1
   0EE4 D0 00              2883 	pop	ar0
   0EE6 D0 07              2884 	pop	ar7
   0EE8                    2885 00236$:
                           2886 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:380: Write7219(8, open_close_time[3] / 10);
   0EE8 C0 00              2887 	push	ar0
   0EEA E5 23              2888 	mov	a,_bp
   0EEC 24 0A              2889 	add	a,#0x0a
   0EEE F8                 2890 	mov	r0,a
   0EEF 86 00              2891 	mov	ar0,@r0
   0EF1 86 06              2892 	mov	ar6,@r0
   0EF3 D0 00              2893 	pop	ar0
   0EF5 C2 D5              2894 	clr	F0
   0EF7 75 F0 0A           2895 	mov	b,#0x0a
   0EFA EE                 2896 	mov	a,r6
   0EFB 30 E7 04           2897 	jnb	acc.7,00507$
   0EFE B2 D5              2898 	cpl	F0
   0F00 F4                 2899 	cpl	a
   0F01 04                 2900 	inc	a
   0F02                    2901 00507$:
   0F02 84                 2902 	div	ab
   0F03 30 D5 02           2903 	jnb	F0,00508$
   0F06 F4                 2904 	cpl	a
   0F07 04                 2905 	inc	a
   0F08                    2906 00508$:
   0F08 FE                 2907 	mov	r6,a
   0F09 C0 07              2908 	push	ar7
   0F0B C0 00              2909 	push	ar0
   0F0D C0 01              2910 	push	ar1
   0F0F C0 06              2911 	push	ar6
   0F11 75 82 08           2912 	mov	dpl,#0x08
   0F14 12 00 FB           2913 	lcall	_Write7219
   0F17 15 81              2914 	dec	sp
   0F19 D0 01              2915 	pop	ar1
   0F1B D0 00              2916 	pop	ar0
   0F1D D0 07              2917 	pop	ar7
                           2918 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:381: Write7219(7, open_close_time[3] % 10); 
   0F1F C0 00              2919 	push	ar0
   0F21 E5 23              2920 	mov	a,_bp
   0F23 24 0A              2921 	add	a,#0x0a
   0F25 F8                 2922 	mov	r0,a
   0F26 86 00              2923 	mov	ar0,@r0
   0F28 86 06              2924 	mov	ar6,@r0
   0F2A D0 00              2925 	pop	ar0
   0F2C 75 F0 0A           2926 	mov	b,#0x0a
   0F2F EE                 2927 	mov	a,r6
   0F30 C2 D5              2928 	clr	F0
   0F32 30 E7 04           2929 	jnb	acc.7,00509$
   0F35 D2 D5              2930 	setb	F0
   0F37 F4                 2931 	cpl	a
   0F38 04                 2932 	inc	a
   0F39                    2933 00509$:
   0F39 84                 2934 	div	ab
   0F3A E5 F0              2935 	mov	a,b
   0F3C 30 D5 02           2936 	jnb	F0,00510$
   0F3F F4                 2937 	cpl	a
   0F40 04                 2938 	inc	a
   0F41                    2939 00510$:
   0F41 FE                 2940 	mov	r6,a
   0F42 C0 07              2941 	push	ar7
   0F44 C0 00              2942 	push	ar0
   0F46 C0 01              2943 	push	ar1
   0F48 C0 06              2944 	push	ar6
   0F4A 75 82 07           2945 	mov	dpl,#0x07
   0F4D 12 00 FB           2946 	lcall	_Write7219
   0F50 15 81              2947 	dec	sp
   0F52 D0 01              2948 	pop	ar1
   0F54 D0 00              2949 	pop	ar0
   0F56 D0 07              2950 	pop	ar7
                           2951 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:382: Write7219(4, open_close_time[5] / 10);
   0F58 C0 00              2952 	push	ar0
   0F5A E5 23              2953 	mov	a,_bp
   0F5C 24 0C              2954 	add	a,#0x0c
   0F5E F8                 2955 	mov	r0,a
   0F5F 86 00              2956 	mov	ar0,@r0
   0F61 86 06              2957 	mov	ar6,@r0
   0F63 D0 00              2958 	pop	ar0
   0F65 C2 D5              2959 	clr	F0
   0F67 75 F0 0A           2960 	mov	b,#0x0a
   0F6A EE                 2961 	mov	a,r6
   0F6B 30 E7 04           2962 	jnb	acc.7,00511$
   0F6E B2 D5              2963 	cpl	F0
   0F70 F4                 2964 	cpl	a
   0F71 04                 2965 	inc	a
   0F72                    2966 00511$:
   0F72 84                 2967 	div	ab
   0F73 30 D5 02           2968 	jnb	F0,00512$
   0F76 F4                 2969 	cpl	a
   0F77 04                 2970 	inc	a
   0F78                    2971 00512$:
   0F78 FE                 2972 	mov	r6,a
   0F79 C0 07              2973 	push	ar7
   0F7B C0 00              2974 	push	ar0
   0F7D C0 01              2975 	push	ar1
   0F7F C0 06              2976 	push	ar6
   0F81 75 82 04           2977 	mov	dpl,#0x04
   0F84 12 00 FB           2978 	lcall	_Write7219
   0F87 15 81              2979 	dec	sp
   0F89 D0 01              2980 	pop	ar1
   0F8B D0 00              2981 	pop	ar0
   0F8D D0 07              2982 	pop	ar7
                           2983 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:383: Write7219(3, open_close_time[5] % 10);
   0F8F C0 00              2984 	push	ar0
   0F91 E5 23              2985 	mov	a,_bp
   0F93 24 0C              2986 	add	a,#0x0c
   0F95 F8                 2987 	mov	r0,a
   0F96 86 00              2988 	mov	ar0,@r0
   0F98 86 06              2989 	mov	ar6,@r0
   0F9A D0 00              2990 	pop	ar0
   0F9C 75 F0 0A           2991 	mov	b,#0x0a
   0F9F EE                 2992 	mov	a,r6
   0FA0 C2 D5              2993 	clr	F0
   0FA2 30 E7 04           2994 	jnb	acc.7,00513$
   0FA5 D2 D5              2995 	setb	F0
   0FA7 F4                 2996 	cpl	a
   0FA8 04                 2997 	inc	a
   0FA9                    2998 00513$:
   0FA9 84                 2999 	div	ab
   0FAA E5 F0              3000 	mov	a,b
   0FAC 30 D5 02           3001 	jnb	F0,00514$
   0FAF F4                 3002 	cpl	a
   0FB0 04                 3003 	inc	a
   0FB1                    3004 00514$:
   0FB1 FE                 3005 	mov	r6,a
   0FB2 C0 07              3006 	push	ar7
   0FB4 C0 00              3007 	push	ar0
   0FB6 C0 01              3008 	push	ar1
   0FB8 C0 06              3009 	push	ar6
   0FBA 75 82 03           3010 	mov	dpl,#0x03
   0FBD 12 00 FB           3011 	lcall	_Write7219
   0FC0 15 81              3012 	dec	sp
   0FC2 D0 01              3013 	pop	ar1
   0FC4 D0 00              3014 	pop	ar0
   0FC6 D0 07              3015 	pop	ar7
   0FC8 02 11 5D           3016 	ljmp	00247$
   0FCB                    3017 00243$:
                           3018 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:384: } else if (mode2_change_place == 5) {
   0FCB C0 00              3019 	push	ar0
   0FCD A8 23              3020 	mov	r0,_bp
   0FCF 08                 3021 	inc	r0
   0FD0 B6 05 02           3022 	cjne	@r0,#0x05,00515$
   0FD3 80 05              3023 	sjmp	00516$
   0FD5                    3024 00515$:
   0FD5 D0 00              3025 	pop	ar0
   0FD7 02 11 5D           3026 	ljmp	00247$
   0FDA                    3027 00516$:
   0FDA D0 00              3028 	pop	ar0
                           3029 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:385: if (time_count >= 50) {
   0FDC C3                 3030 	clr	c
   0FDD E5 18              3031 	mov	a,_time_count
   0FDF 94 32              3032 	subb	a,#0x32
   0FE1 E5 19              3033 	mov	a,(_time_count + 1)
   0FE3 94 00              3034 	subb	a,#0x00
   0FE5 40 72              3035 	jc	00238$
                           3036 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:386: Write7219(4, open_close_time[5] / 10);
   0FE7 C0 00              3037 	push	ar0
   0FE9 E5 23              3038 	mov	a,_bp
   0FEB 24 0C              3039 	add	a,#0x0c
   0FED F8                 3040 	mov	r0,a
   0FEE 86 00              3041 	mov	ar0,@r0
   0FF0 86 06              3042 	mov	ar6,@r0
   0FF2 D0 00              3043 	pop	ar0
   0FF4 C2 D5              3044 	clr	F0
   0FF6 75 F0 0A           3045 	mov	b,#0x0a
   0FF9 EE                 3046 	mov	a,r6
   0FFA 30 E7 04           3047 	jnb	acc.7,00518$
   0FFD B2 D5              3048 	cpl	F0
   0FFF F4                 3049 	cpl	a
   1000 04                 3050 	inc	a
   1001                    3051 00518$:
   1001 84                 3052 	div	ab
   1002 30 D5 02           3053 	jnb	F0,00519$
   1005 F4                 3054 	cpl	a
   1006 04                 3055 	inc	a
   1007                    3056 00519$:
   1007 FE                 3057 	mov	r6,a
   1008 C0 07              3058 	push	ar7
   100A C0 00              3059 	push	ar0
   100C C0 01              3060 	push	ar1
   100E C0 06              3061 	push	ar6
   1010 75 82 04           3062 	mov	dpl,#0x04
   1013 12 00 FB           3063 	lcall	_Write7219
   1016 15 81              3064 	dec	sp
   1018 D0 01              3065 	pop	ar1
   101A D0 00              3066 	pop	ar0
   101C D0 07              3067 	pop	ar7
                           3068 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:387: Write7219(3, open_close_time[5] % 10);
   101E C0 00              3069 	push	ar0
   1020 E5 23              3070 	mov	a,_bp
   1022 24 0C              3071 	add	a,#0x0c
   1024 F8                 3072 	mov	r0,a
   1025 86 00              3073 	mov	ar0,@r0
   1027 86 06              3074 	mov	ar6,@r0
   1029 D0 00              3075 	pop	ar0
   102B 75 F0 0A           3076 	mov	b,#0x0a
   102E EE                 3077 	mov	a,r6
   102F C2 D5              3078 	clr	F0
   1031 30 E7 04           3079 	jnb	acc.7,00520$
   1034 D2 D5              3080 	setb	F0
   1036 F4                 3081 	cpl	a
   1037 04                 3082 	inc	a
   1038                    3083 00520$:
   1038 84                 3084 	div	ab
   1039 E5 F0              3085 	mov	a,b
   103B 30 D5 02           3086 	jnb	F0,00521$
   103E F4                 3087 	cpl	a
   103F 04                 3088 	inc	a
   1040                    3089 00521$:
   1040 FE                 3090 	mov	r6,a
   1041 C0 07              3091 	push	ar7
   1043 C0 00              3092 	push	ar0
   1045 C0 01              3093 	push	ar1
   1047 C0 06              3094 	push	ar6
   1049 75 82 03           3095 	mov	dpl,#0x03
   104C 12 00 FB           3096 	lcall	_Write7219
   104F 15 81              3097 	dec	sp
   1051 D0 01              3098 	pop	ar1
   1053 D0 00              3099 	pop	ar0
   1055 D0 07              3100 	pop	ar7
   1057 80 24              3101 	sjmp	00239$
   1059                    3102 00238$:
                           3103 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:389: Write7219(4, 0x0f);
   1059 C0 07              3104 	push	ar7
   105B C0 00              3105 	push	ar0
   105D C0 01              3106 	push	ar1
   105F 74 0F              3107 	mov	a,#0x0F
   1061 C0 E0              3108 	push	acc
   1063 75 82 04           3109 	mov	dpl,#0x04
   1066 12 00 FB           3110 	lcall	_Write7219
   1069 15 81              3111 	dec	sp
                           3112 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:390: Write7219(3, 0x0f); 
   106B 74 0F              3113 	mov	a,#0x0F
   106D C0 E0              3114 	push	acc
   106F 75 82 03           3115 	mov	dpl,#0x03
   1072 12 00 FB           3116 	lcall	_Write7219
   1075 15 81              3117 	dec	sp
   1077 D0 01              3118 	pop	ar1
   1079 D0 00              3119 	pop	ar0
   107B D0 07              3120 	pop	ar7
   107D                    3121 00239$:
                           3122 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:392: Write7219(5, open_close_time[4] % 10);
   107D C0 00              3123 	push	ar0
   107F E5 23              3124 	mov	a,_bp
   1081 24 0B              3125 	add	a,#0x0b
   1083 F8                 3126 	mov	r0,a
   1084 86 00              3127 	mov	ar0,@r0
   1086 86 06              3128 	mov	ar6,@r0
   1088 D0 00              3129 	pop	ar0
   108A 75 F0 0A           3130 	mov	b,#0x0a
   108D EE                 3131 	mov	a,r6
   108E C2 D5              3132 	clr	F0
   1090 30 E7 04           3133 	jnb	acc.7,00522$
   1093 D2 D5              3134 	setb	F0
   1095 F4                 3135 	cpl	a
   1096 04                 3136 	inc	a
   1097                    3137 00522$:
   1097 84                 3138 	div	ab
   1098 E5 F0              3139 	mov	a,b
   109A 30 D5 02           3140 	jnb	F0,00523$
   109D F4                 3141 	cpl	a
   109E 04                 3142 	inc	a
   109F                    3143 00523$:
   109F FE                 3144 	mov	r6,a
   10A0 C0 07              3145 	push	ar7
   10A2 C0 00              3146 	push	ar0
   10A4 C0 01              3147 	push	ar1
   10A6 C0 06              3148 	push	ar6
   10A8 75 82 05           3149 	mov	dpl,#0x05
   10AB 12 00 FB           3150 	lcall	_Write7219
   10AE 15 81              3151 	dec	sp
   10B0 D0 01              3152 	pop	ar1
   10B2 D0 00              3153 	pop	ar0
   10B4 D0 07              3154 	pop	ar7
                           3155 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:393: Write7219(6, open_close_time[4] / 10);
   10B6 C0 00              3156 	push	ar0
   10B8 E5 23              3157 	mov	a,_bp
   10BA 24 0B              3158 	add	a,#0x0b
   10BC F8                 3159 	mov	r0,a
   10BD 86 00              3160 	mov	ar0,@r0
   10BF 86 06              3161 	mov	ar6,@r0
   10C1 D0 00              3162 	pop	ar0
   10C3 C2 D5              3163 	clr	F0
   10C5 75 F0 0A           3164 	mov	b,#0x0a
   10C8 EE                 3165 	mov	a,r6
   10C9 30 E7 04           3166 	jnb	acc.7,00524$
   10CC B2 D5              3167 	cpl	F0
   10CE F4                 3168 	cpl	a
   10CF 04                 3169 	inc	a
   10D0                    3170 00524$:
   10D0 84                 3171 	div	ab
   10D1 30 D5 02           3172 	jnb	F0,00525$
   10D4 F4                 3173 	cpl	a
   10D5 04                 3174 	inc	a
   10D6                    3175 00525$:
   10D6 FE                 3176 	mov	r6,a
   10D7 C0 07              3177 	push	ar7
   10D9 C0 00              3178 	push	ar0
   10DB C0 01              3179 	push	ar1
   10DD C0 06              3180 	push	ar6
   10DF 75 82 06           3181 	mov	dpl,#0x06
   10E2 12 00 FB           3182 	lcall	_Write7219
   10E5 15 81              3183 	dec	sp
   10E7 D0 01              3184 	pop	ar1
   10E9 D0 00              3185 	pop	ar0
   10EB D0 07              3186 	pop	ar7
                           3187 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:394: Write7219(7, open_close_time[3] % 10); 
   10ED C0 00              3188 	push	ar0
   10EF E5 23              3189 	mov	a,_bp
   10F1 24 0A              3190 	add	a,#0x0a
   10F3 F8                 3191 	mov	r0,a
   10F4 86 00              3192 	mov	ar0,@r0
   10F6 86 06              3193 	mov	ar6,@r0
   10F8 D0 00              3194 	pop	ar0
   10FA 75 F0 0A           3195 	mov	b,#0x0a
   10FD EE                 3196 	mov	a,r6
   10FE C2 D5              3197 	clr	F0
   1100 30 E7 04           3198 	jnb	acc.7,00526$
   1103 D2 D5              3199 	setb	F0
   1105 F4                 3200 	cpl	a
   1106 04                 3201 	inc	a
   1107                    3202 00526$:
   1107 84                 3203 	div	ab
   1108 E5 F0              3204 	mov	a,b
   110A 30 D5 02           3205 	jnb	F0,00527$
   110D F4                 3206 	cpl	a
   110E 04                 3207 	inc	a
   110F                    3208 00527$:
   110F FE                 3209 	mov	r6,a
   1110 C0 07              3210 	push	ar7
   1112 C0 00              3211 	push	ar0
   1114 C0 01              3212 	push	ar1
   1116 C0 06              3213 	push	ar6
   1118 75 82 07           3214 	mov	dpl,#0x07
   111B 12 00 FB           3215 	lcall	_Write7219
   111E 15 81              3216 	dec	sp
   1120 D0 01              3217 	pop	ar1
   1122 D0 00              3218 	pop	ar0
   1124 D0 07              3219 	pop	ar7
                           3220 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:395: Write7219(8, open_close_time[3] / 10);
   1126 C0 00              3221 	push	ar0
   1128 E5 23              3222 	mov	a,_bp
   112A 24 0A              3223 	add	a,#0x0a
   112C F8                 3224 	mov	r0,a
   112D 86 00              3225 	mov	ar0,@r0
   112F 86 06              3226 	mov	ar6,@r0
   1131 D0 00              3227 	pop	ar0
   1133 C2 D5              3228 	clr	F0
   1135 75 F0 0A           3229 	mov	b,#0x0a
   1138 EE                 3230 	mov	a,r6
   1139 30 E7 04           3231 	jnb	acc.7,00528$
   113C B2 D5              3232 	cpl	F0
   113E F4                 3233 	cpl	a
   113F 04                 3234 	inc	a
   1140                    3235 00528$:
   1140 84                 3236 	div	ab
   1141 30 D5 02           3237 	jnb	F0,00529$
   1144 F4                 3238 	cpl	a
   1145 04                 3239 	inc	a
   1146                    3240 00529$:
   1146 FE                 3241 	mov	r6,a
   1147 C0 07              3242 	push	ar7
   1149 C0 00              3243 	push	ar0
   114B C0 01              3244 	push	ar1
   114D C0 06              3245 	push	ar6
   114F 75 82 08           3246 	mov	dpl,#0x08
   1152 12 00 FB           3247 	lcall	_Write7219
   1155 15 81              3248 	dec	sp
   1157 D0 01              3249 	pop	ar1
   1159 D0 00              3250 	pop	ar0
   115B D0 07              3251 	pop	ar7
   115D                    3252 00247$:
                           3253 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:397: Write7219(2, 2);
   115D C0 07              3254 	push	ar7
   115F C0 00              3255 	push	ar0
   1161 C0 01              3256 	push	ar1
   1163 74 02              3257 	mov	a,#0x02
   1165 C0 E0              3258 	push	acc
   1167 75 82 02           3259 	mov	dpl,#0x02
   116A 12 00 FB           3260 	lcall	_Write7219
   116D 15 81              3261 	dec	sp
   116F D0 01              3262 	pop	ar1
   1171 D0 00              3263 	pop	ar0
   1173 D0 07              3264 	pop	ar7
   1175                    3265 00250$:
                           3266 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:399: Write7219(1, 2);
   1175 C0 07              3267 	push	ar7
   1177 C0 00              3268 	push	ar0
   1179 C0 01              3269 	push	ar1
   117B 74 02              3270 	mov	a,#0x02
   117D C0 E0              3271 	push	acc
   117F 75 82 01           3272 	mov	dpl,#0x01
   1182 12 00 FB           3273 	lcall	_Write7219
   1185 15 81              3274 	dec	sp
   1187 D0 01              3275 	pop	ar1
   1189 D0 00              3276 	pop	ar0
   118B D0 07              3277 	pop	ar7
                           3278 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:400: if (open_close_time[0] == T_hour && open_close_time[1] == T_min && open_close_time[2] == T_sec) {
   118D E6                 3279 	mov	a,@r0
   118E FE                 3280 	mov	r6,a
   118F B5 1A 26           3281 	cjne	a,_T_hour,00256$
   1192 E7                 3282 	mov	a,@r1
   1193 FE                 3283 	mov	r6,a
   1194 B5 1B 21           3284 	cjne	a,_T_min,00256$
   1197 C0 00              3285 	push	ar0
   1199 A8 07              3286 	mov	r0,ar7
   119B 86 06              3287 	mov	ar6,@r0
   119D D0 00              3288 	pop	ar0
   119F EE                 3289 	mov	a,r6
   11A0 B5 1C 15           3290 	cjne	a,_T_sec,00256$
                           3291 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:401: server_action(1);
   11A3 90 00 01           3292 	mov	dptr,#0x0001
   11A6 C0 07              3293 	push	ar7
   11A8 C0 00              3294 	push	ar0
   11AA C0 01              3295 	push	ar1
   11AC 12 02 C3           3296 	lcall	_server_action
   11AF D0 01              3297 	pop	ar1
   11B1 D0 00              3298 	pop	ar0
   11B3 D0 07              3299 	pop	ar7
   11B5 02 13 AC           3300 	ljmp	00271$
   11B8                    3301 00256$:
                           3302 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:402: } else if (open_close_time[3] == T_hour && open_close_time[4] == T_min && open_close_time[5] == T_sec) {
   11B8 C0 00              3303 	push	ar0
   11BA E5 23              3304 	mov	a,_bp
   11BC 24 0A              3305 	add	a,#0x0a
   11BE F8                 3306 	mov	r0,a
   11BF 86 00              3307 	mov	ar0,@r0
   11C1 86 06              3308 	mov	ar6,@r0
   11C3 D0 00              3309 	pop	ar0
   11C5 EE                 3310 	mov	a,r6
   11C6 B5 1A 02           3311 	cjne	a,_T_hour,00536$
   11C9 80 03              3312 	sjmp	00537$
   11CB                    3313 00536$:
   11CB 02 13 AC           3314 	ljmp	00271$
   11CE                    3315 00537$:
   11CE C0 00              3316 	push	ar0
   11D0 E5 23              3317 	mov	a,_bp
   11D2 24 0B              3318 	add	a,#0x0b
   11D4 F8                 3319 	mov	r0,a
   11D5 86 00              3320 	mov	ar0,@r0
   11D7 86 06              3321 	mov	ar6,@r0
   11D9 D0 00              3322 	pop	ar0
   11DB EE                 3323 	mov	a,r6
   11DC B5 1B 02           3324 	cjne	a,_T_min,00538$
   11DF 80 03              3325 	sjmp	00539$
   11E1                    3326 00538$:
   11E1 02 13 AC           3327 	ljmp	00271$
   11E4                    3328 00539$:
   11E4 C0 00              3329 	push	ar0
   11E6 E5 23              3330 	mov	a,_bp
   11E8 24 0C              3331 	add	a,#0x0c
   11EA F8                 3332 	mov	r0,a
   11EB 86 00              3333 	mov	ar0,@r0
   11ED 86 06              3334 	mov	ar6,@r0
   11EF D0 00              3335 	pop	ar0
   11F1 EE                 3336 	mov	a,r6
   11F2 B5 1C 02           3337 	cjne	a,_T_sec,00540$
   11F5 80 03              3338 	sjmp	00541$
   11F7                    3339 00540$:
   11F7 02 13 AC           3340 	ljmp	00271$
   11FA                    3341 00541$:
                           3342 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:403: server_action(2);
   11FA 90 00 02           3343 	mov	dptr,#0x0002
   11FD C0 07              3344 	push	ar7
   11FF C0 00              3345 	push	ar0
   1201 C0 01              3346 	push	ar1
   1203 12 02 C3           3347 	lcall	_server_action
   1206 D0 01              3348 	pop	ar1
   1208 D0 00              3349 	pop	ar0
   120A D0 07              3350 	pop	ar7
   120C 02 13 AC           3351 	ljmp	00271$
   120F                    3352 00267$:
                           3353 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:405: } else if (mode == 3 || mode == 4) { // 顯示當前時間
   120F C0 00              3354 	push	ar0
   1211 E5 23              3355 	mov	a,_bp
   1213 24 08              3356 	add	a,#0x08
   1215 F8                 3357 	mov	r0,a
   1216 E4                 3358 	clr	a
   1217 B6 03 01           3359 	cjne	@r0,#0x03,00542$
   121A 04                 3360 	inc	a
   121B                    3361 00542$:
   121B FE                 3362 	mov	r6,a
   121C D0 00              3363 	pop	ar0
   121E EE                 3364 	mov	a,r6
   121F 70 13              3365 	jnz	00263$
   1221 C0 00              3366 	push	ar0
   1223 E5 23              3367 	mov	a,_bp
   1225 24 08              3368 	add	a,#0x08
   1227 F8                 3369 	mov	r0,a
   1228 B6 04 02           3370 	cjne	@r0,#0x04,00545$
   122B 80 05              3371 	sjmp	00546$
   122D                    3372 00545$:
   122D D0 00              3373 	pop	ar0
   122F 02 13 AC           3374 	ljmp	00271$
   1232                    3375 00546$:
   1232 D0 00              3376 	pop	ar0
   1234                    3377 00263$:
                           3378 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:406: Write7219(8, T_hour / 10);
   1234 C0 07              3379 	push	ar7
   1236 C2 D5              3380 	clr	F0
   1238 75 F0 0A           3381 	mov	b,#0x0a
   123B E5 1A              3382 	mov	a,_T_hour
   123D 30 E7 04           3383 	jnb	acc.7,00547$
   1240 B2 D5              3384 	cpl	F0
   1242 F4                 3385 	cpl	a
   1243 04                 3386 	inc	a
   1244                    3387 00547$:
   1244 84                 3388 	div	ab
   1245 30 D5 02           3389 	jnb	F0,00548$
   1248 F4                 3390 	cpl	a
   1249 04                 3391 	inc	a
   124A                    3392 00548$:
   124A FF                 3393 	mov	r7,a
   124B C0 06              3394 	push	ar6
   124D C0 07              3395 	push	ar7
   124F C0 00              3396 	push	ar0
   1251 C0 01              3397 	push	ar1
   1253 C0 07              3398 	push	ar7
   1255 75 82 08           3399 	mov	dpl,#0x08
   1258 12 00 FB           3400 	lcall	_Write7219
   125B 15 81              3401 	dec	sp
   125D D0 01              3402 	pop	ar1
   125F D0 00              3403 	pop	ar0
   1261 D0 07              3404 	pop	ar7
   1263 D0 06              3405 	pop	ar6
                           3406 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:407: Write7219(7, T_hour % 10);
   1265 75 F0 0A           3407 	mov	b,#0x0a
   1268 E5 1A              3408 	mov	a,_T_hour
   126A C2 D5              3409 	clr	F0
   126C 30 E7 04           3410 	jnb	acc.7,00549$
   126F D2 D5              3411 	setb	F0
   1271 F4                 3412 	cpl	a
   1272 04                 3413 	inc	a
   1273                    3414 00549$:
   1273 84                 3415 	div	ab
   1274 E5 F0              3416 	mov	a,b
   1276 30 D5 02           3417 	jnb	F0,00550$
   1279 F4                 3418 	cpl	a
   127A 04                 3419 	inc	a
   127B                    3420 00550$:
   127B FF                 3421 	mov	r7,a
   127C C0 06              3422 	push	ar6
   127E C0 07              3423 	push	ar7
   1280 C0 00              3424 	push	ar0
   1282 C0 01              3425 	push	ar1
   1284 C0 07              3426 	push	ar7
   1286 75 82 07           3427 	mov	dpl,#0x07
   1289 12 00 FB           3428 	lcall	_Write7219
   128C 15 81              3429 	dec	sp
   128E D0 01              3430 	pop	ar1
   1290 D0 00              3431 	pop	ar0
   1292 D0 07              3432 	pop	ar7
   1294 D0 06              3433 	pop	ar6
                           3434 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:408: Write7219(6, T_min / 10);
   1296 C2 D5              3435 	clr	F0
   1298 75 F0 0A           3436 	mov	b,#0x0a
   129B E5 1B              3437 	mov	a,_T_min
   129D 30 E7 04           3438 	jnb	acc.7,00551$
   12A0 B2 D5              3439 	cpl	F0
   12A2 F4                 3440 	cpl	a
   12A3 04                 3441 	inc	a
   12A4                    3442 00551$:
   12A4 84                 3443 	div	ab
   12A5 30 D5 02           3444 	jnb	F0,00552$
   12A8 F4                 3445 	cpl	a
   12A9 04                 3446 	inc	a
   12AA                    3447 00552$:
   12AA FF                 3448 	mov	r7,a
   12AB C0 06              3449 	push	ar6
   12AD C0 07              3450 	push	ar7
   12AF C0 00              3451 	push	ar0
   12B1 C0 01              3452 	push	ar1
   12B3 C0 07              3453 	push	ar7
   12B5 75 82 06           3454 	mov	dpl,#0x06
   12B8 12 00 FB           3455 	lcall	_Write7219
   12BB 15 81              3456 	dec	sp
   12BD D0 01              3457 	pop	ar1
   12BF D0 00              3458 	pop	ar0
   12C1 D0 07              3459 	pop	ar7
   12C3 D0 06              3460 	pop	ar6
                           3461 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:409: Write7219(5, T_min % 10);
   12C5 75 F0 0A           3462 	mov	b,#0x0a
   12C8 E5 1B              3463 	mov	a,_T_min
   12CA C2 D5              3464 	clr	F0
   12CC 30 E7 04           3465 	jnb	acc.7,00553$
   12CF D2 D5              3466 	setb	F0
   12D1 F4                 3467 	cpl	a
   12D2 04                 3468 	inc	a
   12D3                    3469 00553$:
   12D3 84                 3470 	div	ab
   12D4 E5 F0              3471 	mov	a,b
   12D6 30 D5 02           3472 	jnb	F0,00554$
   12D9 F4                 3473 	cpl	a
   12DA 04                 3474 	inc	a
   12DB                    3475 00554$:
   12DB FF                 3476 	mov	r7,a
   12DC C0 06              3477 	push	ar6
   12DE C0 07              3478 	push	ar7
   12E0 C0 00              3479 	push	ar0
   12E2 C0 01              3480 	push	ar1
   12E4 C0 07              3481 	push	ar7
   12E6 75 82 05           3482 	mov	dpl,#0x05
   12E9 12 00 FB           3483 	lcall	_Write7219
   12EC 15 81              3484 	dec	sp
   12EE D0 01              3485 	pop	ar1
   12F0 D0 00              3486 	pop	ar0
   12F2 D0 07              3487 	pop	ar7
   12F4 D0 06              3488 	pop	ar6
                           3489 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:410: Write7219(4, T_sec / 10);
   12F6 C2 D5              3490 	clr	F0
   12F8 75 F0 0A           3491 	mov	b,#0x0a
   12FB E5 1C              3492 	mov	a,_T_sec
   12FD 30 E7 04           3493 	jnb	acc.7,00555$
   1300 B2 D5              3494 	cpl	F0
   1302 F4                 3495 	cpl	a
   1303 04                 3496 	inc	a
   1304                    3497 00555$:
   1304 84                 3498 	div	ab
   1305 30 D5 02           3499 	jnb	F0,00556$
   1308 F4                 3500 	cpl	a
   1309 04                 3501 	inc	a
   130A                    3502 00556$:
   130A FF                 3503 	mov	r7,a
   130B C0 06              3504 	push	ar6
   130D C0 07              3505 	push	ar7
   130F C0 00              3506 	push	ar0
   1311 C0 01              3507 	push	ar1
   1313 C0 07              3508 	push	ar7
   1315 75 82 04           3509 	mov	dpl,#0x04
   1318 12 00 FB           3510 	lcall	_Write7219
   131B 15 81              3511 	dec	sp
   131D D0 01              3512 	pop	ar1
   131F D0 00              3513 	pop	ar0
   1321 D0 07              3514 	pop	ar7
   1323 D0 06              3515 	pop	ar6
                           3516 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:411: Write7219(3, T_sec % 10);
   1325 75 F0 0A           3517 	mov	b,#0x0a
   1328 E5 1C              3518 	mov	a,_T_sec
   132A C2 D5              3519 	clr	F0
   132C 30 E7 04           3520 	jnb	acc.7,00557$
   132F D2 D5              3521 	setb	F0
   1331 F4                 3522 	cpl	a
   1332 04                 3523 	inc	a
   1333                    3524 00557$:
   1333 84                 3525 	div	ab
   1334 E5 F0              3526 	mov	a,b
   1336 30 D5 02           3527 	jnb	F0,00558$
   1339 F4                 3528 	cpl	a
   133A 04                 3529 	inc	a
   133B                    3530 00558$:
   133B FF                 3531 	mov	r7,a
   133C C0 06              3532 	push	ar6
   133E C0 07              3533 	push	ar7
   1340 C0 00              3534 	push	ar0
   1342 C0 01              3535 	push	ar1
   1344 C0 07              3536 	push	ar7
   1346 75 82 03           3537 	mov	dpl,#0x03
   1349 12 00 FB           3538 	lcall	_Write7219
   134C 15 81              3539 	dec	sp
   134E D0 01              3540 	pop	ar1
   1350 D0 00              3541 	pop	ar0
   1352 D0 07              3542 	pop	ar7
   1354 D0 06              3543 	pop	ar6
                           3544 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:412: if (mode == 3) Write7219(2, 0x0f);
   1356 D0 07              3545 	pop	ar7
   1358 EE                 3546 	mov	a,r6
   1359 60 1A              3547 	jz	00261$
   135B C0 07              3548 	push	ar7
   135D C0 00              3549 	push	ar0
   135F C0 01              3550 	push	ar1
   1361 74 0F              3551 	mov	a,#0x0F
   1363 C0 E0              3552 	push	acc
   1365 75 82 02           3553 	mov	dpl,#0x02
   1368 12 00 FB           3554 	lcall	_Write7219
   136B 15 81              3555 	dec	sp
   136D D0 01              3556 	pop	ar1
   136F D0 00              3557 	pop	ar0
   1371 D0 07              3558 	pop	ar7
   1373 80 18              3559 	sjmp	00262$
   1375                    3560 00261$:
                           3561 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:413: else Write7219(2, 0x7E);
   1375 C0 07              3562 	push	ar7
   1377 C0 00              3563 	push	ar0
   1379 C0 01              3564 	push	ar1
   137B 74 7E              3565 	mov	a,#0x7E
   137D C0 E0              3566 	push	acc
   137F 75 82 02           3567 	mov	dpl,#0x02
   1382 12 00 FB           3568 	lcall	_Write7219
   1385 15 81              3569 	dec	sp
   1387 D0 01              3570 	pop	ar1
   1389 D0 00              3571 	pop	ar0
   138B D0 07              3572 	pop	ar7
   138D                    3573 00262$:
                           3574 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:414: Write7219(1, mode);
   138D C0 07              3575 	push	ar7
   138F C0 00              3576 	push	ar0
   1391 C0 01              3577 	push	ar1
   1393 85 00 F0           3578 	mov	b,ar0
   1396 E5 23              3579 	mov	a,_bp
   1398 24 08              3580 	add	a,#0x08
   139A F8                 3581 	mov	r0,a
   139B E6                 3582 	mov	a,@r0
   139C C0 E0              3583 	push	acc
   139E 75 82 01           3584 	mov	dpl,#0x01
   13A1 12 00 FB           3585 	lcall	_Write7219
   13A4 15 81              3586 	dec	sp
   13A6 D0 01              3587 	pop	ar1
   13A8 D0 00              3588 	pop	ar0
   13AA D0 07              3589 	pop	ar7
   13AC                    3590 00271$:
                           3591 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:417: toff = 30000 - ton;
   13AC 74 30              3592 	mov	a,#0x30
   13AE C3                 3593 	clr	c
   13AF 95 12              3594 	subb	a,_ton
   13B1 F5 14              3595 	mov	_toff,a
   13B3 74 75              3596 	mov	a,#0x75
   13B5 95 13              3597 	subb	a,(_ton + 1)
   13B7 F5 15              3598 	mov	(_toff + 1),a
                           3599 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:418: prebtn0 = INT0;
   13B9 A2 B2              3600 	mov	c,_INT0
   13BB E4                 3601 	clr	a
   13BC 33                 3602 	rlc	a
   13BD FA                 3603 	mov	r2,a
                           3604 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:419: prebtn1 = INT1;
   13BE A2 B3              3605 	mov	c,_INT1
   13C0 E4                 3606 	clr	a
   13C1 33                 3607 	rlc	a
   13C2 FB                 3608 	mov	r3,a
                           3609 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:420: prebtn2 = P2_0;
   13C3 A2 A0              3610 	mov	c,_P2_0
   13C5 E4                 3611 	clr	a
   13C6 33                 3612 	rlc	a
   13C7 FC                 3613 	mov	r4,a
                           3614 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:421: prebtn3 = P2_1;
   13C8 A2 A1              3615 	mov	c,_P2_1
   13CA E4                 3616 	clr	a
   13CB 33                 3617 	rlc	a
   13CC FD                 3618 	mov	r5,a
                           3619 ;	C:\HSU-PO~1\MICROP~1\FINAL_~1\main.c:422: delay_ms(20);
   13CD 90 00 14           3620 	mov	dptr,#0x0014
   13D0 C0 02              3621 	push	ar2
   13D2 C0 03              3622 	push	ar3
   13D4 C0 04              3623 	push	ar4
   13D6 C0 05              3624 	push	ar5
   13D8 C0 07              3625 	push	ar7
   13DA C0 00              3626 	push	ar0
   13DC C0 01              3627 	push	ar1
   13DE 12 01 7A           3628 	lcall	_delay_ms
   13E1 D0 01              3629 	pop	ar1
   13E3 D0 00              3630 	pop	ar0
   13E5 D0 07              3631 	pop	ar7
   13E7 D0 05              3632 	pop	ar5
   13E9 D0 04              3633 	pop	ar4
   13EB D0 03              3634 	pop	ar3
   13ED D0 02              3635 	pop	ar2
   13EF 02 03 F2           3636 	ljmp	00273$
   13F2 85 23 81           3637 	mov	sp,_bp
   13F5 D0 23              3638 	pop	_bp
   13F7 22                 3639 	ret
                           3640 	.area CSEG    (CODE)
                           3641 	.area CONST   (CODE)
                           3642 	.area XINIT   (CODE)
                           3643 	.area CABS    (ABS,CODE)
