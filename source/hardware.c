#include "hardware.h"


void initIO() {
	DDRD  &= ~( BUTTON_MASK );
	PORTD |= BUTTON_MASK;	// enable internal pull-up.

	DDRB  |= SRCLK_MASK | SER_MASK | SRCLR_N_MASK | RCLK_MASK | OE_N_MASK;
	PORTB |= OE_N_MASK | SRCLR_N_MASK;
	PORTB &= ~( SRCLK_MASK | SER_MASK | SRCLR_N_MASK | RCLK_MASK | OE_N_MASK );
}

void initUART();

void initJiffy();

