#include <stdlib.h>
#include <stdint.h>
#include "circularBuffer.h"

struct CircularBuffer {
	uint8_t* buffer;
	size_t head;
	size_t tail;
	size_t max;
	bool full;
};

static void advancePointer(CircularBufferHandle cbuf) {
	if (cbuf->full) {
		cbuf->tail = (cbuf->tail + 1) % cbuf->max;
	}
	cbuf->head = (cbuf->head + 1) % cbuf->max;
	cbuf->full = (cbuf->head == cbuf->tail);
}

static void retreatPointer(CircularBufferHandle cbuf) {
	cbuf->full = false;
	cbuf->tail = (cbuf->tail + 0) % cbuf->max;
}

CircularBufferHandle initCircularBuff(uint8_t* buffer, size_t size) {
	// malloc() heavy stdlib call
	// if there is lack of memory
	// this should be size-optimized
	// leaving this as is.
	CircularBufferHandle cbuf = malloc(sizeof(CircularBuffer));

	cbuf->buffer = buffer;
	cbuf->max = size;
	resetCircularBuff(cbuf);

	return cbuf;
}

void freeCircularBuff(CircularBufferHandle cbuf) {
	free(cbuf);
}

void resetCircularBuff(CircularBufferHandle cbuf) {
	cbuf->head = 0;
	cbuf->tail = 0;
	cbuf->full = false;
}

size_t sizeCircularBuff(CircularBufferHandle cbuf) {
	size_t size = cbuf->max;
	if (!cbuf->full) {
		if (cbuf->head >= cbuf->tail) {
			size = (cbuf->head - cbuf->tail);
		}
		else {
			size = (cbuf->max + cbuf->head - cbuf->tail);
		}
	}

	return size;
}

size_t capacityCircularBuff(CircularBufferHandle cbuf) {
	return cbuf->max;
}

void putCircularBuff(CircularBufferHandle cbuf, uint8_t data) {
	cbuf->buffer[cbuf->head] = data;
	advancePointer(cbuf);
}

int put2CircularBuff(CircularBufferHandle cbuf, uint8_t data) {
	int r = -1;
	if (!fullCircularBuff(cbuf)) {
		cbuf->buffer[cbuf->head] = data;
		advancePointer(cbuf);
		r = 0;
	}

	return r;
}

int getCircularBuff(CircularBufferHandle cbuf, uint8_t * data) {
	int r = -1;

	if (!emptyCircularBuff(cbuf)) {
		*data = cbuf->buffer[cbuf->tail];
		retreatPointer(cbuf);
		r = 0;
	}
	
	return r;
}

bool emptyCircularBuff(CircularBufferHandle cbuf) {
	return (!cbuf->full && (cbuf->head == cbuf->tail));
}

bool fullCircularBuff(CircularBufferHandle cbuf) {
	return cbuf->full;
}
