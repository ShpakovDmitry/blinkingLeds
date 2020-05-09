#include <stdbool.h>
#include "globals.h"
#include "leds.h"
#include "shiftRegister.h"
#include "misc.h"

bool lightRunningDirection;
uint32_t ledsSpeed = 1000;
uint16_t ledsState;

void initLeds() {
	ledsState = 0x0001;
	sendShiftRegister(ledsState);
}

void updateLeds() {
	static uint32_t lastJiffies;

	if (getJiffies() - lastJiffies > ledsSpeed) {
		lastJiffies = getJiffies();
		if (lightRunningDirection) {
			ledsState <<= 1;
			if (ledsState == 0) {
				ledsState = 0x0001;
			}
		}
		else {
			ledsState >>= 1;
			if (ledsState == 0) {
				ledsState = 0x8000;
			}
		}
		sendShiftRegister(ledsState);
	}
}
