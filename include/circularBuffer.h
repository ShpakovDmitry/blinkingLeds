#ifndef CIRCULAR_BUFFER_H
#define CIRCULAR_BUFFER_H

#include <stdbool.h>
#include <stdint.h>

typedef struct CircularBuffer CircularBuffer;
typedef CircularBuffer* CircularBufferHandle;

CircularBufferHandle initCircularBuff(uint8_t* buffer, size_t size);
void freeCircularBuff(CircularBufferHandle cbuf);
void resetCircularBuff(CircularBufferHandle cbuf);
void putCircularBuff(CircularBufferHandle cbuf, uint8_t data);
int put2CircularBuff(CircularBufferHandle cbuf, uint8_t data);
int getCircularBuff(CircularBufferHandle cbuf, uint8_t* data);
bool emptyCircularBuff(CircularBufferHandle cbuf);
bool fullCircularBuff(CircularBufferHandle cbuf);
size_t capacityCircularBuff(CircularBufferHandle cbuf);
size_t sizeCircularBuff(CircularBufferHandle cbuf);

#endif //CIRCULAR_BUFFER_H
