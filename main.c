#include <regx51.h>
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
unsigned char T_hour = 0, T_min = 0, T_sec = 0;
unsigned char PWM_state = 0;
unsigned char Action = 0; // 1: open, 2: close

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
        for (j = 0; j < 50; j++);
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

void timer0_isr(void) interrupt TF0_VECTOR using 1 //使用計時器中斷副程式產生PWM
{
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
        P1 = 0x0f;
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
        P1 = 0xf0;
    }
}

void time_count_add(void) interrupt 3
{   // 10ms
    TH1 = (65536 - 10000) / 256;
    TL1 = (65536 - 10000) % 256; 
    time_count++;
    if (time_count == 100) {
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

// 1: open, 2: close
void server_action(int act) {
    Action = act;
    ton = 2100; //2.2ms 左轉
    delay_ms(1000);
    ton = 1500;
}

void main(void) {
    char prebtn0 = 0, prebtn1 = 0, prebtn2 = 0, prebtn3 = 0;
    char mode2_change_place = 0;
    char open_close_time[6] = {0, 0, 0, 0, 0, 0}; //open: Hour, Minute, Second. close: Hour, Minute, Second.
    char mode = 1;
    INT0 = 1; INT1 = 1; P2_0 = 1; P2_1 = 1;
    P1 = 0x0f;
    ton = 1500;
    toff = 30000 - 1500;
    SSD_Initial();
    time_initial();//呼叫計時器初始化副程式
    //主程式中可直接改變ton或toff即可改變高電位跟低電位佔的比例
    while (1) {
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
                    
                }
            }
        }


        if (mode == 1) { // 一般模式
            Write7219(8, Action);
            Write7219(7, 0x0f);
            Write7219(6, 0x0f);
            Write7219(5, 0x0f);
            Write7219(4, 0x0f);
            Write7219(3, 0x0f);
            Write7219(2, 0x0f);
            Write7219(1, 1);
        } else if (mode == 2) { // 設定自動時間模式
            if (mode2_change_place < 3) {
                if (mode2_change_place == 0) {
                    if (time_count >= 50) {
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
                    if (time_count >= 50) {
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
                    if (time_count >= 50) {
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
                    if (time_count >= 50) {
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
                    if (time_count >= 50) {
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
                    if (time_count >= 50) {
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
        } else if (mode == 3) {
            Write7219(8, T_hour / 10);
            Write7219(7, T_hour % 10);
            Write7219(6, T_min / 10);
            Write7219(5, T_min % 10);
            Write7219(4, T_sec / 10);
            Write7219(3, T_sec % 10);
            Write7219(2, 0x0f);
            Write7219(1, 3);
        }

        // if (P2_0 == 0) {
        //     ton = 1200; //0.9ms 右轉  千萬別以為就3個角度0.5~2.2之間都可調角度
        //     P1 = 0x03;
        // }

        // if (P2_1 == 0) {
        //     ton = 900; //0.9ms 右轉  千萬別以為就3個角度0.5~2.2之間都可調角度
        //     P1 = 0x04;
        // }

        toff = 30000 - ton;
        prebtn0 = INT0;
        prebtn1 = INT1;
        prebtn2 = P2_0;
        prebtn3 = P2_1;
        delay_ms(20);
        // P1 = prebtn0 + prebtn1 * 2 + prebtn2 * 4 + prebtn3 * 8 + 0xf0;
    }
}