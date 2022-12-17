#include <xc.h>
#include <pic18f25k22.h>

/**
 * @brief Initiates UART in Transmitter Mode (Master)
 *
 */
void UATR_T_Init()
{
    // Set Baudrate
    TX1STAbits.BRGH1 = 1;    // High Baudrate
    BAUD1CONbits.BRG16 = 0; // 8-bit Baud Rate Generator is used
    SPBRG1 = 25;            // Baudrate = 9600 @ 4MHz. Using the Tabel in Page 274 in Datasheet.
    // Configure TX1 and TX2 Pins
    TRISC6 = 1; // TX1
    TRISC7 = 1; // RX1
    // Enable Asynch Serial Port
    SYNC1 = 0; // ASYNCHRONOUS MODE
    SPEN1 = 1; //  Serial port enabled
    // Enable Transmission
    TXEN1 = 1; // This sets An Interrupt Flag. Use it if needed
}

/**
 * @brief Loads the Desired 8-Bit Data to the TXREG1. This Action starts Transmission
 *
 * @param Data 8-Bit Data to be Transmitted via UART
 */
void UART_Send_Data(unsigned char Data)
{

    while (!TRMT1)
        ;
    TXREG1 = Data;
}