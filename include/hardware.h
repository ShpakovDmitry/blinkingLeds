#ifndef HARDWARE_H
#define HARDWARE_H

#include <avr/io.h>
#include <stdbool.h>

#define UART_TX PD0	// 
#define UART_RX PD1	// 
#define BUTTON	PD2	// input;
#define SRCLK	PB7	// output;
#define SER	PB6	// output;
#define SRCLR_N	PB5	// output;
#define RCLK	PB4	// output;
#define OE_N	PB3	// output;

#define BUTTON_MASK	(1 << BUTTON)
#define SRCLK_MASK	(1 << SRCLK)
#define SER_MASK	(1 << SER)
#define SRCLR_N_MASK	(1 << SRCLR_N)
#define RCLK_MASK	(1 << RCLK)
#define OE_N_MASK	(1 << OE_N)

#define UART_BAUD_RATE_MAX (F_CPU/16)

void initIO();
void initUART();
void initJiffy();
void enableInterrupts();
void disableInterrupts();
bool pressedButton();
uint8_t getRxRegUART();
void setTxRegUART(uint8_t data);

#define SET_RCLK_LOW		( PORTB &= ~(RCLK_MASK) )
#define SET_RCLK_HIGH		( PORTB |=  (RCLK_MASK) )

#define SET_SRCLK_LOW		( PORTB &= ~(SRCLK_MASK) )
#define SET_SRCLK_HIGH		( PORTB |=  (SRCLK_MASK) )

#define SET_SER_LOW		( PORTB &= ~(SER_MASK) )
#define SET_SER_HIGH		( PORTB |=  (SER_MASK) )

#define SET_SRCLR_N_LOW		( PORTB &= ~(SRCLR_N_MASK) )
#define SET_SRCLR_N_HIGH	( PORTB |=  (SRCLR_N_MASK) )

#define SET_OE_N_LOW		( PORTB &= ~(OE_N_MASK) )
#define SET_OE_N_HIGH		( PORTB |=  (OE_N_MASK) )

#endif // HARDWARE_H
