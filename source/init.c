#include "init.h"
#include "hardware.h"
#include "uart.h"
#include "shiftRegister.h"

void initController() {
	initIO();
	initUART();
	initJiffy();
	enableInterrupts();
}

void initSoftware() {
	initBuffUART();
	initShiftRegister();
}
