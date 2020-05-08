#include "globals.h"
#include "hardware.h"


void initIO() {
	DDRD  &= ~( BUTTON_MASK );
	PORTD |= BUTTON_MASK;	// enable internal pull-up.

	DDRB  |= SRCLK_MASK | SER_MASK | SRCLR_N_MASK | RCLK_MASK | OE_N_MASK;
	PORTB |= OE_N_MASK | SRCLR_N_MASK;
	PORTB &= ~( SRCLK_MASK | SER_MASK | SRCLR_N_MASK | RCLK_MASK | OE_N_MASK );
}

void initUART() {
	UCSRB |= (1 << RXEN) | (1 << TXEN) | (1 << RXCIE) | (1 << TXCIE);
	#if UART_PARITY == NO
		UCSRC &= ~( (1 << UPM1) | (1 << UPM0));
	#elif UART_PARITY == ODD
		UCSRC |= (1 << UPM1) | (1 << UPM0);
	#elif UART_PARITY == EVEN
		UCSRC |= (1 << UPM1);
		UCSRC &= ~(1 << UPM0);
	#else
		#error "UART parity not specified or is incorrect"
	#endif

	#if UART_BITS != 8
		#error "UART 8bit character size only supported"
	#else
		UCSRC |= (1 << UCSZ1) | (1 << UCSZ0);
		UCSRC &= ~(1 << UCSZ2);
	#endif

	#if UART_BAUD_RATE > UART_BAUD_RATE_MAX
		#error "UART baud rate too high"
	#elif UART_BAUD_RATE <= 0
		#error "UART baud rate wrong"
	#else
		UBRRH = ( ((F_CPU/16/UART_BAUD_RATE - 1) & 0xff00) >> 8);
		UBRRL = ( ((F_CPU/16/UART_BAUD_RATE - 1) & 0x00ff) >> 0);
	#endif
}

void initJiffy();

