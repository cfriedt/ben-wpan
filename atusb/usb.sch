EESchema Schematic File Version 2  date Fri Jan 28 03:53:22 2011
LIBS:power
LIBS:device
LIBS:conn
LIBS:at86rf231
LIBS:atmega8u2
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
Date "28 jan 2011"
Rev "20110123"
Comp "Werner Almesberger"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 3700 4200
Wire Wire Line
	3700 4000 3700 5350
Wire Wire Line
	9200 6450 6950 6450
Wire Wire Line
	6950 6450 6950 5800
Wire Wire Line
	9000 4200 9200 4200
Wire Wire Line
	9200 6150 7850 6150
Wire Wire Line
	7850 6150 7850 5800
Wire Wire Line
	8000 2600 8000 1650
Wire Wire Line
	9400 1650 9400 3750
Wire Wire Line
	9400 3750 9000 3750
Wire Wire Line
	6650 1650 6650 2450
Wire Wire Line
	7400 5800 7400 6000
Wire Wire Line
	9000 4500 9200 4500
Wire Wire Line
	9000 3300 9200 3300
Wire Wire Line
	5600 4200 5800 4200
Connection ~ 3700 4650
Wire Wire Line
	5800 4650 3700 4650
Wire Wire Line
	4850 4350 5800 4350
Wire Wire Line
	4350 4350 4150 4350
Wire Wire Line
	2350 4650 2550 4650
Wire Wire Line
	4100 3300 4300 3300
Wire Wire Line
	5400 3300 5600 3300
Wire Wire Line
	5150 5800 5150 3900
Wire Wire Line
	4150 4350 4000 4500
Wire Wire Line
	4000 4500 2350 4500
Wire Wire Line
	4000 4350 4150 4500
Wire Wire Line
	3400 5850 3400 6050
Wire Wire Line
	3700 4200 2350 4200
Connection ~ 3100 4500
Wire Wire Line
	3100 5350 3100 4500
Wire Wire Line
	4750 6200 4750 6400
Connection ~ 5150 4800
Wire Wire Line
	5800 4800 5150 4800
Wire Wire Line
	4000 4350 2350 4350
Wire Wire Line
	2550 4650 2550 4850
Wire Wire Line
	1000 4850 1000 4200
Connection ~ 1000 4650
Wire Wire Line
	1200 4650 1000 4650
Wire Wire Line
	1000 4200 1200 4200
Wire Wire Line
	5150 6200 5150 6400
Wire Wire Line
	3400 5350 3400 4350
Connection ~ 3400 4350
Wire Wire Line
	3100 5850 3100 6050
Wire Wire Line
	3700 5850 3700 6050
Wire Wire Line
	4900 3300 4700 3300
Wire Wire Line
	4150 4500 4350 4500
Wire Wire Line
	4850 4500 5800 4500
Wire Wire Line
	4750 5800 4750 4650
Connection ~ 4750 4650
Wire Wire Line
	5150 4050 5800 4050
Connection ~ 5150 4050
Wire Wire Line
	7250 5800 7250 6000
Wire Wire Line
	9000 4800 9200 4800
Wire Wire Line
	6950 1650 6950 2600
Wire Wire Line
	6800 1650 6800 2450
Wire Wire Line
	9000 3900 9550 3900
Wire Wire Line
	9550 3900 9550 1650
Wire Wire Line
	8000 5800 8000 6000
Wire Wire Line
	8000 6000 9200 6000
Wire Wire Line
	7700 5800 7700 6300
Wire Wire Line
	7700 6300 9200 6300
Wire Wire Line
	9000 4350 9200 4350
Wire Wire Line
	5800 3750 5600 3750
Wire Wire Line
	5600 3750 5600 3300
$Comp
L PWR_FLAG #FLG03
U 1 1 4D426152
P 3700 4000
F 0 "#FLG03" H 3700 4270 30  0001 C CNN
F 1 "PWR_FLAG" H 3700 4230 30  0000 C CNN
	1    3700 4000
	1    0    0    -1  
$EndComp
Text Label 6950 2150 1    60   ~ 0
nRESET
Text Label 9550 2150 1    60   ~ 0
SCK
Text HLabel 9200 6450 2    60   Input ~ 0
CLK
NoConn ~ 7100 5800
NoConn ~ 7700 2600
NoConn ~ 7850 2600
NoConn ~ 7550 2600
NoConn ~ 7400 2600
NoConn ~ 7250 2600
NoConn ~ 7100 2600
NoConn ~ 9000 4050
NoConn ~ 9000 4650
NoConn ~ 7550 5800
$Comp
L CONN_1 P16
U 1 1 4D425D62
P 9550 1500
F 0 "P16" H 9630 1500 40  0000 L CNN
F 1 "CONN_1" H 9550 1555 30  0001 C CNN
F 2 "PAD_60x60" H 9550 1500 60  0001 C CNN
	1    9550 1500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P15
U 1 1 4D425D53
P 9400 1500
F 0 "P15" H 9480 1500 40  0000 L CNN
F 1 "CONN_1" H 9400 1555 30  0001 C CNN
F 2 "PAD_60x60" H 9400 1500 60  0001 C CNN
	1    9400 1500
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR04
U 1 1 4D425CE8
P 6800 2450
F 0 "#PWR04" H 6800 2550 30  0001 C CNN
F 1 "VDD" H 6800 2560 30  0000 C CNN
	1    6800 2450
	-1   0    0    1   
$EndComp
NoConn ~ 5800 3900
$Comp
L VDD #PWR05
U 1 1 4D425C10
P 7400 6000
F 0 "#PWR05" H 7400 6100 30  0001 C CNN
F 1 "VDD" H 7400 6110 30  0000 C CNN
	1    7400 6000
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 4D4258DC
P 4600 4500
F 0 "R5" V 4680 4500 50  0000 C CNN
F 1 "22" V 4600 4500 50  0000 C CNN
F 2 "0402" H 4600 4500 60  0001 C CNN
	1    4600 4500
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 4D4258D9
P 4600 4350
F 0 "R4" V 4680 4350 50  0000 C CNN
F 1 "22" V 4600 4350 50  0000 C CNN
F 2 "0402" H 4600 4350 60  0001 C CNN
	1    4600 4350
	0    -1   -1   0   
$EndComp
$Comp
L ATMEGAU2 U1
U 1 1 4D425860
P 7400 4200
F 0 "U1" V 8750 5450 60  0000 C CNN
F 1 "ATMEGA32U2" V 7100 4600 60  0000 C CNN
F 2 "QFN32-VHHD-2" H 7400 4200 60  0001 C CNN
	1    7400 4200
	0    -1   -1   0   
$EndComp
Text Notes 2600 6300 0    60   ~ 0
USB 2.0 limits the capacitative load\non full-speed drivers to 50 pF.
$Comp
L GND #PWR06
U 1 1 4CF859A9
P 9200 3300
F 0 "#PWR06" H 9200 3300 30  0001 C CNN
F 1 "GND" H 9200 3230 30  0001 C CNN
	1    9200 3300
	0    -1   -1   0   
$EndComp
$Comp
L USB_A_PLUG~ CON1
U 1 1 4CF4AD1B
P 1750 4450
F 0 "CON1" H 1950 4900 60  0000 C CNN
F 1 "USB_A_PLUG " H 1750 4050 60  0000 C CNN
	1    1750 4450
	-1   0    0    -1  
$EndComp
Text Notes 6550 1000 0    60   ~ 0
Space P11 through P16 at 100 mil interval close to board edge\nto allow use with a 0.1" header soldered to the board.
Text Label 2550 4500 0    60   ~ 0
D+
Text Label 2550 4350 0    60   ~ 0
D-
Text Notes 1100 2500 0    200  ~ 40
USB
$Comp
L VDD #PWR07
U 1 1 4C64122B
P 5150 3900
F 0 "#PWR07" H 5150 4000 30  0001 C CNN
F 1 "VDD" H 5150 4010 30  0000 C CNN
	1    5150 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 4C6408C7
P 5150 6400
F 0 "#PWR08" H 5150 6400 30  0001 C CNN
F 1 "GND" H 5150 6330 30  0001 C CNN
	1    5150 6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 4C6408C5
P 4750 6400
F 0 "#PWR09" H 4750 6400 30  0001 C CNN
F 1 "GND" H 4750 6330 30  0001 C CNN
	1    4750 6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 4C6408BA
P 5600 4200
F 0 "#PWR010" H 5600 4200 30  0001 C CNN
F 1 "GND" H 5600 4130 30  0001 C CNN
	1    5600 4200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 4C6408AD
P 4100 3300
F 0 "#PWR011" H 4100 3300 30  0001 C CNN
F 1 "GND" H 4100 3230 30  0001 C CNN
	1    4100 3300
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR012
U 1 1 4C6408A8
P 7250 6000
F 0 "#PWR012" H 7250 6000 30  0001 C CNN
F 1 "GND" H 7250 5930 30  0001 C CNN
	1    7250 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 4C6408A3
P 6650 2450
F 0 "#PWR013" H 6650 2450 30  0001 C CNN
F 1 "GND" H 6650 2380 30  0001 C CNN
	1    6650 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 4C64089F
P 2550 4850
F 0 "#PWR014" H 2550 4850 30  0001 C CNN
F 1 "GND" H 2550 4780 30  0001 C CNN
	1    2550 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 4C640899
P 1000 4850
F 0 "#PWR015" H 1000 4850 30  0001 C CNN
F 1 "GND" H 1000 4780 30  0001 C CNN
	1    1000 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 4C640896
P 3700 6050
F 0 "#PWR016" H 3700 6050 30  0001 C CNN
F 1 "GND" H 3700 5980 30  0001 C CNN
	1    3700 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 4C64088F
P 3400 6050
F 0 "#PWR017" H 3400 6050 30  0001 C CNN
F 1 "GND" H 3400 5980 30  0001 C CNN
	1    3400 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 4C64088A
P 3100 6050
F 0 "#PWR018" H 3100 6050 30  0001 C CNN
F 1 "GND" H 3100 5980 30  0001 C CNN
	1    3100 6050
	1    0    0    -1  
$EndComp
Text Label 6650 2150 1    60   ~ 0
GND
Text Label 8000 2150 1    60   ~ 0
PDO
Text Label 6800 2150 1    60   ~ 0
VDD
Text Label 9400 2150 1    60   ~ 0
PDI
Text HLabel 9200 4200 2    60   Output ~ 0
nRST_RF
Text HLabel 9200 4350 2    60   Output ~ 0
SLP_TR
$Comp
L VR VR3
U 1 1 4C64034D
P 3700 5600
F 0 "VR3" V 3780 5600 50  0000 C CNN
F 1 "5V6" V 3700 5600 50  0000 C CNN
F 2 "0402" H 3700 5600 60  0001 C CNN
F 4 "33pF" V 3600 5700 50  0000 C CNN "Field4"
	1    3700 5600
	-1   0    0    -1  
$EndComp
$Comp
L VR VR2
U 1 1 4C640343
P 3400 5600
F 0 "VR2" V 3480 5600 50  0000 C CNN
F 1 "5V6" V 3400 5600 50  0000 C CNN
F 2 "0402" H 3400 5600 60  0001 C CNN
F 4 "33pF" V 3300 5700 50  0000 C CNN "Field4"
	1    3400 5600
	-1   0    0    -1  
$EndComp
$Comp
L VR VR1
U 1 1 4C6402FB
P 3100 5600
F 0 "VR1" V 3180 5600 50  0000 C CNN
F 1 "5V6" V 3100 5600 50  0000 C CNN
F 2 "0402" H 3100 5600 60  0001 C CNN
F 4 "33pF" V 3000 5700 50  0000 C CNN "Field4"
	1    3100 5600
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4C6402F2
P 5150 3300
F 0 "R1" V 5230 3300 50  0000 C CNN
F 1 "68" V 5150 3300 50  0000 C CNN
F 2 "0402" H 5150 3300 60  0001 C CNN
	1    5150 3300
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 4C6402EE
P 4500 3300
F 0 "D1" H 4500 3400 50  0000 C CNN
F 1 "LTST-C190KRKT" H 4500 3200 50  0000 C CNN
F 2 "0603" H 4500 3300 60  0001 C CNN
	1    4500 3300
	-1   0    0    -1  
$EndComp
Text HLabel 9200 6300 2    60   Input ~ 0
IRQ_RF
Text HLabel 9200 6150 2    60   Output ~ 0
nSS
Text HLabel 9200 4500 2    60   Output ~ 0
SCLK
Text HLabel 9200 4800 2    60   Output ~ 0
MOSI
Text HLabel 9200 6000 2    60   Input ~ 0
MISO
$Comp
L CONN_1 P14
U 1 1 4C640203
P 8000 1500
F 0 "P14" H 8080 1500 40  0000 L CNN
F 1 "CONN_1" H 8000 1555 30  0001 C CNN
F 2 "PAD_60x60" H 8000 1500 60  0001 C CNN
	1    8000 1500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P13
U 1 1 4C640202
P 6950 1500
F 0 "P13" H 7030 1500 40  0000 L CNN
F 1 "CONN_1" H 6950 1555 30  0001 C CNN
F 2 "PAD_60x60" H 6950 1500 60  0001 C CNN
	1    6950 1500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P12
U 1 1 4C640200
P 6800 1500
F 0 "P12" H 6880 1500 40  0000 L CNN
F 1 "CONN_1" H 6800 1555 30  0001 C CNN
F 2 "PAD_60x60" H 6800 1500 60  0001 C CNN
	1    6800 1500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P11
U 1 1 4C6401FE
P 6650 1500
F 0 "P11" H 6730 1500 40  0000 L CNN
F 1 "CONN_1" H 6650 1555 30  0001 C CNN
F 2 "PAD_60x60" H 6650 1500 60  0001 C CNN
	1    6650 1500
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 4C6401B3
P 5150 6000
F 0 "C2" H 5200 6100 50  0000 L CNN
F 1 "1uF" H 5200 5900 50  0000 L CNN
F 2 "0402" H 5150 6000 60  0001 C CNN
	1    5150 6000
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4C6401AA
P 4750 6000
F 0 "C1" H 4800 6100 50  0000 L CNN
F 1 "10uF" H 4800 5900 50  0000 L CNN
F 2 "0603" H 4750 6000 60  0001 C CNN
	1    4750 6000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
