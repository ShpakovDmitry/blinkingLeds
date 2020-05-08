#include <util/atomic.h>
#include <stdint.h>
#include "globals.h"
#include "misc.h"

uint32_t getJiffies() {
	uint32_t tmp;

	ATOMIC_BLOCK (ATOMIC_RESTORESTATE) {
		tmp = jiffy;
	}
	return tmp;
}
