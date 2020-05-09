#ifndef GLOBALS_H
#define GLOBALS_H

#include <stdint.h>
#include <stdbool.h>

enum PARITY { NO, ODD, EVEN};
#define UART_BAUD_RATE 57600
#define UART_BITS 8	// only 8-bit character size supported at the moment
#define UART_PARITY NO
#define UART_STOP_BITS 1
#define UART_RX_BUFF_SIZE 10
#define UART_TX_BUFF_SIZE 10

#define DEBOUNCE_TIME 100

#define LED_COUNT 16

extern bool lightRunningDirection;
extern volatile uint32_t jiffy;
extern uint32_t ledsSpeed;

#endif	// GLOBALS_H
