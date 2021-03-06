#include "shiftRegister.h"
#include "hardware.h"
#include "misc.h"

#define SHIFT_WAIT 10

void initShiftRegister() {
	SET_SRCLR_N_LOW;
	waitJiffies(SHIFT_WAIT);
	SET_SRCLR_N_HIGH;
	SET_OE_N_HIGH;
}

void sendShiftRegister(uint16_t data) {
	int8_t i = 16;
	
	SET_RCLK_LOW;

	do {
		SET_SRCLK_LOW;
		if (data & 0x8000) {
			SET_SER_HIGH;
		}
		else {
			SET_SER_LOW;
		}
		data <<= 1;
		waitJiffies(1);
		SET_SRCLK_HIGH;
		waitJiffies(SHIFT_WAIT);
	} while (--i);

	SET_RCLK_HIGH;
	waitJiffies(SHIFT_WAIT);
}
