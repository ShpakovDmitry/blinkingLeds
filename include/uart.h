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

#endif	// UART_H
