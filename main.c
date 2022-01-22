#include <8051.h>
#include <8052.h>
#define DECODE_MODE  0x09
#define INTENSITY    0x0A
#define SCAN_LIMIT   0x0B
#define SHUT_DOWN    0x0C
#define DISPLAY_TEST 0x0F
#define matrixnum       1

#define DIN P3_4                 
#define LOAD P3_5      
#define CLK  P3_6 

unsigned int dutytime = 35536; //65536-45536就是責任週期
unsigned int ton = 15000; //高電位比例=50%
unsigned int toff = 15000; //低電位比例=50%
unsigned int temp; //給計時器工作用
unsigned int time_count = 0;
unsigned int ms1 = 907; // 透過修正timer1的時間修正系統性的時間計算誤差
signed char T_hour = 0, T_min = 0, T_sec = 0;
unsigned char PWM_state = 0;
unsigned char Action = 0; // 1: open, 2: close
unsigned char change_time = 0;
char BT_data = ' ';
char BT_data_flag = 0;
char i;

void sendbyte(unsigned char address,unsigned char dat) {
    unsigned char i;
    for (i=0;i<8;i++) {
        CLK=0;
        DIN=(address&0x80);
        address<<=1;
        CLK=1;
    }
    for (i=0;i<8;i++) {
        CLK=0;
        DIN=(dat&0x80);
        dat<<=1;
        CLK=1;
    }
}

void Write7219(unsigned char address,unsigned char dat) {
    unsigned char cnt;
    LOAD=0;
    for(cnt=1;cnt<=matrixnum;cnt++) sendbyte(address,dat);
    LOAD=1;                  
}

void SSD_Initial(void) {
    unsigned char i;
    Write7219(SHUT_DOWN,0x01);
    Write7219(DISPLAY_TEST,0x00);
    Write7219(DECODE_MODE,0xff);
    Write7219(SCAN_LIMIT,0x07);
    Write7219(INTENSITY,0x00);
    for(i=1;i<=8;i++) Write7219(i,0x0f);
}

void delay_ms(int ms) {
    unsigned int i;
    char j;
    for (i = 0; i < ms; i++) {
        for (j = 0; j < 90; j++);
    }
}

//初始化計時器
void time_initial(void) {
    TMOD = 0x11;  // Set Timer 1 to  mode 0 & Timer 0 mode 1. (16-bit timer)
    IE|=0x02; //開啟計時器中斷功能
    temp = 65536 - dutytime; //設定中斷一次的時間(預設是dutytime)
    TH0 = temp / 256; //填入高八位
    TL0 = temp % 256; //填入低八位
    TH1 = (65536-1000) / 256;   // Load initial higher 8 bits into Timer 1
    TL1 = (65536-1000) % 256;   // Load initial lower 8 bits into Timer 1
    EA = 1;                // Enable all interrupt
    ET0 = 1;            // Enable Timer 0 interrupt
    TR0 = 1;            // Start Timer 0
    ET1 = 1;            // Enable Timer 1 interrupt
    TR1 = 1;             // Start Timer 1
}

//使用計時器中斷副程式產生PWM
void timer0_isr(void) __interrupt TF0_VECTOR __using 1 {
    if (PWM_state == 1) {
        temp = 65536 - toff;
        TH0 = temp / 256;
        TL0 = temp % 256;
        if (Action == 1) {
            P2_7 = 0;
        } else if (Action == 2) {
            P2_6 = 0;
        }
        PWM_state = 0;
    } else {
        temp = 65536 - ton;
        TH0 = temp / 256;
        TL0 = temp % 256;
        if (Action == 1) {
            P2_7 = 1;
        } else if (Action == 2) {
            P2_6 = 1;
        }
        PWM_state = 1;
    }
}

void time_count_add(void) __interrupt 3 {   // 10ms
    TH1 = (65536 - 1000) / 256;
    TL1 = (65536 - 1000) % 256; 
    time_count++;
    if (time_count == ms1) {
        time_count = 0;
        if (++T_sec == 60) {
            T_sec = 0;
            if (++T_min == 60) {
                T_min = 0;
                if (++T_hour == 24) {
                    T_hour = 0;
                }
            }
        }
    }
}

void Write7219ALL(int pl8, int pl7, int pl6, int pl5, int pl4, int pl3, int pl2, int pl1) {
    Write7219(8, pl8);
    Write7219(7, pl7);
    Write7219(6, pl6);
    Write7219(5, pl5);
    Write7219(4, pl4);
    Write7219(3, pl3);
    Write7219(2, pl2);
    Write7219(1, pl1);
}

// 1: open, 2: close
void server_action(int act) {
    Action = act;
    if (act == 1) {
        ton = 2100; //2.2ms 左轉
        delay_ms(2000);
        ton = 1000;
    } else if (act == 2) {
        ton = 1000;
        delay_ms(2000);
        ton = 2100;
    }
}

void server_initial(void) {
    server_action(1);
    delay_ms(2000);
    server_action(2);
}

void finish_setup(void) {
    P1 = 0xff;
    for (i = 0; i < 10; i++) {
        P1 = ~P1;
        delay_ms(300);
    }
    P1 = 0xff;
}

void main(void) {
    char prebtn0 = 0, prebtn1 = 0, prebtn2 = 0, prebtn3 = 0;
    char mode2_change_place = 0;
    char open_close_time[6] = {8, 30, 0, 23, 30, 0}; //open: Hour, Minute, Second. close: Hour, Minute, Second.
    char mode = 1;
    INT0 = 1; INT1 = 1; P2_0 = 1; P2_1 = 1;
    ton = 1500;
    toff = 30000 - 1500;
    SSD_Initial();
    time_initial();
    server_initial();
    finish_setup();
    // Finish the initialize
    while (1) {
        if (BT_data == '1') {
            server_action(1);
            BT_data = ' ';
        } else if (BT_data == '2') {
            server_action(2);
            BT_data = ' ';
        }

        if (INT0 == 0 && prebtn0 == 1) {
            delay_ms(10);
            if (INT0 == 0) {
                if (mode == 1) { // 開燈
                    server_action(1);
                } else if (mode == 2) {
                    switch(mode2_change_place) {
                        case 0:
                        case 3:
                            if (++open_close_time[mode2_change_place] == 24) {
                                open_close_time[mode2_change_place] = 0;
                            }
                            break;
                        default:
                            if (++open_close_time[mode2_change_place] == 60) {
                                open_close_time[mode2_change_place] = 0;
                            }
                    }
                } else if (mode == 3) {

                } else if (mode == 4) {
                    switch (change_time) {
                        case 0:
                            if (++T_hour >= 24) {
                                T_hour = 0;
                            }
                            break;
                        case 1:
                            if (++T_min >= 60) {
                                T_min = 0;
                            }
                            break;
                        case 2:
                            if (++T_sec >= 60) {
                                T_sec = 0;
                            }
                    }
                } else if (mode == 5) {
                    ms1++; // if time go too fast, then add ms1 to correct;
                }
            }
        }
        if (INT1 == 0 && prebtn1 == 1) {
            delay_ms(10);
            if (INT1 == 0) {
                if (mode == 1) {
                    server_action(2);
                } else if (mode == 2) {
                    switch(mode2_change_place) {
                        case 0:
                        case 3:
                            if (--open_close_time[mode2_change_place] <= 0) {
                                open_close_time[mode2_change_place] = 23;
                            }
                            break;
                        default:
                            if (--open_close_time[mode2_change_place] <= 0) {
                                open_close_time[mode2_change_place] = 59;
                            }
                    }
                } else if (mode == 3) {
                    
                } else if (mode == 4) {
                    if (change_time == 0) {
                        if (--T_hour < 0) {
                            T_hour = 23;
                        }
                    } else if (change_time == 1) {
                        if (--T_min < 0) {
                            T_min = 59;
                        }
                    } else if (change_time == 2) {
                        if (--T_sec < 0) {
                            T_sec = 59;
                        }
                    }
                } else if (mode == 5) {
                    ms1--; // if time go to slow substract to correct
                }
            }
        }
        if (P2_0 == 0 && prebtn2 == 1) {
            delay_ms(10);
            if (P2_0 == 0) {
                if (mode == 1) {
                    mode = 2;
                } else if (mode == 2) {
                    mode = 3;
                } else if (mode == 3) {
                    mode = 4;
                } else if (mode == 4) {
                    mode = 5;
                } else if (mode == 5) {
                    mode = 1;
                }
            }
        }
        if (P2_1 == 0 && prebtn3 == 1) {
            delay_ms(10);
            if (P2_1 == 0) {
                if (mode == 1) {

                } else if (mode == 2) {
                    if (++mode2_change_place == 6) {
                        mode2_change_place = 0;
                    }
                } else if (mode == 3) {
                    
                } else if (mode == 4) {
                    if (++change_time == 3) {
                        change_time = 0;
                    }
                }
            }
        }


        if (mode == 1) { // 一般模式
            for (i = 2; i <= 8; i++) {
                Write7219(i, 0x0f);
            }
            Write7219(1, 1);
        } else if (mode == 2) { // 設定自動時間模式
            if (mode2_change_place < 3) {
                if (mode2_change_place == 0) {
                    if (time_count >= 500) {
                        Write7219(8, open_close_time[0] / 10);
                        Write7219(7, open_close_time[0] % 10); 
                    } else {
                        Write7219(8, 0x0f);
                        Write7219(7, 0x0f); 
                    }
                    Write7219(6, open_close_time[1] / 10);
                    Write7219(5, open_close_time[1] % 10);
                    Write7219(4, open_close_time[2] / 10);
                    Write7219(3, open_close_time[2] % 10);
                } else if (mode2_change_place == 1) {
                    if (time_count >= 500) {
                        Write7219(6, open_close_time[1] / 10);
                        Write7219(5, open_close_time[1] % 10);
                    } else {
                        Write7219(6, 0x0f);
                        Write7219(5, 0x0f); 
                    }
                    Write7219(8, open_close_time[0] / 10);
                    Write7219(7, open_close_time[0] % 10); 
                    Write7219(4, open_close_time[2] / 10);
                    Write7219(3, open_close_time[2] % 10);
                } else if (mode2_change_place == 2) {
                    if (time_count >= 500) {
                        Write7219(4, open_close_time[2] / 10);
                        Write7219(3, open_close_time[2] % 10);
                    } else {
                        Write7219(4, 0x0f);
                        Write7219(3, 0x0f); 
                    }
                    Write7219(6, open_close_time[1] / 10);
                    Write7219(5, open_close_time[1] % 10);
                    Write7219(8, open_close_time[0] / 10);
                    Write7219(7, open_close_time[0] % 10); 
                }
                Write7219(2, 1);
            } else {
                if (mode2_change_place == 3) {
                    if (time_count >= 500) {
                        Write7219(8, open_close_time[3] / 10);
                        Write7219(7, open_close_time[3] % 10); 
                    } else {
                        Write7219(8, 0x0f);
                        Write7219(7, 0x0f); 
                    }
                    Write7219(6, open_close_time[4] / 10);
                    Write7219(5, open_close_time[4] % 10);
                    Write7219(4, open_close_time[5] / 10);
                    Write7219(3, open_close_time[5] % 10);
                } else if (mode2_change_place == 4) {
                    if (time_count >= 500) {
                        Write7219(6, open_close_time[4] / 10);
                        Write7219(5, open_close_time[4] % 10);
                    } else {
                        Write7219(6, 0x0f);
                        Write7219(5, 0x0f); 
                    }
                    Write7219(8, open_close_time[3] / 10);
                    Write7219(7, open_close_time[3] % 10); 
                    Write7219(4, open_close_time[5] / 10);
                    Write7219(3, open_close_time[5] % 10);
                } else if (mode2_change_place == 5) {
                    if (time_count >= 500) {
                        Write7219(4, open_close_time[5] / 10);
                        Write7219(3, open_close_time[5] % 10);
                    } else {
                        Write7219(4, 0x0f);
                        Write7219(3, 0x0f); 
                    }
                    Write7219(5, open_close_time[4] % 10);
                    Write7219(6, open_close_time[4] / 10);
                    Write7219(7, open_close_time[3] % 10); 
                    Write7219(8, open_close_time[3] / 10);
                }
                Write7219(2, 2);
            }
            Write7219(1, 2);
            if (open_close_time[0] == T_hour && open_close_time[1] == T_min && open_close_time[2] == T_sec) {
                server_action(1);
            } else if (open_close_time[3] == T_hour && open_close_time[4] == T_min && open_close_time[5] == T_sec) {
                server_action(2);
            }
        } else if (mode == 3) { // 顯示當前時間
            Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 3);
        } else if (mode == 4) {
            if (change_time == 0) {
                if (time_count <= 500) {
                    Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 4);
                } else {
                    Write7219ALL(0x0f, 0x0f, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 4);
                }
            } else if (change_time == 1) {
                if (time_count <= 500) {
                    Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 4);
                } else {
                    Write7219ALL(T_hour / 10, T_hour % 10, 0x0f, 0x0f, T_sec / 10, T_sec % 10, 0x0f, 4);
                }
            } else if (change_time == 2) {
                if (time_count <= 500) {
                    Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, T_sec / 10, T_sec % 10, 0x0f, 4);
                } else {
                    Write7219ALL(T_hour / 10, T_hour % 10, T_min / 10, T_min % 10, 0x0f, 0x0f, 0x0f, 4);
                }
            }
        } else if (mode == 5) {
            Write7219(8, ms1 / 10000);
            Write7219(7, ms1 / 1000 % 10);
            Write7219(6, ms1 / 100 % 10);
            Write7219(5, ms1 / 10 % 10);
            Write7219(4, ms1 % 10);
            Write7219(3, 0x0f);
            Write7219(2, 0x0f);
            Write7219(1, 5);
        }

        toff = 30000 - ton;
        prebtn0 = INT0;
        prebtn1 = INT1;
        prebtn2 = P2_0;
        prebtn3 = P2_1;
        delay_ms(20);
        // P1 = prebtn0 + prebtn1 * 2 + prebtn2 * 4 + prebtn3 * 8 + 0xf0;
    }
}