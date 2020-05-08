#include <stdlib.h>
#include "globals.h"
#include "circularBuffer.h"
#include "uart.h"

static uint8_t* bufferRX; 
static uint8_t* bufferTX; 
CircularBufferHandle cbufRX;
CircularBufferHandle cbufTX;

void initBuffUART() {
	bufferRX = malloc(UART_RX_BUFF_SIZE * sizeof(uint8_t));
	bufferTX = malloc(UART_RX_BUFF_SIZE * sizeof(uint8_t));
	cbufRX = initCircularBuff(bufferRX, UART_RX_BUFF_SIZE);
	cbufTX = initCircularBuff(bufferTX, UART_TX_BUFF_SIZE);
}
