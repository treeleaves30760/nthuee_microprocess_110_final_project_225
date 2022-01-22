#include<8051.h>

void ser_int();
unsigned char rx();
void tx(unsigned char a);


void main()
{
    char get;
    ser_int();
    while(1) {
            get=rx();
            tx('R');
            if(get == 'F') {
                    /*Forward*/
                    P0 = 0x01;
            } else if (get == 'R') {
                    /*Reverse*/
                    P0 = 0x02;
                    
            } else if (get == 'W') {
                    /*Right*/
                    P0 = 0x03;
                    
            } else if (get == 'L') {
                    /*Left*/
                    P0 = 0x04;
                    
            } else if (get == 'S') {
                    /*Off*/
                    P0 = 0x00;
            }
    }
}

void ser_int()
{
    SCON=0x50;
    TMOD=0x20;
    TH1=TL1=0xFD;
    TR1=1;
}

unsigned char rx()
{
    while(RI==0);
    RI=0;
    return SBUF;
}

void tx(unsigned char a)
{
    SBUF=a;
    while(TI==0);
    TI=0;
}