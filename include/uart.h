#ifndef UART_H
#define UART_H

#include <stdbool.h>

typedef struct {
	bool dataReceived;
	bool dataTransmitted;
	bool buffOvfRX;
	bool buffOvfTX;
}FlagsUART;

void initBuffUART();
void handleUART();
void dropDataRX(void);
void dropDataTX(void);
void putUART(uint8_t data);
void getUART(uint8_t* data);
void handleCommand();

#endif	// UART_H
