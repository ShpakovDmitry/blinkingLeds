#ifndef GLOBALS_H
#define GLOBALS_H

#include <stdint.h>

enum PARITY { NO, ODD, EVEN};
#define UART_BAUD_RATE 57600
#define UART_BITS 8	// only 8-bit character size supported at the moment
#define UART_PARITY NO
#define UART_STOP_BITS 1
#define UART_RX_BUFF_SIZE 10
#define UART_TX_BUFF_SIZE 10

extern volatile uint32_t jiffy;

#endif	// GLOBALS_H
