EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "blinkingLeds"
Date "2020-05-07"
Rev "1"
Comp ""
Comment1 ""
Comment2 "designed: DmitryShpakov"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5EB4114C
P 900 1250
F 0 "J1" H 820 925 50  0000 C CNN
F 1 "Power_connector" H 820 1016 50  0000 C CNN
F 2 "" H 900 1250 50  0001 C CNN
F 3 "~" H 900 1250 50  0001 C CNN
	1    900  1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EB4123B
P 1100 1650
F 0 "#PWR0101" H 1100 1400 50  0001 C CNN
F 1 "GND" H 1105 1477 50  0000 C CNN
F 2 "" H 1100 1650 50  0001 C CNN
F 3 "" H 1100 1650 50  0001 C CNN
	1    1100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1150 1700 1150
Text Label 1700 1150 2    50   ~ 0
DC_input
Text Notes 800  750  0    50   ~ 0
DC input power connector\nrange 7 - 25 V
$Comp
L Device:Fuse F1
U 1 1 5EB4139B
P 2700 1150
F 0 "F1" V 2503 1150 50  0000 C CNN
F 1 "Fuse" V 2594 1150 50  0000 C CNN
F 2 "" V 2630 1150 50  0001 C CNN
F 3 "~" H 2700 1150 50  0001 C CNN
	1    2700 1150
	0    1    1    0   
$EndComp
$Comp
L Device:D D1
U 1 1 5EB415ED
P 3000 1400
F 0 "D1" V 2954 1479 50  0000 L CNN
F 1 "D" V 3045 1479 50  0000 L CNN
F 2 "" H 3000 1400 50  0001 C CNN
F 3 "~" H 3000 1400 50  0001 C CNN
	1    3000 1400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EB41647
P 3000 1650
F 0 "#PWR0102" H 3000 1400 50  0001 C CNN
F 1 "GND" H 3005 1477 50  0000 C CNN
F 2 "" H 3000 1650 50  0001 C CNN
F 3 "" H 3000 1650 50  0001 C CNN
	1    3000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1150 2000 1150
Text Label 2000 1150 0    50   ~ 0
DC_input
Wire Wire Line
	2850 1150 3000 1150
Wire Wire Line
	3000 1250 3000 1150
Connection ~ 3000 1150
Wire Wire Line
	3000 1150 3850 1150
Wire Wire Line
	3000 1550 3000 1650
Wire Wire Line
	1100 1250 1100 1650
Text Label 3850 1150 2    50   ~ 0
circuit_protection
Text Notes 2450 750  0    50   ~ 0
 Simple circuit protection from\n power reversal
$Comp
L Regulator_Linear:uA7805 U1
U 1 1 5EB41B56
P 1850 2600
F 0 "U1" H 1850 2842 50  0000 C CNN
F 1 "uA7805" H 1850 2751 50  0000 C CNN
F 2 "" H 1875 2450 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/ua78.pdf" H 1850 2550 50  0001 C CNN
	1    1850 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5EB41C1B
P 1400 2850
F 0 "C1" H 1518 2896 50  0000 L CNN
F 1 "0.33uF" H 1518 2805 50  0000 L CNN
F 2 "" H 1438 2700 50  0001 C CNN
F 3 "~" H 1400 2850 50  0001 C CNN
	1    1400 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5EB41D0C
P 2250 2850
F 0 "C3" H 2368 2896 50  0000 L CNN
F 1 "0.1uF" H 2368 2805 50  0000 L CNN
F 2 "" H 2288 2700 50  0001 C CNN
F 3 "~" H 2250 2850 50  0001 C CNN
	1    2250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3000 1400 3100
Wire Wire Line
	1400 3100 1850 3100
Wire Wire Line
	2250 3100 2250 3000
Wire Wire Line
	1850 2900 1850 3100
Connection ~ 1850 3100
Wire Wire Line
	1850 3100 2250 3100
$Comp
L power:GND #PWR0103
U 1 1 5EB41EAB
P 1850 3200
F 0 "#PWR0103" H 1850 2950 50  0001 C CNN
F 1 "GND" H 1855 3027 50  0000 C CNN
F 2 "" H 1850 3200 50  0001 C CNN
F 3 "" H 1850 3200 50  0001 C CNN
	1    1850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3200 1850 3100
Wire Wire Line
	2150 2600 2250 2600
Wire Wire Line
	2250 2700 2250 2600
Connection ~ 2250 2600
Wire Wire Line
	2250 2600 2600 2600
Wire Wire Line
	1550 2600 1400 2600
Wire Wire Line
	1400 2700 1400 2600
Connection ~ 1400 2600
Wire Wire Line
	1400 2600 700  2600
Text Label 700  2600 0    50   ~ 0
circuit_protection
$Comp
L power:+5V #PWR0104
U 1 1 5EB42621
P 2600 2400
F 0 "#PWR0104" H 2600 2250 50  0001 C CNN
F 1 "+5V" H 2615 2573 50  0000 C CNN
F 2 "" H 2600 2400 50  0001 C CNN
F 3 "" H 2600 2400 50  0001 C CNN
	1    2600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2400 2600 2600
Text Notes 1300 2300 0    50   ~ 0
Voltage regulator Vout = +5V\n Imax = 1.5A\n 
$Comp
L MCU_Microchip_ATtiny:ATtiny2313-20PU U3
U 1 1 5EB42A75
P 4350 6300
F 0 "U3" H 4350 7578 50  0000 C CNN
F 1 "ATtiny2313-20PU" H 4350 7487 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4350 6300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-2543-AVR-ATtiny2313_Datasheet.pdf" H 4350 6300 50  0001 C CNN
	1    4350 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EB42C3B
P 4350 7500
F 0 "#PWR0105" H 4350 7250 50  0001 C CNN
F 1 "GND" H 4355 7327 50  0000 C CNN
F 2 "" H 4350 7500 50  0001 C CNN
F 3 "" H 4350 7500 50  0001 C CNN
	1    4350 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 7400 4350 7500
$Comp
L Device:Crystal Y1
U 1 1 5EB43044
P 3200 5800
F 0 "Y1" V 3154 5931 50  0000 L CNN
F 1 "16MHz" V 3245 5931 50  0000 L CNN
F 2 "" H 3200 5800 50  0001 C CNN
F 3 "~" H 3200 5800 50  0001 C CNN
	1    3200 5800
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5EB43BD2
P 2900 5550
F 0 "C4" V 2671 5550 50  0000 C CNN
F 1 "15pF" V 2762 5550 50  0000 C CNN
F 2 "" H 2900 5550 50  0001 C CNN
F 3 "~" H 2900 5550 50  0001 C CNN
	1    2900 5550
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5EB4401C
P 2900 6050
F 0 "C5" V 2671 6050 50  0000 C CNN
F 1 "15pF" V 2762 6050 50  0000 C CNN
F 2 "" H 2900 6050 50  0001 C CNN
F 3 "~" H 2900 6050 50  0001 C CNN
	1    2900 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 5550 3200 5550
Wire Wire Line
	3550 5550 3550 5700
Wire Wire Line
	3550 5700 3750 5700
Wire Wire Line
	3550 6050 3550 5900
Wire Wire Line
	3550 5900 3750 5900
Wire Wire Line
	2800 5550 2700 5550
Wire Wire Line
	2700 5550 2700 6050
Wire Wire Line
	2700 6050 2800 6050
$Comp
L power:GND #PWR0106
U 1 1 5EB449F8
P 2700 6200
F 0 "#PWR0106" H 2700 5950 50  0001 C CNN
F 1 "GND" H 2705 6027 50  0000 C CNN
F 2 "" H 2700 6200 50  0001 C CNN
F 3 "" H 2700 6200 50  0001 C CNN
	1    2700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6200 2700 6050
Connection ~ 2700 6050
Wire Wire Line
	3000 6050 3200 6050
Wire Wire Line
	3200 5650 3200 5550
Connection ~ 3200 5550
Wire Wire Line
	3200 5550 3550 5550
Wire Wire Line
	3200 5950 3200 6050
Connection ~ 3200 6050
Wire Wire Line
	3200 6050 3550 6050
Text Notes 2800 6350 0    50   ~ 0
Keep those components\nas close as possible to uC
Wire Wire Line
	3750 5500 3650 5500
Wire Wire Line
	3650 5500 3650 5300
Wire Wire Line
	3650 5300 3150 5300
Text Label 3150 5300 0    50   ~ 0
#RESET
$Comp
L power:+5V #PWR0107
U 1 1 5EB461DC
P 4350 4850
F 0 "#PWR0107" H 4350 4700 50  0001 C CNN
F 1 "+5V" H 4365 5023 50  0000 C CNN
F 2 "" H 4350 4850 50  0001 C CNN
F 3 "" H 4350 4850 50  0001 C CNN
	1    4350 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4850 4350 5200
$Comp
L Device:CP C6
U 1 1 5EB469A7
P 4150 1400
F 0 "C6" H 4268 1446 50  0000 L CNN
F 1 "1uF" H 4268 1355 50  0000 L CNN
F 2 "" H 4188 1250 50  0001 C CNN
F 3 "~" H 4150 1400 50  0001 C CNN
	1    4150 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EB46EB1
P 4350 1650
F 0 "#PWR0108" H 4350 1400 50  0001 C CNN
F 1 "GND" H 4355 1477 50  0000 C CNN
F 2 "" H 4350 1650 50  0001 C CNN
F 3 "" H 4350 1650 50  0001 C CNN
	1    4350 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5EB46ED2
P 4350 1150
F 0 "#PWR0109" H 4350 1000 50  0001 C CNN
F 1 "+5V" H 4365 1323 50  0000 C CNN
F 2 "" H 4350 1150 50  0001 C CNN
F 3 "" H 4350 1150 50  0001 C CNN
	1    4350 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 5EB4722C
P 4550 1400
F 0 "C7" H 4668 1446 50  0000 L CNN
F 1 "10uF" H 4668 1355 50  0000 L CNN
F 2 "" H 4588 1250 50  0001 C CNN
F 3 "~" H 4550 1400 50  0001 C CNN
	1    4550 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1250 4350 1250
Wire Wire Line
	4150 1550 4350 1550
Wire Wire Line
	4350 1150 4350 1250
Connection ~ 4350 1250
Wire Wire Line
	4350 1250 4550 1250
Wire Wire Line
	4350 1650 4350 1550
Connection ~ 4350 1550
Wire Wire Line
	4350 1550 4550 1550
Text Notes 4100 850  0    50   ~ 0
uC VCC decoupling
$Comp
L Device:R R1
U 1 1 5EB4BEF3
P 900 4150
F 0 "R1" H 970 4196 50  0000 L CNN
F 1 "56k" H 970 4105 50  0000 L CNN
F 2 "" V 830 4150 50  0001 C CNN
F 3 "~" H 900 4150 50  0001 C CNN
	1    900  4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5EB4C3AF
P 1300 4400
F 0 "R2" V 1093 4400 50  0000 C CNN
F 1 "5.6k" V 1184 4400 50  0000 C CNN
F 2 "" V 1230 4400 50  0001 C CNN
F 3 "~" H 1300 4400 50  0001 C CNN
	1    1300 4400
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5EB4C50C
P 900 4700
F 0 "SW1" V 946 4652 50  0000 R CNN
F 1 "SW_Push" V 855 4652 50  0000 R CNN
F 2 "" H 900 4900 50  0001 C CNN
F 3 "" H 900 4900 50  0001 C CNN
	1    900  4700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5EB4D966
P 900 3900
F 0 "#PWR0110" H 900 3750 50  0001 C CNN
F 1 "+5V" H 915 4073 50  0000 C CNN
F 2 "" H 900 3900 50  0001 C CNN
F 3 "" H 900 3900 50  0001 C CNN
	1    900  3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5EB4D9F4
P 900 5000
F 0 "#PWR0111" H 900 4750 50  0001 C CNN
F 1 "GND" H 905 4827 50  0000 C CNN
F 2 "" H 900 5000 50  0001 C CNN
F 3 "" H 900 5000 50  0001 C CNN
	1    900  5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5EB4DCB7
P 1700 4700
F 0 "C2" H 1792 4746 50  0000 L CNN
F 1 "0.1uF" H 1792 4655 50  0000 L CNN
F 2 "" H 1700 4700 50  0001 C CNN
F 3 "~" H 1700 4700 50  0001 C CNN
	1    1700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3900 900  4000
Wire Wire Line
	900  4300 900  4400
Wire Wire Line
	900  4900 900  5000
Wire Wire Line
	1150 4400 900  4400
Connection ~ 900  4400
Wire Wire Line
	900  4400 900  4500
Wire Wire Line
	1450 4400 1700 4400
Wire Wire Line
	1700 4400 1700 4600
$Comp
L power:GND #PWR0112
U 1 1 5EB52CC8
P 1700 5000
F 0 "#PWR0112" H 1700 4750 50  0001 C CNN
F 1 "GND" H 1705 4827 50  0000 C CNN
F 2 "" H 1700 5000 50  0001 C CNN
F 3 "" H 1700 5000 50  0001 C CNN
	1    1700 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4800 1700 5000
Text Label 2300 4400 2    50   ~ 0
#RESET
Wire Wire Line
	1700 4400 2300 4400
Connection ~ 1700 4400
Text Notes 1350 3900 0    50   ~ 0
HW reset
$Comp
L Connector:AVR-ISP-6 J2
U 1 1 5EB5770C
P 1350 6500
F 0 "J2" H 1070 6596 50  0000 R CNN
F 1 "AVR-ISP-6" H 1070 6505 50  0000 R CNN
F 2 "" V 1100 6550 50  0001 C CNN
F 3 " ~" H 75  5950 50  0001 C CNN
	1    1350 6500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5EB5796D
P 1250 5900
F 0 "#PWR0113" H 1250 5750 50  0001 C CNN
F 1 "+5V" H 1265 6073 50  0000 C CNN
F 2 "" H 1250 5900 50  0001 C CNN
F 3 "" H 1250 5900 50  0001 C CNN
	1    1250 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5EB57A99
P 1250 7000
F 0 "#PWR0114" H 1250 6750 50  0001 C CNN
F 1 "GND" H 1255 6827 50  0000 C CNN
F 2 "" H 1250 7000 50  0001 C CNN
F 3 "" H 1250 7000 50  0001 C CNN
	1    1250 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5900 1250 6000
Wire Wire Line
	1250 6900 1250 7000
Wire Wire Line
	1750 6300 2000 6300
Wire Wire Line
	1750 6400 2000 6400
Wire Wire Line
	1750 6500 2000 6500
Wire Wire Line
	1750 6600 2000 6600
Text Notes 1500 5900 0    100  ~ 0
ISP connector
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5EB63B25
P 7350 1200
F 0 "J3" H 7270 875 50  0000 C CNN
F 1 "UART" H 7270 966 50  0000 C CNN
F 2 "" H 7350 1200 50  0001 C CNN
F 3 "~" H 7350 1200 50  0001 C CNN
	1    7350 1200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5EB670B6
P 7850 1650
F 0 "#PWR0115" H 7850 1400 50  0001 C CNN
F 1 "GND" H 7855 1477 50  0000 C CNN
F 2 "" H 7850 1650 50  0001 C CNN
F 3 "" H 7850 1650 50  0001 C CNN
	1    7850 1650
	1    0    0    -1  
$EndComp
Text Label 7850 1100 2    50   ~ 0
UART_RX
Text Label 7850 1200 2    50   ~ 0
UART_TX
Text Label 5350 6400 2    50   ~ 0
UART_TX
Text Label 5350 6500 2    50   ~ 0
UART_RX
Wire Wire Line
	4950 6400 5350 6400
Wire Wire Line
	4950 6500 5350 6500
Wire Wire Line
	4950 6600 5350 6600
Text Label 5350 6600 2    50   ~ 0
Button
$Comp
L Switch:SW_Push SW2
U 1 1 5EB7160B
P 9100 1350
F 0 "SW2" V 9054 1498 50  0000 L CNN
F 1 "SW_Push" V 9145 1498 50  0000 L CNN
F 2 "" H 9100 1550 50  0001 C CNN
F 3 "" H 9100 1550 50  0001 C CNN
	1    9100 1350
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5EB71689
P 8850 1050
F 0 "R4" V 8643 1050 50  0000 C CNN
F 1 "5.6k" V 8734 1050 50  0000 C CNN
F 2 "" V 8780 1050 50  0001 C CNN
F 3 "~" H 8850 1050 50  0001 C CNN
	1    8850 1050
	0    1    1    0   
$EndComp
$Comp
L Device:C C12
U 1 1 5EB7174D
P 8600 1350
F 0 "C12" H 8485 1304 50  0000 R CNN
F 1 "NL" H 8485 1395 50  0000 R CNN
F 2 "" H 8638 1200 50  0001 C CNN
F 3 "~" H 8600 1350 50  0001 C CNN
	1    8600 1350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5EB71AF6
P 9100 1650
F 0 "#PWR0116" H 9100 1400 50  0001 C CNN
F 1 "GND" H 9105 1477 50  0000 C CNN
F 2 "" H 9100 1650 50  0001 C CNN
F 3 "" H 9100 1650 50  0001 C CNN
	1    9100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1550 9100 1650
Wire Wire Line
	9000 1050 9100 1050
Wire Wire Line
	9100 1050 9100 1150
Wire Wire Line
	8700 1050 8600 1050
Wire Wire Line
	8600 1200 8600 1050
$Comp
L power:GND #PWR0117
U 1 1 5EB798B3
P 8600 1650
F 0 "#PWR0117" H 8600 1400 50  0001 C CNN
F 1 "GND" H 8605 1477 50  0000 C CNN
F 2 "" H 8600 1650 50  0001 C CNN
F 3 "" H 8600 1650 50  0001 C CNN
	1    8600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1500 8600 1650
Text Label 8200 1050 0    50   ~ 0
Button
Wire Wire Line
	8600 1050 8200 1050
Connection ~ 8600 1050
$Comp
L 74xx:74HC595 U4
U 1 1 5EB8005E
P 6700 3300
F 0 "U4" H 6700 4078 50  0000 C CNN
F 1 "74HC595" H 6700 3987 50  0000 C CNN
F 2 "" H 6700 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 6700 3300 50  0001 C CNN
	1    6700 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 5EB87DF3
P 6700 2400
F 0 "#PWR0118" H 6700 2250 50  0001 C CNN
F 1 "+5V" H 6715 2573 50  0000 C CNN
F 2 "" H 6700 2400 50  0001 C CNN
F 3 "" H 6700 2400 50  0001 C CNN
	1    6700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2400 6700 2700
$Comp
L power:GND #PWR0119
U 1 1 5EB8F524
P 6700 4100
F 0 "#PWR0119" H 6700 3850 50  0001 C CNN
F 1 "GND" H 6705 3927 50  0000 C CNN
F 2 "" H 6700 4100 50  0001 C CNN
F 3 "" H 6700 4100 50  0001 C CNN
	1    6700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4000 6700 4100
Entry Wire Line
	5350 5800 5450 5900
Entry Wire Line
	5350 5900 5450 6000
Entry Wire Line
	5350 6000 5450 6100
Entry Wire Line
	5350 6100 5450 6200
Entry Wire Line
	5350 6200 5450 6300
Wire Bus Line
	5450 5600 5750 5600
Wire Wire Line
	4950 6200 5350 6200
Wire Wire Line
	4950 6100 5350 6100
Wire Wire Line
	4950 6000 5350 6000
Wire Wire Line
	4950 5900 5350 5900
Wire Wire Line
	4950 5800 5350 5800
Text Label 5350 6200 2    50   ~ 0
SRCLK
Text Label 5350 6100 2    50   ~ 0
SER
Text Label 5350 6000 2    50   ~ 0
#SRCLR
Text Label 5350 5900 2    50   ~ 0
RCLK
Text Label 5350 5800 2    50   ~ 0
#OE
Text Label 5700 5600 2    50   ~ 0
serialShiftBus
Text Label 2000 6600 2    50   ~ 0
#RESET
Text Label 2000 6500 2    50   ~ 0
SRCLK
Text Label 2000 6400 2    50   ~ 0
#SRCLR
Text Label 2000 6300 2    50   ~ 0
SER
Entry Wire Line
	5800 3000 5900 3100
Entry Wire Line
	5800 3100 5900 3200
Entry Wire Line
	5800 3300 5900 3400
Entry Wire Line
	5800 3400 5900 3500
Wire Bus Line
	5800 2600 5500 2600
Text Label 5600 2600 0    50   ~ 0
serialShiftBus
Text Label 5900 3100 0    50   ~ 0
SRCLK
Text Label 5900 3200 0    50   ~ 0
#SRCLR
Text Label 5900 3400 0    50   ~ 0
RCLK
Text Label 5900 3500 0    50   ~ 0
#OE
Wire Wire Line
	6300 2900 5900 2900
Wire Wire Line
	6300 3100 5900 3100
Wire Wire Line
	6300 3200 5900 3200
Wire Wire Line
	6300 3400 5900 3400
Wire Wire Line
	6300 3500 5900 3500
Entry Wire Line
	7500 2900 7600 3000
Entry Wire Line
	7500 3000 7600 3100
Entry Wire Line
	7500 3100 7600 3200
Entry Wire Line
	7500 3200 7600 3300
Entry Wire Line
	7500 3300 7600 3400
Entry Wire Line
	7500 3400 7600 3500
Entry Wire Line
	7500 3500 7600 3600
Entry Wire Line
	7500 3600 7600 3700
Wire Bus Line
	7600 2600 7900 2600
Text Label 7500 2900 2    50   ~ 0
LED9
Wire Wire Line
	7100 2900 7500 2900
Wire Wire Line
	7500 3000 7100 3000
Wire Wire Line
	7100 3100 7500 3100
Wire Wire Line
	7500 3200 7100 3200
Wire Wire Line
	7100 3300 7500 3300
Wire Wire Line
	7500 3400 7100 3400
Wire Wire Line
	7100 3500 7500 3500
Wire Wire Line
	7500 3600 7100 3600
Text Label 7500 3000 2    50   ~ 0
LED10
Text Label 7500 3100 2    50   ~ 0
LED11
Text Label 7500 3200 2    50   ~ 0
LED12
Text Label 7500 3300 2    50   ~ 0
LED13
Text Label 7500 3400 2    50   ~ 0
LED14
Text Label 7500 3500 2    50   ~ 0
LED15
Text Label 7500 3600 2    50   ~ 0
LED16
Text Label 7650 2600 0    50   ~ 0
ledBus
$Comp
L 74xx:74HC595 U2
U 1 1 5EC0A584
P 3950 3300
F 0 "U2" H 3950 4078 50  0000 C CNN
F 1 "74HC595" H 3950 3987 50  0000 C CNN
F 2 "" H 3950 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3950 3300 50  0001 C CNN
	1    3950 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0120
U 1 1 5EC0A58B
P 3950 2400
F 0 "#PWR0120" H 3950 2250 50  0001 C CNN
F 1 "+5V" H 3965 2573 50  0000 C CNN
F 2 "" H 3950 2400 50  0001 C CNN
F 3 "" H 3950 2400 50  0001 C CNN
	1    3950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2400 3950 2700
$Comp
L power:GND #PWR0121
U 1 1 5EC0A592
P 3950 4100
F 0 "#PWR0121" H 3950 3850 50  0001 C CNN
F 1 "GND" H 3955 3927 50  0000 C CNN
F 2 "" H 3950 4100 50  0001 C CNN
F 3 "" H 3950 4100 50  0001 C CNN
	1    3950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4000 3950 4100
Entry Wire Line
	3050 2800 3150 2900
Entry Wire Line
	3050 3000 3150 3100
Entry Wire Line
	3050 3100 3150 3200
Entry Wire Line
	3050 3300 3150 3400
Entry Wire Line
	3050 3400 3150 3500
Wire Bus Line
	3050 2600 2750 2600
Text Label 2850 2600 0    50   ~ 0
serialShiftBus
Text Label 3150 2900 0    50   ~ 0
SER
Text Label 3150 3100 0    50   ~ 0
SRCLK
Text Label 3150 3200 0    50   ~ 0
#SRCLR
Text Label 3150 3400 0    50   ~ 0
RCLK
Text Label 3150 3500 0    50   ~ 0
#OE
Wire Wire Line
	3550 2900 3150 2900
Wire Wire Line
	3550 3100 3150 3100
Wire Wire Line
	3550 3200 3150 3200
Wire Wire Line
	3550 3400 3150 3400
Wire Wire Line
	3550 3500 3150 3500
Entry Wire Line
	4750 2900 4850 3000
Entry Wire Line
	4750 3000 4850 3100
Entry Wire Line
	4750 3100 4850 3200
Entry Wire Line
	4750 3200 4850 3300
Entry Wire Line
	4750 3300 4850 3400
Entry Wire Line
	4750 3400 4850 3500
Entry Wire Line
	4750 3500 4850 3600
Entry Wire Line
	4750 3600 4850 3700
Wire Bus Line
	4850 2600 5150 2600
Text Label 4750 2900 2    50   ~ 0
LED1
Wire Wire Line
	4350 2900 4750 2900
Wire Wire Line
	4750 3000 4350 3000
Wire Wire Line
	4350 3100 4750 3100
Wire Wire Line
	4750 3200 4350 3200
Wire Wire Line
	4350 3300 4750 3300
Wire Wire Line
	4750 3400 4350 3400
Wire Wire Line
	4350 3500 4750 3500
Wire Wire Line
	4750 3600 4350 3600
Text Label 4750 3000 2    50   ~ 0
LED2
Text Label 4750 3100 2    50   ~ 0
LED3
Text Label 4750 3200 2    50   ~ 0
LED4
Text Label 4750 3300 2    50   ~ 0
LED5
Text Label 4750 3400 2    50   ~ 0
LED6
Text Label 4750 3500 2    50   ~ 0
LED7
Text Label 4750 3600 2    50   ~ 0
LED8
Text Label 4900 2600 0    50   ~ 0
ledBus
Wire Wire Line
	4350 3800 4750 3800
Text Label 4750 3800 2    50   ~ 0
serStage0
Text Label 5900 2900 0    50   ~ 0
serStage0
Wire Wire Line
	7550 1100 7850 1100
Wire Wire Line
	7550 1200 7850 1200
Wire Wire Line
	7550 1300 7850 1300
Wire Wire Line
	7850 1300 7850 1650
NoConn ~ 7100 3800
$Comp
L Device:CP C8
U 1 1 5EC36CD0
P 5000 1400
F 0 "C8" H 5118 1446 50  0000 L CNN
F 1 "1uF" H 5118 1355 50  0000 L CNN
F 2 "" H 5038 1250 50  0001 C CNN
F 3 "~" H 5000 1400 50  0001 C CNN
	1    5000 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5EC36CD7
P 5200 1650
F 0 "#PWR0122" H 5200 1400 50  0001 C CNN
F 1 "GND" H 5205 1477 50  0000 C CNN
F 2 "" H 5200 1650 50  0001 C CNN
F 3 "" H 5200 1650 50  0001 C CNN
	1    5200 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 5EC36CDD
P 5200 1150
F 0 "#PWR0123" H 5200 1000 50  0001 C CNN
F 1 "+5V" H 5215 1323 50  0000 C CNN
F 2 "" H 5200 1150 50  0001 C CNN
F 3 "" H 5200 1150 50  0001 C CNN
	1    5200 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C9
U 1 1 5EC36CE3
P 5400 1400
F 0 "C9" H 5518 1446 50  0000 L CNN
F 1 "10uF" H 5518 1355 50  0000 L CNN
F 2 "" H 5438 1250 50  0001 C CNN
F 3 "~" H 5400 1400 50  0001 C CNN
	1    5400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1250 5200 1250
Wire Wire Line
	5000 1550 5200 1550
Wire Wire Line
	5200 1150 5200 1250
Connection ~ 5200 1250
Wire Wire Line
	5200 1250 5400 1250
Wire Wire Line
	5200 1650 5200 1550
Connection ~ 5200 1550
Wire Wire Line
	5200 1550 5400 1550
Text Notes 4950 850  0    50   ~ 0
Shift register\nVCC decoupling
$Comp
L Device:CP C10
U 1 1 5EC3A91C
P 5850 1400
F 0 "C10" H 5968 1446 50  0000 L CNN
F 1 "1uF" H 5968 1355 50  0000 L CNN
F 2 "" H 5888 1250 50  0001 C CNN
F 3 "~" H 5850 1400 50  0001 C CNN
	1    5850 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5EC3A923
P 6050 1650
F 0 "#PWR0124" H 6050 1400 50  0001 C CNN
F 1 "GND" H 6055 1477 50  0000 C CNN
F 2 "" H 6050 1650 50  0001 C CNN
F 3 "" H 6050 1650 50  0001 C CNN
	1    6050 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 5EC3A929
P 6050 1150
F 0 "#PWR0125" H 6050 1000 50  0001 C CNN
F 1 "+5V" H 6065 1323 50  0000 C CNN
F 2 "" H 6050 1150 50  0001 C CNN
F 3 "" H 6050 1150 50  0001 C CNN
	1    6050 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C11
U 1 1 5EC3A92F
P 6250 1400
F 0 "C11" H 6368 1446 50  0000 L CNN
F 1 "10uF" H 6368 1355 50  0000 L CNN
F 2 "" H 6288 1250 50  0001 C CNN
F 3 "~" H 6250 1400 50  0001 C CNN
	1    6250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1250 6050 1250
Wire Wire Line
	5850 1550 6050 1550
Wire Wire Line
	6050 1150 6050 1250
Connection ~ 6050 1250
Wire Wire Line
	6050 1250 6250 1250
Wire Wire Line
	6050 1650 6050 1550
Connection ~ 6050 1550
Wire Wire Line
	6050 1550 6250 1550
Text Notes 5800 850  0    50   ~ 0
Shift register\nVCC decoupling
Entry Wire Line
	8900 2800 9000 2900
Entry Wire Line
	8900 3000 9000 3100
Entry Wire Line
	8900 3200 9000 3300
Entry Wire Line
	8900 3400 9000 3500
Entry Wire Line
	8900 3600 9000 3700
Entry Wire Line
	8900 3800 9000 3900
Entry Wire Line
	8900 4000 9000 4100
Entry Wire Line
	8900 4200 9000 4300
Entry Wire Line
	8900 4400 9000 4500
Entry Wire Line
	8900 4600 9000 4700
Entry Wire Line
	8900 4800 9000 4900
Entry Wire Line
	8900 5000 9000 5100
Entry Wire Line
	8900 5200 9000 5300
Entry Wire Line
	8900 5400 9000 5500
Entry Wire Line
	8900 5600 9000 5700
Entry Wire Line
	8900 5800 9000 5900
Text Label 8500 2300 0    50   ~ 0
ledBus
Text Label 9250 5900 2    50   ~ 0
LED16
Text Label 9250 5700 2    50   ~ 0
LED15
Text Label 9250 5500 2    50   ~ 0
LED14
Text Label 9250 5300 2    50   ~ 0
LED13
Text Label 9250 5100 2    50   ~ 0
LED12
Text Label 9250 4900 2    50   ~ 0
LED11
Text Label 9250 4700 2    50   ~ 0
LED10
Text Label 9250 4500 2    50   ~ 0
LED9
Text Label 9250 4300 2    50   ~ 0
LED8
Text Label 9250 4100 2    50   ~ 0
LED7
Text Label 9250 3900 2    50   ~ 0
LED6
Text Label 9250 3700 2    50   ~ 0
LED5
Text Label 9250 3500 2    50   ~ 0
LED4
Text Label 9250 3300 2    50   ~ 0
LED3
Text Label 9250 3100 2    50   ~ 0
LED2
Text Label 9250 2900 2    50   ~ 0
LED1
$Comp
L Device:LED D4
U 1 1 5ECC2FB8
P 9650 3300
F 0 "D4" H 9650 3200 50  0000 C CNN
F 1 "LED" H 9800 3250 50  0000 C CNN
F 2 "" H 9650 3300 50  0001 C CNN
F 3 "~" H 9650 3300 50  0001 C CNN
	1    9650 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 5ECC34AC
P 9650 3500
F 0 "D5" H 9650 3400 50  0000 C CNN
F 1 "LED" H 9800 3450 50  0000 C CNN
F 2 "" H 9650 3500 50  0001 C CNN
F 3 "~" H 9650 3500 50  0001 C CNN
	1    9650 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5ECE5468
P 10050 3300
F 0 "R7" V 10150 3300 50  0000 C CNN
F 1 "560" V 10050 3300 50  0000 C CNN
F 2 "" V 9980 3300 50  0001 C CNN
F 3 "~" H 10050 3300 50  0001 C CNN
	1    10050 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5ECE5D8A
P 10050 3500
F 0 "R8" V 10150 3500 50  0000 C CNN
F 1 "560" V 10050 3500 50  0000 C CNN
F 2 "" V 9980 3500 50  0001 C CNN
F 3 "~" H 10050 3500 50  0001 C CNN
	1    10050 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 3300 9900 3300
Wire Wire Line
	9800 3500 9900 3500
$Comp
L Device:LED D2
U 1 1 5ECFCA93
P 9650 2900
F 0 "D2" H 9650 2800 50  0000 C CNN
F 1 "LED" H 9800 2850 50  0000 C CNN
F 2 "" H 9650 2900 50  0001 C CNN
F 3 "~" H 9650 2900 50  0001 C CNN
	1    9650 2900
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5ECFCA9A
P 9650 3100
F 0 "D3" H 9650 3000 50  0000 C CNN
F 1 "LED" H 9800 3050 50  0000 C CNN
F 2 "" H 9650 3100 50  0001 C CNN
F 3 "~" H 9650 3100 50  0001 C CNN
	1    9650 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5ECFCAA1
P 10050 2900
F 0 "R5" V 10150 2900 50  0000 C CNN
F 1 "560" V 10050 2900 50  0000 C CNN
F 2 "" V 9980 2900 50  0001 C CNN
F 3 "~" H 10050 2900 50  0001 C CNN
	1    10050 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5ECFCAA8
P 10050 3100
F 0 "R6" V 10150 3100 50  0000 C CNN
F 1 "560" V 10050 3100 50  0000 C CNN
F 2 "" V 9980 3100 50  0001 C CNN
F 3 "~" H 10050 3100 50  0001 C CNN
	1    10050 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 2900 9900 2900
Wire Wire Line
	9800 3100 9900 3100
$Comp
L Device:LED D8
U 1 1 5ED0274C
P 9650 4100
F 0 "D8" H 9650 4000 50  0000 C CNN
F 1 "LED" H 9800 4050 50  0000 C CNN
F 2 "" H 9650 4100 50  0001 C CNN
F 3 "~" H 9650 4100 50  0001 C CNN
	1    9650 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D9
U 1 1 5ED02753
P 9650 4300
F 0 "D9" H 9650 4200 50  0000 C CNN
F 1 "LED" H 9800 4250 50  0000 C CNN
F 2 "" H 9650 4300 50  0001 C CNN
F 3 "~" H 9650 4300 50  0001 C CNN
	1    9650 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5ED0275A
P 10050 4100
F 0 "R11" V 10150 4100 50  0000 C CNN
F 1 "560" V 10050 4100 50  0000 C CNN
F 2 "" V 9980 4100 50  0001 C CNN
F 3 "~" H 10050 4100 50  0001 C CNN
	1    10050 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5ED02761
P 10050 4300
F 0 "R12" V 10150 4300 50  0000 C CNN
F 1 "560" V 10050 4300 50  0000 C CNN
F 2 "" V 9980 4300 50  0001 C CNN
F 3 "~" H 10050 4300 50  0001 C CNN
	1    10050 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 4100 9900 4100
Wire Wire Line
	9800 4300 9900 4300
$Comp
L Device:LED D6
U 1 1 5ED0276A
P 9650 3700
F 0 "D6" H 9650 3600 50  0000 C CNN
F 1 "LED" H 9800 3650 50  0000 C CNN
F 2 "" H 9650 3700 50  0001 C CNN
F 3 "~" H 9650 3700 50  0001 C CNN
	1    9650 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 5ED02771
P 9650 3900
F 0 "D7" H 9650 3800 50  0000 C CNN
F 1 "LED" H 9800 3850 50  0000 C CNN
F 2 "" H 9650 3900 50  0001 C CNN
F 3 "~" H 9650 3900 50  0001 C CNN
	1    9650 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5ED02778
P 10050 3700
F 0 "R9" V 10150 3700 50  0000 C CNN
F 1 "560" V 10050 3700 50  0000 C CNN
F 2 "" V 9980 3700 50  0001 C CNN
F 3 "~" H 10050 3700 50  0001 C CNN
	1    10050 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5ED0277F
P 10050 3900
F 0 "R10" V 10150 3900 50  0000 C CNN
F 1 "560" V 10050 3900 50  0000 C CNN
F 2 "" V 9980 3900 50  0001 C CNN
F 3 "~" H 10050 3900 50  0001 C CNN
	1    10050 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 3700 9900 3700
Wire Wire Line
	9800 3900 9900 3900
$Comp
L Device:LED D12
U 1 1 5ED08D99
P 9650 4900
F 0 "D12" H 9650 4800 50  0000 C CNN
F 1 "LED" H 9800 4850 50  0000 C CNN
F 2 "" H 9650 4900 50  0001 C CNN
F 3 "~" H 9650 4900 50  0001 C CNN
	1    9650 4900
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D13
U 1 1 5ED08DA0
P 9650 5100
F 0 "D13" H 9650 5000 50  0000 C CNN
F 1 "LED" H 9800 5050 50  0000 C CNN
F 2 "" H 9650 5100 50  0001 C CNN
F 3 "~" H 9650 5100 50  0001 C CNN
	1    9650 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5ED08DA7
P 10050 4900
F 0 "R15" V 10150 4900 50  0000 C CNN
F 1 "560" V 10050 4900 50  0000 C CNN
F 2 "" V 9980 4900 50  0001 C CNN
F 3 "~" H 10050 4900 50  0001 C CNN
	1    10050 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 5ED08DAE
P 10050 5100
F 0 "R16" V 10150 5100 50  0000 C CNN
F 1 "560" V 10050 5100 50  0000 C CNN
F 2 "" V 9980 5100 50  0001 C CNN
F 3 "~" H 10050 5100 50  0001 C CNN
	1    10050 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 4900 9900 4900
Wire Wire Line
	9800 5100 9900 5100
$Comp
L Device:LED D10
U 1 1 5ED08DB7
P 9650 4500
F 0 "D10" H 9650 4400 50  0000 C CNN
F 1 "LED" H 9800 4450 50  0000 C CNN
F 2 "" H 9650 4500 50  0001 C CNN
F 3 "~" H 9650 4500 50  0001 C CNN
	1    9650 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D11
U 1 1 5ED08DBE
P 9650 4700
F 0 "D11" H 9650 4600 50  0000 C CNN
F 1 "LED" H 9800 4650 50  0000 C CNN
F 2 "" H 9650 4700 50  0001 C CNN
F 3 "~" H 9650 4700 50  0001 C CNN
	1    9650 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5ED08DC5
P 10050 4500
F 0 "R13" V 10150 4500 50  0000 C CNN
F 1 "560" V 10050 4500 50  0000 C CNN
F 2 "" V 9980 4500 50  0001 C CNN
F 3 "~" H 10050 4500 50  0001 C CNN
	1    10050 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 5ED08DCC
P 10050 4700
F 0 "R14" V 10150 4700 50  0000 C CNN
F 1 "560" V 10050 4700 50  0000 C CNN
F 2 "" V 9980 4700 50  0001 C CNN
F 3 "~" H 10050 4700 50  0001 C CNN
	1    10050 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 4500 9900 4500
Wire Wire Line
	9800 4700 9900 4700
$Comp
L Device:LED D16
U 1 1 5ED08DD5
P 9650 5700
F 0 "D16" H 9650 5600 50  0000 C CNN
F 1 "LED" H 9800 5650 50  0000 C CNN
F 2 "" H 9650 5700 50  0001 C CNN
F 3 "~" H 9650 5700 50  0001 C CNN
	1    9650 5700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D17
U 1 1 5ED08DDC
P 9650 5900
F 0 "D17" H 9650 5800 50  0000 C CNN
F 1 "LED" H 9800 5850 50  0000 C CNN
F 2 "" H 9650 5900 50  0001 C CNN
F 3 "~" H 9650 5900 50  0001 C CNN
	1    9650 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R19
U 1 1 5ED08DE3
P 10050 5700
F 0 "R19" V 10150 5700 50  0000 C CNN
F 1 "560" V 10050 5700 50  0000 C CNN
F 2 "" V 9980 5700 50  0001 C CNN
F 3 "~" H 10050 5700 50  0001 C CNN
	1    10050 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R20
U 1 1 5ED08DEA
P 10050 5900
F 0 "R20" V 10150 5900 50  0000 C CNN
F 1 "560" V 10050 5900 50  0000 C CNN
F 2 "" V 9980 5900 50  0001 C CNN
F 3 "~" H 10050 5900 50  0001 C CNN
	1    10050 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 5700 9900 5700
Wire Wire Line
	9800 5900 9900 5900
$Comp
L Device:LED D14
U 1 1 5ED08DF3
P 9650 5300
F 0 "D14" H 9650 5200 50  0000 C CNN
F 1 "LED" H 9800 5250 50  0000 C CNN
F 2 "" H 9650 5300 50  0001 C CNN
F 3 "~" H 9650 5300 50  0001 C CNN
	1    9650 5300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D15
U 1 1 5ED08DFA
P 9650 5500
F 0 "D15" H 9650 5400 50  0000 C CNN
F 1 "LED" H 9800 5450 50  0000 C CNN
F 2 "" H 9650 5500 50  0001 C CNN
F 3 "~" H 9650 5500 50  0001 C CNN
	1    9650 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 5ED08E01
P 10050 5300
F 0 "R17" V 10150 5300 50  0000 C CNN
F 1 "560" V 10050 5300 50  0000 C CNN
F 2 "" V 9980 5300 50  0001 C CNN
F 3 "~" H 10050 5300 50  0001 C CNN
	1    10050 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 5ED08E08
P 10050 5500
F 0 "R18" V 10150 5500 50  0000 C CNN
F 1 "560" V 10050 5500 50  0000 C CNN
F 2 "" V 9980 5500 50  0001 C CNN
F 3 "~" H 10050 5500 50  0001 C CNN
	1    10050 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 5300 9900 5300
Wire Wire Line
	9800 5500 9900 5500
Wire Wire Line
	10200 2900 10500 2900
Wire Wire Line
	10500 2900 10500 3100
Wire Wire Line
	10200 5900 10500 5900
Connection ~ 10500 5700
Wire Wire Line
	10500 5700 10500 5900
Wire Wire Line
	10200 5700 10500 5700
Wire Wire Line
	10200 5500 10500 5500
Connection ~ 10500 5500
Wire Wire Line
	10500 5500 10500 5700
Wire Wire Line
	10200 5300 10500 5300
Connection ~ 10500 5300
Wire Wire Line
	10500 5300 10500 5500
Wire Wire Line
	10200 5100 10500 5100
Wire Wire Line
	10200 4900 10500 4900
Connection ~ 10500 4900
Wire Wire Line
	10500 4900 10500 5100
Wire Wire Line
	10200 4700 10500 4700
Connection ~ 10500 4700
Wire Wire Line
	10500 4700 10500 4900
Wire Wire Line
	10200 4500 10500 4500
Connection ~ 10500 4500
Wire Wire Line
	10500 4500 10500 4700
Wire Wire Line
	10200 4300 10500 4300
Connection ~ 10500 4300
Wire Wire Line
	10500 4300 10500 4500
Wire Wire Line
	10200 4100 10500 4100
Connection ~ 10500 4100
Wire Wire Line
	10500 4100 10500 4300
Wire Wire Line
	10200 3900 10500 3900
Connection ~ 10500 3900
Wire Wire Line
	10500 3900 10500 4100
Wire Wire Line
	10200 3700 10500 3700
Connection ~ 10500 3700
Wire Wire Line
	10500 3700 10500 3900
Wire Wire Line
	10200 3500 10500 3500
Wire Wire Line
	10200 3300 10500 3300
Connection ~ 10500 3300
Wire Wire Line
	10500 3300 10500 3500
Wire Wire Line
	10200 3100 10500 3100
Connection ~ 10500 3100
Wire Wire Line
	10500 3100 10500 3300
$Comp
L power:GND #PWR0126
U 1 1 5ED9FEFC
P 10500 6150
F 0 "#PWR0126" H 10500 5900 50  0001 C CNN
F 1 "GND" H 10505 5977 50  0000 C CNN
F 2 "" H 10500 6150 50  0001 C CNN
F 3 "" H 10500 6150 50  0001 C CNN
	1    10500 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 6150 10500 5900
Connection ~ 10500 5900
Wire Wire Line
	10500 3500 10500 3700
Connection ~ 10500 3500
Wire Wire Line
	10500 5100 10500 5300
Connection ~ 10500 5100
Wire Wire Line
	9000 2900 9500 2900
Wire Wire Line
	9000 3100 9500 3100
Wire Wire Line
	9000 3300 9500 3300
Wire Wire Line
	9000 3500 9500 3500
Wire Wire Line
	9000 3700 9500 3700
Wire Wire Line
	9000 3900 9500 3900
Wire Wire Line
	9000 4100 9500 4100
Wire Wire Line
	9000 4300 9500 4300
Wire Wire Line
	9000 4500 9500 4500
Wire Wire Line
	9000 4700 9500 4700
Wire Wire Line
	9000 4900 9500 4900
Wire Wire Line
	9000 5100 9500 5100
Wire Wire Line
	9000 5300 9500 5300
Wire Wire Line
	9000 5500 9500 5500
Wire Wire Line
	9000 5700 9500 5700
Wire Wire Line
	9000 5900 9500 5900
Wire Bus Line
	8900 2300 8400 2300
$Comp
L Device:R R3
U 1 1 5EF2EAD2
P 5900 4650
F 0 "R3" V 5693 4650 50  0000 C CNN
F 1 "56k" V 5784 4650 50  0000 C CNN
F 2 "" V 5830 4650 50  0001 C CNN
F 3 "~" H 5900 4650 50  0001 C CNN
	1    5900 4650
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 5EF2EC96
P 5400 4350
F 0 "#PWR0127" H 5400 4200 50  0001 C CNN
F 1 "+5V" H 5415 4523 50  0000 C CNN
F 2 "" H 5400 4350 50  0001 C CNN
F 3 "" H 5400 4350 50  0001 C CNN
	1    5400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4650 5400 4650
Wire Wire Line
	5400 4650 5400 4350
Text Label 6350 4650 2    50   ~ 0
#OE
Wire Wire Line
	6050 4650 6350 4650
Text Notes 5650 5000 0    50   ~ 0
Shift register\noutput enable\npull-up
NoConn ~ 4950 6700
NoConn ~ 4950 6800
NoConn ~ 4950 6900
NoConn ~ 4950 7000
NoConn ~ 4950 5700
NoConn ~ 4950 5600
NoConn ~ 4950 5500
Wire Bus Line
	5800 2600 5800 3900
Wire Bus Line
	5450 5600 5450 6350
Wire Bus Line
	3050 2600 3050 3900
Wire Bus Line
	7600 2600 7600 3900
Wire Bus Line
	4850 2600 4850 3900
Wire Bus Line
	8900 2300 8900 5950
$EndSCHEMATC
