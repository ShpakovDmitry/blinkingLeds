### Description
Program that runs on Atmel AVR architecture microcontroller.
Makes running light on not less than nine leds.
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
### Prototype
For code test purposes prototype was created. See image below.
![prototype](./images/prototype.jpg "prototype")
