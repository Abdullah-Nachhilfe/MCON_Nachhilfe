#include <xc.h>
#include <pic18f25k22.h>


void UATR_R_Init(){
    // Set Baudrate
    TX1STAbits.BRGH = 1; // High Baudrate
    BAUD1CONbits.BRG16 = 0; // 8-bit Baud Rate Generator is used
    SPBRG1 = 25; // Baudrate = 9600 @ 4MHz. Using the Tabel in Page 274 in Datasheet.
    // Configure TX1 and TX2 Pins
    TRISC6 = 1; // TX1
    TRISC7 = 1; // RX1
    // Enable Asynch Serial Port
    SYNC1 = 0; // ASYNCHRONOUS MODE
    SPEN1 = 1; //  Serial port enabled
    // Enable Reception
    CREN1 = 1; // Enables receiver

    // Enable Interrupts for Reading the Received Data
    RC1IE = 1;
    RC1IF = 0;
    GIE = 1;
    PEIE = 1;
    // Read The Received 8-bit Data from the RCREG1 (in the ISR)
}
