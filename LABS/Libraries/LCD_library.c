//##############################################################################
//    filename:        LCD_lib_busy.c
//##############################################################################
//    LCD library for HD44780, HD47780, ST7036 ...
//##############################################################################
//
//      Author:            	V.SchK
//      Company:        	HS-Ulm
//
//      Revision:        	2.0 (xc8 compatible)
// 	Date:                   November 2014
//     	Assembled using		C18 3.41+ / XC8
//
//   	todo	- add comments ;-)
//             	-
//
//##############################################################################
//http://sprut.de/electronic/lcd/index.htm#befehle


#include "LCD_library.h"


union LCDv8bit LCD_data;         // bitfield variable (bitwise acess)
unsigned short LCD_busy_cnt;


// -------------------- LCD-functions ------------------------------------------

void LCD_Init (void)
{

    // FRAGE: Ausgänge erst setzen, dann auf Ausgang schalten, warum in dieser Reihenfolge?
    LCD_RW = 0; LCD_RW_DIR = 0;
    LCD_RS = 0; LCD_RS_DIR = 0;
    LCD_E  = 0; LCD_E_DIR  = 0;

    // INFO: Beobachten Sie die gesendeten Werte über die LEDs
    LCD_D4_OUT = 0; LCD_D4_DIR = 0;     // LED1
    LCD_D5_OUT = 0; LCD_D5_DIR = 0;     // LED2
    LCD_D6_OUT = 0; LCD_D6_DIR = 0;     // LED3
    LCD_D7_OUT = 0; LCD_D7_DIR = 0;     // LED4

    LCD_DELAY_5MS();LCD_DELAY_5MS();LCD_DELAY_5MS();    // wait for 15ms
    // display reset procedure
    LCD_Write_Nibble(LCD_RESET);    LCD_DELAY_5MS();
    LCD_Write_Nibble(LCD_RESET);    LCD_DELAY_5MS();
    LCD_Write_Nibble(LCD_RESET);    LCD_DELAY_5MS();
    // set 4-bit mode always !!!
    LCD_Write_Nibble(FOUR_BIT);
    while (LCD_Busy()) {;} // wait


    LCD_Command(FOUR_BIT_TWO_LINE);
    LCD_Command(DISPLAY_CTRL + DISPLAY_ON);// + BLINK_ON);      // Nehmen Sie später BLINK_ON mit dazu und beobachten Sie den Effekt
    LCD_Command(ENTRY_MODE + CURSOR_INC + DSHIFT_OFF);
    LCD_Clear();
    LCD_Home();

    // FRAGE: Welcher Wert wird der Funktion LCD_Command(RETURN_HOME); übergeben?
    // INFO: Merken Sie sich den Befehl LCD_Command(CLEAR_DISPLAY);, Sie könnten ihn evtl. noch gebrauchen

}
// --------------------------------------------------------------

//****************************************************************************
//     _    ______________________________
// RS  _>--<______________________________
//     _____
// RW       \_____________________________
//                  __________________
// E   ____________/                  \___
//     _____________                ______
// DB  _____________>--------------<______

void LCD_Write_Nibble(unsigned char value)
{
    LCD_data.all = value;
    LCD_RS = LCD_CMD;
    LCD_RW = LCD_WR;

    LCD_D4_OUT = LCD_data.bit4;
    LCD_D5_OUT = LCD_data.bit5;
    LCD_D6_OUT = LCD_data.bit6;
    LCD_D7_OUT = LCD_data.bit7;

    LCD_STROBE();
}
// --------------------------------------------------------------

void LCD_Write(unsigned char value) // command or data
{
    LCD_data.all = value;
    LCD_RW = LCD_WR;

    LCD_D7_OUT = LCD_data.bit7;
    LCD_D6_OUT = LCD_data.bit6;
    LCD_D5_OUT = LCD_data.bit5;
    LCD_D4_OUT = LCD_data.bit4;
    LCD_STROBE();

    LCD_D7_OUT = LCD_data.bit3;
    LCD_D6_OUT = LCD_data.bit2;
    LCD_D5_OUT = LCD_data.bit1;
    LCD_D4_OUT = LCD_data.bit0;
    LCD_STROBE();
}
// --------------------------------------------------------------

void LCD_ValueOut_00(unsigned char row, unsigned char col, short value,
                     unsigned char min_dig)
{
    char chBuffer, leading_0;

    LCD_Command(CURSOR_ADDR + (LINE_OFFSET * row) + col);
    leading_0 = 1;

    if (value < 0){
        chBuffer = '-';
        LCD_CharOut(chBuffer);
        value = -value;
    }
    else if(!leading_0 &&(min_dig == 1)){
        chBuffer = ' ';
        LCD_CharOut(chBuffer);
    }
    chBuffer = value / 10000;
    if(leading_0){
        if((chBuffer != 0)||(min_dig == 5)) leading_0 = 0;
    }
    if(!leading_0){
        LCD_CharOut(chBuffer +0x30);
    }
    value = value - (10000 * chBuffer);
    chBuffer = value / 1000;
    if(leading_0){
        if((chBuffer != 0)||(min_dig == 4)) leading_0 = 0;
    }
    if(!leading_0){
        LCD_CharOut(chBuffer +0x30);
    }
    value = value - (1000 * chBuffer);
    chBuffer = value / 100;
    if(leading_0){
        if((chBuffer != 0)||(min_dig == 3)) leading_0 = 0;
    }
    if(!leading_0){
        LCD_CharOut(chBuffer +0x30);
    }
    value = value - ((short)100 * chBuffer);
    chBuffer = value  / 10;
    if(leading_0){
        if((chBuffer != 0)||(min_dig == 2)) leading_0 = 0;
    }
    if(!leading_0){
        LCD_CharOut(chBuffer +0x30);
    }
    value = value - ((short)10 * chBuffer);
    chBuffer = value;
    LCD_CharOut(chBuffer +0x30);
}
// --------------------------------------------------------------

void LCD_ConstTextOut(unsigned char row, unsigned char col, const char *text)
{
    LCD_Command(CURSOR_ADDR + (LINE_OFFSET *  row) +  col);
    while (*text) {
        LCD_CharOut(*text);
        text++;
    }
}
// --------------------------------------------------------------

void LCD_TextOut(unsigned char row, unsigned char col, unsigned char *text)
{
    LCD_Command(CURSOR_ADDR + (LINE_OFFSET * row) +  col);
    while (*text) {
        LCD_CharOut(*text);
        text++;
    }
}
// --------------------------------------------------------------

unsigned char LCD_Busy(void)
{

    LCD_RW = LCD_RD;
    LCD_RS = LCD_CMD;
    LCD_D4_DIR = 1; LCD_D5_DIR = 1; LCD_D6_DIR = 1; LCD_D7_DIR = 1;

    LCD_ENABLE(); LCD_DELAY_1US();
    LCD_data.bit7 = LCD_D7_IN;
    LCD_DISABLE();

    LCD_D4_DIR = 0; LCD_D5_DIR = 0; LCD_D6_DIR = 0; LCD_D7_DIR = 0;
    LCD_RW = LCD_WR;

    if (LCD_data.bit7 == LCD_BUSY) {
        return 1;
    } else {
        return 0;
    }
}
// -------------------- END LCD-functions ---------------------------
