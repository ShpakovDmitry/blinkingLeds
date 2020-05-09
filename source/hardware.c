#include <avr/interrupt.h>
#include <stdbool.h>
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
	// enable UART RX, TX, and interrupts on RX, TX complete
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

void initJiffy() {
	// init TIMER0 in CTC mode, to generate 1ms frequency
	// interrupt, assuming that F_CPU = 16 MHz
	TCCR0A &= ~(1 << WGM00);
	TCCR0A |=  (1 << WGM01);
	TCCR0B &= ~(1 << WGM02);

	#if F_CPU != 16000000UL
		#warning system clock is not 16MHz. Jiffies != 1ms
	#endif

	#if ( (F_CPU / 1000) / 64 ) > 0x00ff
		#define PRESCALER_MASK ( (1 << CS02) | (0 << CS01) | (0 << CS00) )
		#define OCRA_VALUE ( (F_CPU / 1000) / 128 )
	#else
		#define PRESCALER_MASK ( (0 << CS02) | (1 << CS01) | (1 << CS00) )
		#define OCRA_VALUE ( (F_CPU / 1000) / 64 )
	#endif

	// F_CPU prescaler
	TCCR0B |= PRESCALER_MASK;
	//
	OCR0A = OCRA_VALUE;
	// enable output compare A match interrupt
	TIMSK |= (1 << OCIE0A);
	// start counting ms at this point;
	// actually when glob interrupt flag is set
	jiffy = 0;   
}


void enableInterrupts() {
	sei();
}

void disableInterrupts() {
	cli();
}

bool pressedButton() {
	if (PIND & BUTTON_MASK) {
		return true;
	}
	else {
		return false;
	}
}

uint8_t getRxRegUART() {
	return UDR;
}
void setTxRegUART(uint8_t data) {
	UDR = data;
}
