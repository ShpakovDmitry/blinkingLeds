#include "init.h"
#include "hardware.h"

void initController() {
	initIO();
	initUART();
	initJiffy();
	enableInterrupts();
}

