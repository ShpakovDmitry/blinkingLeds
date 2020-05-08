#include <stdint.h>
#include <avr/interrupt.h>
#include "interrupts.h"

volatile uint32_t jiffy;

ISR (TIMER0_COMPA_vect) {
	jiffy++;
}

ISR (USART_RX_vect) {
	
}
ISR (USART_TX_vect) {

}
