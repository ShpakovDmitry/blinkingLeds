#include "gloabals.h"
#include "hardware.h"


void initIO() {
	DDRD  &= ~( BUTTON_MASK );
	PORTD |= BUTTON_MASK;	// enable internal pull-up.

	DDRB  |= SRCLK_MASK | SER_MASK | SRCLR_N_MASK | RCLK_MASK | OE_N_MASK;
	PORTB |= OE_N_MASK | SRCLR_N_MASK;
	PORTB &= ~( SRCLK_MASK | SER_MASK | SRCLR_N_MASK | RCLK_MASK | OE_N_MASK );
}

void initUART() {

	UCSRB |= (1 << RX);
	#if UART_PARITY == NO
		UCSRC &= ~( (1 << UPM1) | (1 << UPM0));
	#elif UART_PARITY == ODD
		UCSRC |= (1 << UPM1) | (1 << UPM0);
	#elif UART_PARITY == EVEN
		UCSRC |= (1 << UPM1);
		UCSRC &= ~(1 << UPM0);
	#else
		#error UART parity not specified or is incorrect
	#endif

	#if UART_BITS != 8
		#error UART 8bit character size only supported
	#else
		UCSRC |= (1 << UCSZ1) | (1 << UCSZ0);
		UCSRC &= ~(1 << UCSZ2);
	#endif

	



}

void initJiffy();

