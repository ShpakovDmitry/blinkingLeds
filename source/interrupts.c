#include <stdint.h>
#include <stdbool.h>
#include <avr/interrupt.h>
#include "interrupts.h"
#include "globals.h"

volatile uint32_t jiffy;
extern FlagsUART flagsUART;

ISR (TIMER0_COMPA_vect) {
	jiffy++;
}

ISR (USART_RX_vect) {
	flagsUART.dataReceived = true;
}
ISR (USART_TX_vect) {
	flagsUART.dataTransmitted = true;
}
