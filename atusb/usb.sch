EESchema Schematic File Version 2  date Mon Jan  3 15:54:00 2011
LIBS:power
LIBS:device
LIBS:conn
LIBS:at86rf230
LIBS:c8051f326
LIBS:usb_a_plug
LIBS:xtal-4
LIBS:antenna
LIBS:balun-smt6
LIBS:atusb-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 2 3
Title "IEEE 802.15.4 USB Transceiver (AT86RF230)"
Date "3 jan 2011"
Rev "101130"
Comp "Werner Almesberger"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	6950 900  6900 900 
Wire Notes Line
	6900 900  6900 1450
Wire Wire Line
	6900 1600 6900 1800
Wire Wire Line
	8600 3200 9800 3200
Wire Wire Line
	9800 1600 7650 1600
Wire Wire Line
	8600 3050 9800 3050
Wire Wire Line
	9800 1450 7500 1450
Wire Wire Line
	7500 1450 7500 1800
Wire Wire Line
	9800 1300 7350 1300
Wire Wire Line
	7350 1300 7350 1800
Wire Wire Line
	5600 1150 5600 2750
Wire Wire Line
	5600 1150 6050 1150
Wire Wire Line
	6050 900  5850 900 
Wire Wire Line
	6750 1800 6750 900 
Wire Wire Line
	5800 2900 5600 2900
Wire Wire Line
	6400 6150 6400 5500
Wire Wire Line
	6400 5500 6600 5500
Wire Wire Line
	6600 5500 6600 6150
Wire Wire Line
	6900 6150 6900 4600
Wire Wire Line
	6750 4800 5600 4800
Connection ~ 5600 3650
Wire Wire Line
	5600 4800 5600 3650
Wire Wire Line
	3700 4550 3700 4750
Wire Wire Line
	3100 4550 3100 4750
Connection ~ 3400 3050
Wire Wire Line
	3400 4050 3400 3050
Wire Wire Line
	5150 4900 5150 5100
Wire Wire Line
	5150 3350 5800 3350
Wire Wire Line
	1200 2900 1000 2900
Wire Wire Line
	1200 3350 1000 3350
Connection ~ 1000 3350
Wire Wire Line
	1000 2900 1000 3550
Wire Wire Line
	2550 3550 2550 3350
Wire Wire Line
	2350 3050 4000 3050
Wire Wire Line
	5800 3500 5150 3500
Connection ~ 5150 3500
Wire Wire Line
	4750 4900 4750 5100
Wire Wire Line
	3100 4050 3100 3200
Connection ~ 3100 3200
Wire Wire Line
	2350 2900 3700 2900
Wire Wire Line
	3400 4550 3400 4750
Wire Wire Line
	3700 3650 5800 3650
Connection ~ 3700 3650
Connection ~ 4750 3650
Wire Wire Line
	6750 6150 6750 4600
Connection ~ 6750 4800
Wire Wire Line
	7050 4600 7050 6150
Wire Wire Line
	8100 4600 8100 4800
Wire Wire Line
	5800 3200 4150 3200
Wire Wire Line
	4150 3200 4000 3050
Wire Wire Line
	2350 3200 4000 3200
Wire Wire Line
	4000 3200 4150 3050
Wire Wire Line
	4150 3050 5800 3050
Wire Wire Line
	5600 2750 5800 2750
Wire Wire Line
	4750 4500 4750 3650
Wire Wire Line
	5150 2700 5150 4500
Connection ~ 5150 3350
Wire Wire Line
	3700 2900 3700 4050
Wire Wire Line
	6750 900  6550 900 
Wire Wire Line
	5250 900  5450 900 
Wire Wire Line
	2550 3350 2350 3350
Wire Wire Line
	7650 1600 7650 1800
Wire Wire Line
	7200 1800 7200 1150
Wire Wire Line
	7200 1150 9800 1150
Wire Wire Line
	8600 3350 9800 3350
Wire Notes Line
	6850 900  8300 900 
Text Notes 6850 850  0    60   ~ 0
ID: open 1008xx, GND: 1012xx
$Comp
L GND #PWR03
U 1 1 4CF859A9
P 6900 1600
F 0 "#PWR03" H 6900 1600 30  0001 C CNN
F 1 "GND" H 6900 1530 30  0001 C CNN
	1    6900 1600
	-1   0    0    1   
$EndComp
NoConn ~ 7050 1800
NoConn ~ 8600 3500
$Comp
L C8051F326 U1
U 1 1 4C609C36
P 7200 3200
F 0 "U1" H 6200 4400 60  0000 C CNN
F 1 "C8051F326" H 7200 3200 60  0000 C CNN
F 2 "QFN28" H 7200 3200 60  0001 C CNN
	1    7200 3200
	1    0    0    -1  
$EndComp
NoConn ~ 7200 4600
NoConn ~ 7350 4600
$Comp
L USB_A_PLUG~ CON1
U 1 1 4CF4AD1B
P 1750 3150
F 0 "CON1" H 1950 3600 60  0000 C CNN
F 1 "USB_A_PLUG " H 1750 2750 60  0000 C CNN
	1    1750 3150
	-1   0    0    -1  
$EndComp
Text Notes 5750 6700 0    60   ~ 0
Space P11 through P14 at 100 mil interval close to board edge\nto allow use with a 0.1" header soldered to the board.
Text HLabel 9800 1150 2    60   Output ~ 0
TST
Text Label 2550 3200 0    60   ~ 0
D+
Text Label 2550 3050 0    60   ~ 0
D-
Text Notes 1100 1200 0    200  ~ 40
USB
$Comp
L VDD #PWR04
U 1 1 4C64122B
P 5150 2700
F 0 "#PWR04" H 5150 2800 30  0001 C CNN
F 1 "VDD" H 5150 2810 30  0000 C CNN
	1    5150 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4C6408C7
P 5150 5100
F 0 "#PWR05" H 5150 5100 30  0001 C CNN
F 1 "GND" H 5150 5030 30  0001 C CNN
	1    5150 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 4C6408C5
P 4750 5100
F 0 "#PWR06" H 4750 5100 30  0001 C CNN
F 1 "GND" H 4750 5030 30  0001 C CNN
	1    4750 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 4C6408BA
P 5600 2900
F 0 "#PWR07" H 5600 2900 30  0001 C CNN
F 1 "GND" H 5600 2830 30  0001 C CNN
	1    5600 2900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 4C6408AD
P 5250 900
F 0 "#PWR08" H 5250 900 30  0001 C CNN
F 1 "GND" H 5250 830 30  0001 C CNN
	1    5250 900 
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 4C6408A8
P 8100 4800
F 0 "#PWR09" H 8100 4800 30  0001 C CNN
F 1 "GND" H 8100 4730 30  0001 C CNN
	1    8100 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 4C6408A3
P 6400 6150
F 0 "#PWR010" H 6400 6150 30  0001 C CNN
F 1 "GND" H 6400 6080 30  0001 C CNN
	1    6400 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 4C64089F
P 2550 3550
F 0 "#PWR011" H 2550 3550 30  0001 C CNN
F 1 "GND" H 2550 3480 30  0001 C CNN
	1    2550 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 4C640899
P 1000 3550
F 0 "#PWR012" H 1000 3550 30  0001 C CNN
F 1 "GND" H 1000 3480 30  0001 C CNN
	1    1000 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 4C640896
P 3700 4750
F 0 "#PWR013" H 3700 4750 30  0001 C CNN
F 1 "GND" H 3700 4680 30  0001 C CNN
	1    3700 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 4C64088F
P 3400 4750
F 0 "#PWR014" H 3400 4750 30  0001 C CNN
F 1 "GND" H 3400 4680 30  0001 C CNN
	1    3400 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 4C64088A
P 3100 4750
F 0 "#PWR015" H 3100 4750 30  0001 C CNN
F 1 "GND" H 3100 4680 30  0001 C CNN
	1    3100 4750
	1    0    0    -1  
$EndComp
Text Label 6600 5950 1    60   ~ 0
GND
Text Label 7050 5950 1    60   ~ 0
C2D
Text Label 6750 5950 1    60   ~ 0
VBUS
Text Label 6900 5950 1    60   ~ 0
C2CK
Text HLabel 9800 1450 2    60   Output ~ 0
nRST_RF
Text HLabel 9800 1300 2    60   Output ~ 0
SLP_TR
$Comp
L VR VR3
U 1 1 4C64034D
P 3700 4300
F 0 "VR3" V 3780 4300 50  0000 C CNN
F 1 "5V6" V 3700 4300 50  0000 C CNN
F 2 "0402" H 3700 4300 60  0001 C CNN
	1    3700 4300
	-1   0    0    -1  
$EndComp
$Comp
L VR VR2
U 1 1 4C640343
P 3400 4300
F 0 "VR2" V 3480 4300 50  0000 C CNN
F 1 "5V6" V 3400 4300 50  0000 C CNN
F 2 "0402" H 3400 4300 60  0001 C CNN
	1    3400 4300
	-1   0    0    -1  
$EndComp
$Comp
L VR VR1
U 1 1 4C6402FB
P 3100 4300
F 0 "VR1" V 3180 4300 50  0000 C CNN
F 1 "5V6" V 3100 4300 50  0000 C CNN
F 2 "0402" H 3100 4300 60  0001 C CNN
	1    3100 4300
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4C6402F2
P 6300 900
F 0 "R1" V 6380 900 50  0000 C CNN
F 1 "68" V 6300 900 50  0000 C CNN
F 2 "0402" H 6300 900 60  0001 C CNN
	1    6300 900 
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 4C6402EE
P 5650 900
F 0 "D1" H 5650 1000 50  0000 C CNN
F 1 "LTST-C190KRKT" H 5650 800 50  0000 C CNN
F 2 "0603" H 5650 900 60  0001 C CNN
	1    5650 900 
	-1   0    0    -1  
$EndComp
Text HLabel 6050 1150 2    60   Input ~ 0
IRQ_RF
Text HLabel 9800 3350 2    60   Output ~ 0
nSS
Text HLabel 9800 1600 2    60   Output ~ 0
SCLK
Text HLabel 9800 3200 2    60   Output ~ 0
MOSI
Text HLabel 9800 3050 2    60   Input ~ 0
MISO
$Comp
L CONN_1 P14
U 1 1 4C640203
P 6600 6300
F 0 "P14" H 6680 6300 40  0000 L CNN
F 1 "CONN_1" H 6600 6355 30  0001 C CNN
F 2 "PAD_60x60" H 6600 6300 60  0001 C CNN
	1    6600 6300
	0    1    1    0   
$EndComp
$Comp
L CONN_1 P13
U 1 1 4C640202
P 7050 6300
F 0 "P13" H 7130 6300 40  0000 L CNN
F 1 "CONN_1" H 7050 6355 30  0001 C CNN
F 2 "PAD_60x60" H 7050 6300 60  0001 C CNN
	1    7050 6300
	0    1    1    0   
$EndComp
$Comp
L CONN_1 P12
U 1 1 4C640200
P 6900 6300
F 0 "P12" H 6980 6300 40  0000 L CNN
F 1 "CONN_1" H 6900 6355 30  0001 C CNN
F 2 "PAD_60x60" H 6900 6300 60  0001 C CNN
	1    6900 6300
	0    1    1    0   
$EndComp
$Comp
L CONN_1 P11
U 1 1 4C6401FE
P 6750 6300
F 0 "P11" H 6830 6300 40  0000 L CNN
F 1 "CONN_1" H 6750 6355 30  0001 C CNN
F 2 "PAD_60x60" H 6750 6300 60  0001 C CNN
	1    6750 6300
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 4C6401B3
P 5150 4700
F 0 "C2" H 5200 4800 50  0000 L CNN
F 1 "100nF" H 5200 4600 50  0000 L CNN
F 2 "0402" H 5150 4700 60  0001 C CNN
	1    5150 4700
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4C6401AA
P 4750 4700
F 0 "C1" H 4800 4800 50  0000 L CNN
F 1 "1uF" H 4800 4600 50  0000 L CNN
F 2 "0402" H 4750 4700 60  0001 C CNN
	1    4750 4700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
