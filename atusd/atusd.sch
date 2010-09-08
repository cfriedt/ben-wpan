EESchema Schematic File Version 2  date Wed Sep  8 16:37:04 2010
LIBS:power
LIBS:device
LIBS:conn
LIBS:at86rf230
LIBS:antenna
LIBS:balun
LIBS:dtc123
LIBS:atusd-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "IEEE 802.15.4 uSD Transceiver (AT86RF230)"
Date "8 sep 2010"
Rev "100908"
Comp "Werner Almesberger"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6150 5350 6150 6050
Wire Wire Line
	10400 3650 7850 3650
Wire Wire Line
	7850 4100 8250 4100
Wire Wire Line
	8250 4100 8250 4150
Wire Wire Line
	8250 4150 10400 4150
Wire Wire Line
	7850 4250 10400 4250
Wire Wire Line
	4050 3700 4250 3700
Wire Wire Line
	4250 3700 4250 4100
Wire Wire Line
	4250 4100 5050 4100
Wire Wire Line
	9900 6350 9900 6550
Wire Wire Line
	9550 5500 9550 5300
Wire Wire Line
	3450 4300 3450 3900
Wire Wire Line
	3450 3900 3250 3900
Wire Wire Line
	3250 3700 3650 3700
Wire Wire Line
	2450 3700 2000 3700
Wire Wire Line
	1400 3700 1000 3700
Wire Wire Line
	8150 2900 8150 2700
Connection ~ 8150 2000
Wire Wire Line
	8150 2000 6900 2000
Wire Wire Line
	6900 2000 6900 2550
Wire Wire Line
	8350 1100 8150 1100
Wire Wire Line
	8150 1100 8150 1300
Wire Wire Line
	9100 3950 10400 3950
Wire Wire Line
	9300 5500 9300 4050
Wire Wire Line
	9300 4050 10400 4050
Wire Wire Line
	1000 3800 1200 3800
Connection ~ 6200 1150
Wire Wire Line
	6200 950  6200 1150
Wire Wire Line
	5950 1150 6450 1150
Wire Wire Line
	5950 1150 5950 1350
Wire Wire Line
	6300 1950 6300 1750
Connection ~ 6000 2350
Wire Wire Line
	6000 2550 6000 2350
Wire Wire Line
	5850 2350 5850 2550
Wire Wire Line
	6150 2550 6150 2350
Connection ~ 4850 3800
Wire Wire Line
	4850 3800 5050 3800
Wire Wire Line
	4850 3500 5050 3500
Wire Wire Line
	7350 5750 7350 5350
Wire Wire Line
	6750 6650 6750 6850
Connection ~ 5850 5550
Wire Wire Line
	5850 5550 6000 5550
Wire Wire Line
	6000 5550 6000 5350
Wire Wire Line
	6300 5750 6300 5350
Wire Wire Line
	7850 3950 8050 3950
Wire Wire Line
	7850 4550 8700 4550
Wire Wire Line
	4350 4550 5050 4550
Connection ~ 6450 5550
Wire Wire Line
	6450 5550 6600 5550
Wire Wire Line
	6600 5550 6600 5350
Wire Wire Line
	6450 5350 6450 6250
Wire Wire Line
	6750 5350 6750 6250
Wire Wire Line
	6900 5750 6900 5350
Wire Wire Line
	7850 4400 8050 4400
Wire Wire Line
	8050 3950 8050 4750
Connection ~ 8050 4400
Wire Wire Line
	5850 5750 5850 5350
Wire Wire Line
	6450 6850 6450 6650
Wire Wire Line
	4850 3650 5050 3650
Connection ~ 4850 3650
Wire Wire Line
	5050 4250 4850 4250
Connection ~ 4850 4250
Wire Wire Line
	4850 4750 4850 2350
Wire Wire Line
	4850 2350 6150 2350
Connection ~ 5850 2350
Connection ~ 4850 3500
Wire Wire Line
	6300 2550 6300 2350
Wire Wire Line
	6600 2550 6600 2350
Wire Wire Line
	6450 1150 6450 2550
Wire Wire Line
	5950 1950 5950 1750
Wire Wire Line
	6950 6050 6750 6050
Connection ~ 6750 6050
Connection ~ 9300 5300
Wire Wire Line
	9550 5300 9300 5300
Wire Wire Line
	10400 3850 9300 3850
Wire Wire Line
	9300 3850 9300 2900
Wire Wire Line
	8150 1800 8150 2200
Wire Wire Line
	8750 1100 8950 1100
Wire Wire Line
	1200 3800 1200 4000
Wire Wire Line
	2450 4100 2250 4100
Wire Wire Line
	2250 4100 2250 4300
Wire Wire Line
	8700 4550 8700 4750
Wire Wire Line
	3650 4100 3250 4100
Wire Wire Line
	9500 6700 9500 6500
Wire Wire Line
	4050 4100 4150 4100
Wire Wire Line
	4150 4100 4150 3950
Wire Wire Line
	4150 3950 5050 3950
Wire Wire Line
	4650 4400 5050 4400
Wire Wire Line
	10400 3750 8250 3750
Wire Wire Line
	8250 3750 8250 3800
Wire Wire Line
	8250 3800 7850 3800
Wire Wire Line
	10400 3550 8050 3550
Wire Wire Line
	8050 3550 8050 3500
Wire Wire Line
	8050 3500 7850 3500
$Comp
L DGND #PWR9
U 1 1 4C87E5A4
P 6150 6050
F 0 "#PWR9" H 6150 6050 40  0001 C CNN
F 1 "DGND" H 6150 5980 40  0000 C CNN
	1    6150 6050
	1    0    0    -1  
$EndComp
Text Label 2150 3700 0    60   ~ 0
FEED
$Comp
L AT86RF230 U1
U 1 1 4C609C4B
P 6450 3950
F 0 "U1" H 5450 5150 60  0000 C CNN
F 1 "AT86RF230" H 6450 3950 60  0000 C CNN
F 2 "QFN32" H 6450 3950 60  0001 C CNN
	1    6450 3950
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR5
U 1 1 4C803013
P 4650 4400
F 0 "#PWR5" H 4650 4400 40  0001 C CNN
F 1 "DGND" H 4650 4330 40  0000 C CNN
	1    4650 4400
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR01
U 1 1 4C7FE9AE
P 9900 6350
F 0 "#PWR01" H 9900 6450 30  0001 C CNN
F 1 "VDD" H 9900 6460 30  0000 C CNN
	1    9900 6350
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR02
U 1 1 4C7FE9A9
P 9500 6700
F 0 "#PWR02" H 9500 6700 40  0001 C CNN
F 1 "AGND" H 9500 6630 50  0000 C CNN
	1    9500 6700
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 4C7FE9A5
P 9900 6550
F 0 "#FLG03" H 9900 6820 30  0001 C CNN
F 1 "PWR_FLAG" H 9900 6780 30  0000 C CNN
	1    9900 6550
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 4C7FE973
P 9500 6500
F 0 "#FLG04" H 9500 6770 30  0001 C CNN
F 1 "PWR_FLAG" H 9500 6730 30  0000 C CNN
	1    9500 6500
	1    0    0    -1  
$EndComp
$Comp
L BALUN B1
U 1 1 4C7FE8A6
P 2850 3900
F 0 "B1" H 2850 4250 60  0000 C CNN
F 1 "748421245" H 2850 3500 60  0000 C CNN
F 2 "805-6" H 2850 3900 60  0001 C CNN
	1    2850 3900
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR05
U 1 1 4C7FD425
P 3450 4300
F 0 "#PWR05" H 3450 4300 40  0001 C CNN
F 1 "AGND" H 3450 4230 50  0000 C CNN
	1    3450 4300
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR06
U 1 1 4C7FD41F
P 2250 4300
F 0 "#PWR06" H 2250 4300 40  0001 C CNN
F 1 "AGND" H 2250 4230 50  0000 C CNN
	1    2250 4300
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 4C7FCA54
P 1700 3700
F 0 "L1" V 1650 3700 40  0000 C CNN
F 1 "0R" V 1800 3700 40  0000 C CNN
F 2 "0402" V 1700 3700 60  0001 C CNN
	1    1700 3700
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 4C7FBF1E
P 3850 4100
F 0 "C2" H 3900 4200 50  0000 L CNN
F 1 "22pF" H 3900 4000 50  0000 L CNN
F 2 "0402" H 3850 4100 60  0001 C CNN
	1    3850 4100
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 4C7FBF1B
P 3850 3700
F 0 "C1" H 3900 3800 50  0000 L CNN
F 1 "22pF" H 3900 3600 50  0000 L CNN
F 2 "0402" H 3850 3700 60  0001 C CNN
	1    3850 3700
	0    -1   -1   0   
$EndComp
$Comp
L DGND #PWR20
U 1 1 4C7FBE4B
P 8150 2900
F 0 "#PWR20" H 8150 2900 40  0001 C CNN
F 1 "DGND" H 8150 2830 40  0000 C CNN
	1    8150 2900
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 4C7FBDBF
P 8150 2450
F 0 "R4" V 8230 2450 50  0000 C CNN
F 1 "10k" V 8150 2450 50  0000 C CNN
F 2 "0402" H 8150 2450 60  0001 C CNN
	1    8150 2450
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 4C7FBDBD
P 8150 1550
F 0 "R3" V 8230 1550 50  0000 C CNN
F 1 "56k" V 8150 1550 50  0000 C CNN
F 2 "0402" H 8150 1550 60  0001 C CNN
	1    8150 1550
	-1   0    0    1   
$EndComp
Text GLabel 8950 1100 2    60   Input ~ 0
CLK_16M
NoConn ~ 6750 2550
$Comp
L C C7
U 1 1 4C7FBD45
P 8550 1100
F 0 "C7" H 8600 1200 50  0000 L CNN
F 1 "22pF" H 8600 1000 50  0000 L CNN
F 2 "0402" H 8550 1100 60  0001 C CNN
	1    8550 1100
	0    -1   -1   0   
$EndComp
$Comp
L VDD #PWR07
U 1 1 4C7FBBB2
P 4350 4550
F 0 "#PWR07" H 4350 4650 30  0001 C CNN
F 1 "VDD" H 4350 4660 30  0000 C CNN
	1    4350 4550
	0    -1   -1   0   
$EndComp
Text GLabel 9100 3950 0    60   Output ~ 0
CLK_16M
$Comp
L VDD #PWR08
U 1 1 4C7FBA67
P 9300 2900
F 0 "#PWR08" H 9300 3000 30  0001 C CNN
F 1 "VDD" H 9300 3010 30  0000 C CNN
	1    9300 2900
	1    0    0    -1  
$EndComp
Text Label 9500 4250 0    60   ~ 0
DAT1(PD11)
Text Label 9500 4150 0    60   ~ 0
DAT0(PD10)
Text Label 9500 4050 0    60   ~ 0
VSS
Text Label 9500 3950 0    60   ~ 0
CLK(PD09)
Text Label 9500 3850 0    60   ~ 0
VDD
Text Label 9500 3750 0    60   ~ 0
CMD(PD08)
Text Label 9500 3650 0    60   ~ 0
DAT3/CD(PD13)
Text Label 9500 3550 0    60   ~ 0
DAT2(PD12)
$Comp
L CONN_8 P2
U 1 1 4C7FB8B3
P 10750 3900
F 0 "P2" V 10700 3900 60  0000 C CNN
F 1 "CONN_8" V 10800 3900 60  0000 C CNN
F 2 "uSD-Card" H 10750 3900 60  0001 C CNN
	1    10750 3900
	1    0    0    -1  
$EndComp
Text Label 8250 4550 0    60   ~ 0
CLKM
Text Label 4450 4100 0    60   ~ 0
RFN
Text Label 4450 3950 0    60   ~ 0
RPF
$Comp
L DGND #PWR22
U 1 1 4C641B55
P 9300 5500
F 0 "#PWR22" H 9300 5500 40  0001 C CNN
F 1 "DGND" H 9300 5430 40  0000 C CNN
	1    9300 5500
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR09
U 1 1 4C641B53
P 9550 5500
F 0 "#PWR09" H 9550 5500 40  0001 C CNN
F 1 "AGND" H 9550 5430 50  0000 C CNN
	1    9550 5500
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR010
U 1 1 4C641731
P 1200 4000
F 0 "#PWR010" H 1200 4000 40  0001 C CNN
F 1 "AGND" H 1200 3930 50  0000 C CNN
	1    1200 4000
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR011
U 1 1 4C641205
P 6950 6050
F 0 "#PWR011" H 6950 6150 30  0001 C CNN
F 1 "VDD" H 6950 6160 30  0000 C CNN
	1    6950 6050
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR012
U 1 1 4C6411DB
P 6200 950
F 0 "#PWR012" H 6200 1050 30  0001 C CNN
F 1 "VDD" H 6200 1060 30  0000 C CNN
	1    6200 950 
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR013
U 1 1 4C641100
P 5950 1950
F 0 "#PWR013" H 5950 1950 40  0001 C CNN
F 1 "AGND" H 5950 1880 50  0000 C CNN
	1    5950 1950
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR014
U 1 1 4C64109A
P 6600 2350
F 0 "#PWR014" H 6600 2350 40  0001 C CNN
F 1 "AGND" H 6600 2280 50  0000 C CNN
	1    6600 2350
	-1   0    0    1   
$EndComp
$Comp
L DGND #PWR11
U 1 1 4C641010
P 6300 1750
F 0 "#PWR11" H 6300 1750 40  0001 C CNN
F 1 "DGND" H 6300 1680 40  0000 C CNN
	1    6300 1750
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 4C641004
P 6300 2150
F 0 "C4" H 6350 2250 50  0000 L CNN
F 1 "1uF" H 6350 2050 50  0000 L CNN
F 2 "0402" H 6300 2150 60  0001 C CNN
	1    6300 2150
	-1   0    0    -1  
$EndComp
$Comp
L AGND #PWR015
U 1 1 4C640D33
P 4850 4750
F 0 "#PWR015" H 4850 4750 40  0001 C CNN
F 1 "AGND" H 4850 4680 50  0000 C CNN
	1    4850 4750
	1    0    0    -1  
$EndComp
$Comp
L TST P1
U 1 1 4C640CD5
P 8700 4750
F 0 "P1" H 8700 5050 40  0000 C CNN
F 1 "TST" H 8700 5000 30  0000 C CNN
F 2 "PAD_60x60" H 8700 4750 60  0001 C CNN
	1    8700 4750
	-1   0    0    1   
$EndComp
$Comp
L AGND #PWR016
U 1 1 4C640CBA
P 7350 5750
F 0 "#PWR016" H 7350 5750 40  0001 C CNN
F 1 "AGND" H 7350 5680 50  0000 C CNN
	1    7350 5750
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR13
U 1 1 4C640C4C
P 6450 6850
F 0 "#PWR13" H 6450 6850 40  0001 C CNN
F 1 "DGND" H 6450 6780 40  0000 C CNN
	1    6450 6850
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR15
U 1 1 4C640C48
P 6750 6850
F 0 "#PWR15" H 6750 6850 40  0001 C CNN
F 1 "DGND" H 6750 6780 40  0000 C CNN
	1    6750 6850
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR7
U 1 1 4C640C14
P 5850 5750
F 0 "#PWR7" H 5850 5750 40  0001 C CNN
F 1 "DGND" H 5850 5680 40  0000 C CNN
	1    5850 5750
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR19
U 1 1 4C640BFC
P 8050 4750
F 0 "#PWR19" H 8050 4750 40  0001 C CNN
F 1 "DGND" H 8050 4680 40  0000 C CNN
	1    8050 4750
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR12
U 1 1 4C640BF7
P 6300 5750
F 0 "#PWR12" H 6300 5750 40  0001 C CNN
F 1 "DGND" H 6300 5680 40  0000 C CNN
	1    6300 5750
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR16
U 1 1 4C640BD2
P 6900 5750
F 0 "#PWR16" H 6900 5750 40  0001 C CNN
F 1 "DGND" H 6900 5680 40  0000 C CNN
	1    6900 5750
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4C640A84
P 6450 6450
F 0 "C5" H 6500 6550 50  0000 L CNN
F 1 "1uF" H 6500 6350 50  0000 L CNN
F 2 "0402" H 6450 6450 60  0001 C CNN
	1    6450 6450
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 4C640A7E
P 6750 6450
F 0 "C6" H 6800 6550 50  0000 L CNN
F 1 "1uF" H 6800 6350 50  0000 L CNN
F 2 "0402" H 6750 6450 60  0001 C CNN
	1    6750 6450
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4C640A76
P 5950 1550
F 0 "C3" H 6000 1650 50  0000 L CNN
F 1 "1uF" H 6000 1450 50  0000 L CNN
F 2 "0402" H 5950 1550 60  0001 C CNN
	1    5950 1550
	-1   0    0    -1  
$EndComp
$Comp
L ANTENNA ANT1
U 1 1 4C63FE17
P 700 3750
F 0 "ANT1" H 700 4000 60  0000 C CNN
F 1 "50R" H 700 3500 60  0000 C CNN
F 2 "meander" H 700 3750 60  0001 C CNN
	1    700  3750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
