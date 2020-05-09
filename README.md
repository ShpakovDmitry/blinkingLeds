### Description
Program that runs on Atmel AVR architecture [ATtiny2313](https://www.microchip.com/wwwproducts/en/ATTINY2313) microcontroller.
Makes running light on 18 leds.
Light running direction is changed by button press.
For debug UART is used.
Also UART is used for running light speed adjustion.

### Cloning the project
To clone the project to your local directory, run the following command:
```bash
git clone https://github.com/ShpakovDmitry/blinkingLeds
```

### Tools used
To succesfully build the project following tools are required:
`gcc-avr, binutils-avr, avr-libc, make`
To flash the firmware `avrdude` is used.
To get the tools run the following commands in Debian Linux:
```bash
sudo apt-get update
sudo apt-get install gcc-avr binutils-avr avr-libc make avrdude
```
Tested on **Debian GNU/Linux 10 (buster)**

### Project building
To build project run the following command:
```bash
make
```

### Firmware size
To check whether firmware fits to controller flash memory and there is
not SRAM over usage, run the following command:
```bash
make
avr-size ./build/blinkingLeds.o --mcu=attiny2313 --format=avr
```
The output will be something familiar:
```bash
AVR Memory Usage
----------------
Device: attiny2313

Program:    2508 bytes (122.5% Full)
(.text + .data + .bootloader)

Data:         47 bytes (36.7% Full)
(.data + .bss + .noinit)

```
### Before Flashing
Make sure that appropriate controller configuration
bits (fuses) are set correct, before flashing the firmware.
For current setup fuses are the following:
```bash
FUSE_EXTENDED_BYTE = 0xFF
FUSE_HIGH_BYTE = 0xDF
FUSE_LOW_BYTE = 0xFF
LOCK_BIT_BYTE = 0xFF
```

### Flashing the controller
For controller flashing `avrdude` is used.
Please refer to `avrdude` [homepage](http://www.nongnu.org/avrdude/) for online
documentation.

### Prototype
For code test purposes prototype was created. See image below.
![prototype](./images/prototype.jpg "prototype")
