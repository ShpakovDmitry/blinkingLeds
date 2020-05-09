#include <stdlib.h>
#include "globals.h"
#include "circularBuffer.h"
#include "uart.h"
#include "hardware.h"

static uint8_t* bufferRX; 
static uint8_t* bufferTX; 
CircularBufferHandle cbufRX;
CircularBufferHandle cbufTX;

FlagsUART flagsUART;

void initBuffUART() {
	bufferRX = malloc(UART_RX_BUFF_SIZE * sizeof(uint8_t));
	bufferTX = malloc(UART_RX_BUFF_SIZE * sizeof(uint8_t));
	cbufRX = initCircularBuff(bufferRX, UART_RX_BUFF_SIZE);
	cbufTX = initCircularBuff(bufferTX, UART_TX_BUFF_SIZE);
}

void handleUART() {
	uint8_t data;
	if (flagsUART.dataReceived == true) {
		flagsUART.dataReceived = false;
		if ( put2CircularBuff(cbufRX, data) == 0) {
			data = getRxRegUART();
			flagsUART.buffOvfRX = false;
		}
		else {
			dropDataRX();
		}
	}
	
	if (flagsUART.dataTransmitted == true) {
		flagsUART.dataTransmitted = false;
		if ( getCircularBuff(cbufTX, &data) == 0 ) {
			setTxRegUART(data);
			flagsUART.buffOvfTX = false;
		}
		else {
			dropDataTX();
		}
	}
	handleCommand();
}

void dropDataRX(void) {
	flagsUART.buffOvfRX = true;
}

void dropDataTX(void) {
	flagsUART.buffOvfTX = true;
}

void putUART(uint8_t data) {
	if ( put2CircularBuff(cbufTX, data) == 0 ) {
		flagsUART.buffOvfTX = false;
	}
	else {
		dropDataTX();
	}
}

void getUART(uint8_t* data) {
	if ( getCircularBuff(cbufRX, data) == 0 ) {
		flagsUART.buffOvfRX = false;
	}
	else {
		dropDataRX();
	}
}

void handleCommand() {
	if (sizeCircularBuff(cbufRX) == 4) {
		uint8_t tmp;
		getCircularBuff(cbufRX, &tmp);
		ledsSpeed |= ( (uint32_t)tmp << 24);
		getCircularBuff(cbufRX, &tmp);
		ledsSpeed |= ( (uint32_t)tmp << 16);
		getCircularBuff(cbufRX, &tmp);
		ledsSpeed |= ( (uint32_t)tmp <<  8);
		getCircularBuff(cbufRX, &tmp);
		ledsSpeed |= ( (uint32_t)tmp <<  0);
	}
}
