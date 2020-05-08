#include <util/atomic.h>
#include <stdint.h>
#include <stdbool.h>
#include "globals.h"
#include "misc.h"
#include "hardware.h"

uint32_t getJiffies() {
	uint32_t tmp;

	ATOMIC_BLOCK (ATOMIC_RESTORESTATE) {
		tmp = jiffy;
	}
	return tmp;
}

void updateButtonState(void) {
	static uint32_t lastJiffies = 0;
	
	if (lastJiffies != getJiffies()) {
		static bool currButtonState = false;
		static bool lastButtonState = false;
		static uint32_t lastDebounceTime = 0;
		
		lastJiffies = getJiffies();
		bool cachedButton = pressedButton();
		
		if (cachedButton != lastButtonState) {
			lastDebounceTime = getJiffies();
		}
		
		uint32_t deltaTime = getJiffies() - lastDebounceTime;
		
		if ( deltaTime > DEBOUNCE_TIME ) {
			if (cachedButton != currButtonState) {
				currButtonState = cachedButton;
				if ( currButtonState == false ) {
					lightRunningDirection = !lightRunningDirection;
				}
			}
		}
		lastButtonState = cachedButton;
	}
}

