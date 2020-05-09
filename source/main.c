#include "init.h"
#include "misc.h"
#include "leds.h"
#include "uart.h"


void main() {
	initController();
	initSoftware();

	while (1) {
		updateButtonState();
		updateLeds();
		handleUART();
	}
}
