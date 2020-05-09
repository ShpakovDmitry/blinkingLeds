#ifndef MISC_H
#define MISC_H

#include <stdint.h>

uint32_t getJiffies();
void updateButtonState();
void waitJiffies(uint32_t val);


#endif	// MISC_H
