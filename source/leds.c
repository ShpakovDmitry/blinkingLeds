#include <stdbool.h>
#include <avr/eeprom.h>
#include <stdint.h>
#include "globals.h"
#include "leds.h"
#include "shiftRegister.h"
#include "misc.h"

uint32_t* ledsSpeedEEPROM = 0x00000000;

bool lightRunningDirection;
uint32_t ledsSpeed;
uint16_t ledsState;

void initLeds() {
	uint32_t tmp;
	ledsState = 0x0001;
	sendShiftRegister(ledsState);
	eeprom_busy_wait();
	tmp = eeprom_read_dword(ledsSpeedEEPROM);
	ledsSpeed = tmp;
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
