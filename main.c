#include <regx51.h>

unsigned int dutytime = 45536; //65536-45536就是責任週期
unsigned int ton = 10000; //高電位比例=50%
unsigned int toff = 10000; //低電位比例=50%
unsigned int temp; //給計時器工作用

void timer0_initialize(void) //初始化計時器0

{

    EA = 0; //關閉中斷功能(所有中斷副程式失效)
    IE |= 0x02; //開啟計時器中斷功能
    TMOD |= 0x01; //設定計時器模式
    temp = 65536 - dutytime; //設定中斷一次的時間(預設是dutytime)
    TH0 = temp / 256; //填入高八位
    TL0 = temp % 256; //填入低八位
    TR0 = 1; //啟動計時器
    EA = 1; //開啟中斷功能(中斷副程式可以執行)
}

void timer0_isr(void) interrupt TF0_VECTOR using 1 //使用計時器中斷副程式產生PWM
{
    if (P3_0 == 1) {
        TR0 = 0;
        temp = 65536 - toff;
        TH0 = temp / 256;
        TL0 = temp % 256;
        TR0 = 1;
        P3_0 = 0;
    }
    else {
        TR0 = 0;
        temp = 65536 - ton;
        TH0 = temp / 256;
        TL0 = temp % 256;
        TR0 = 1;
        P3_0 = 1;
    }
}

void main(void) {

    timer0_initialize(); //呼叫計時器初始化副程式

    //主程式中可直接改變ton或toff即可改變高電位跟低電位佔的比例

    while (1) {

        if (INT0 == 0) {
            ton = 2200; //2.2ms 左轉
            P1 = 0x01;
        }

        if (INT1 == 0) {
            ton = 1500; //1.5ms 中間
            P1 = 0x02;
        }

        if (P2_0 == 0) {
            ton = 1200; //0.9ms 右轉  千萬別以為就3個角度0.5~2.2之間都可調角度
            P1 = 0x03;
        }

        if (P2_1 == 0) {
            ton = 900; //0.9ms 右轉  千萬別以為就3個角度0.5~2.2之間都可調角度
            P1 = 0x04;
        }

        toff = 20000 - ton;
    }
}