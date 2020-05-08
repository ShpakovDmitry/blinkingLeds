#ifndef HARDWARE_H
#define HARDWARE_H

#include <avr/io.h>

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
#define OE_N_MASK	(1 << EO_N)

void initIO();
void initUART();
void initJiffy();

#endif // HARDWARE_H
