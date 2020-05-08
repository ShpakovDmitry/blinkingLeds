#include "init.h"
#include "misc.h"


void main() {
	initController();
	initSoftware();

	while (1) {
		updateButtonState();
	}
}
