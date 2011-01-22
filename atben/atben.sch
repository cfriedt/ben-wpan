EESchema Schematic File Version 2  date Sat Jan 22 11:58:03 2011
LIBS:power
LIBS:device
LIBS:conn
LIBS:at86rf231
LIBS:antenna
LIBS:balun-smt6
LIBS:xtal-4
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "IEEE 802.15.4 Transceiver (AT86RF231) as 8:10 card"
Date "22 jan 2011"
Rev "20110115"
Comp "Werner Almesberger"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2200 4200 2200 4400
Connection ~ 9250 1750
Wire Wire Line
	8850 1750 9250 1750
Connection ~ 9250 2250
Wire Wire Line
	9250 2450 9250 950 
Connection ~ 8450 2250
Wire Wire Line
	8450 2050 8450 2250
Wire Wire Line
	8650 950  7150 950 
Wire Wire Line
	7150 950  7150 2450
Connection ~ 3850 3800
Wire Wire Line
	3850 4200 3850 3400
Connection ~ 2650 4100
Wire Wire Line
	2850 4100 2650 4100
Wire Wire Line
	6550 5250 6550 5950
Wire Wire Line
	10500 3550 8250 3550
Wire Wire Line
	8250 4000 8650 4000
Wire Wire Line
	8650 4000 8650 4050
Wire Wire Line
	8650 4050 10500 4050
Wire Wire Line
	8250 4150 10500 4150
Wire Wire Line
	4450 3600 4650 3600
Wire Wire Line
	4650 3600 4650 4000
Wire Wire Line
	4650 4000 5450 4000
Wire Wire Line
	10000 6250 10000 6450
Wire Wire Line
	9650 5400 9650 5200
Wire Wire Line
	3650 3800 3850 3800
Wire Wire Line
	3650 3600 4050 3600
Wire Wire Line
	2850 3600 2000 3600
Wire Wire Line
	1500 3600 1100 3600
Wire Wire Line
	9200 3850 10500 3850
Wire Wire Line
	9400 5400 9400 3950
Wire Wire Line
	9400 3950 10500 3950
Wire Wire Line
	1100 3700 1300 3700
Connection ~ 6600 1050
Wire Wire Line
	6600 850  6600 1050
Wire Wire Line
	6350 1050 6850 1050
Wire Wire Line
	6350 1050 6350 1250
Wire Wire Line
	6700 1850 6700 1650
Connection ~ 6400 2250
Wire Wire Line
	6400 2450 6400 2250
Wire Wire Line
	6250 2250 6250 2450
Wire Wire Line
	6550 2450 6550 2250
Connection ~ 5250 3700
Wire Wire Line
	5250 3700 5450 3700
Wire Wire Line
	5250 3400 5450 3400
Wire Wire Line
	7750 5650 7750 5250
Wire Wire Line
	7150 6550 7150 6750
Connection ~ 6250 5450
Wire Wire Line
	6250 5450 6400 5450
Wire Wire Line
	6400 5450 6400 5250
Wire Wire Line
	6700 5650 6700 5250
Wire Wire Line
	8250 3850 8450 3850
Wire Wire Line
	8250 4450 9100 4450
Wire Wire Line
	4750 4450 5450 4450
Connection ~ 6850 5450
Wire Wire Line
	6850 5450 7000 5450
Wire Wire Line
	7000 5450 7000 5250
Wire Wire Line
	6850 5250 6850 6150
Wire Wire Line
	7150 5250 7150 6150
Wire Wire Line
	7300 5650 7300 5250
Wire Wire Line
	8250 4300 8450 4300
Wire Wire Line
	8450 3850 8450 4650
Connection ~ 8450 4300
Wire Wire Line
	6250 5650 6250 5250
Wire Wire Line
	6850 6750 6850 6550
Wire Wire Line
	5250 3550 5450 3550
Connection ~ 5250 3550
Wire Wire Line
	5450 4150 5250 4150
Connection ~ 5250 4150
Wire Wire Line
	5250 4650 5250 2250
Wire Wire Line
	5250 2250 6550 2250
Connection ~ 6250 2250
Connection ~ 5250 3400
Wire Wire Line
	6700 2450 6700 2250
Wire Wire Line
	7000 2450 7000 2250
Wire Wire Line
	6850 1050 6850 2450
Wire Wire Line
	6350 1850 6350 1650
Wire Wire Line
	7350 5950 7150 5950
Connection ~ 7150 5950
Connection ~ 9400 5200
Wire Wire Line
	9650 5200 9400 5200
Wire Wire Line
	10500 3750 9400 3750
Wire Wire Line
	9400 3750 9400 2800
Wire Wire Line
	1300 3700 1300 3900
Wire Wire Line
	2850 4000 2650 4000
Wire Wire Line
	2650 4000 2650 4800
Wire Wire Line
	9100 4450 9100 4650
Wire Wire Line
	4050 4000 3650 4000
Wire Wire Line
	9600 6600 9600 6400
Wire Wire Line
	4450 4000 4550 4000
Wire Wire Line
	4550 4000 4550 3850
Wire Wire Line
	4550 3850 5450 3850
Wire Wire Line
	5050 4300 5450 4300
Wire Wire Line
	10500 3650 8650 3650
Wire Wire Line
	8650 3650 8650 3700
Wire Wire Line
	8650 3700 8250 3700
Wire Wire Line
	10500 3450 8450 3450
Wire Wire Line
	8450 3450 8450 3400
Wire Wire Line
	8450 3400 8250 3400
Wire Wire Line
	3850 4600 3850 4800
Wire Wire Line
	7300 2450 7300 2250
Wire Wire Line
	7300 2250 8650 2250
Wire Wire Line
	8450 1150 8450 950 
Connection ~ 8450 950 
Wire Wire Line
	9250 950  9050 950 
Wire Wire Line
	9250 2250 9050 2250
Wire Wire Line
	8850 1450 9250 1450
Connection ~ 9250 1450
Wire Wire Line
	2200 3800 2200 3600
Connection ~ 2200 3600
$Comp
L AGND #PWR2
U 1 1 4D3AF039
P 2200 4400
F 0 "#PWR2" H 2200 4400 40  0001 C CNN
F 1 "AGND" H 2200 4330 50  0000 C CNN
	1    2200 4400
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 4D3AF01F
P 2200 4000
F 0 "C12" H 2250 4100 50  0000 L CNN
F 1 "NC" H 2250 3900 50  0000 L CNN
F 2 "0402" H 2200 4000 60  0001 C CNN
	1    2200 4000
	1    0    0    -1  
$EndComp
Text GLabel 6550 5950 3    60   Input ~ 0
sLP_TR
$Comp
L C C10
U 1 1 4D317091
P 8850 950
F 0 "C10" H 8900 1050 50  0000 L CNN
F 1 "12pF" H 8900 850 50  0000 L CNN
F 2 "0402" H 8850 950 60  0001 C CNN
	1    8850 950 
	0    1    1    0   
$EndComp
$Comp
L C C11
U 1 1 4D317089
P 8850 2250
F 0 "C11" H 8900 2350 50  0000 L CNN
F 1 "12pF" H 8900 2150 50  0000 L CNN
F 2 "0402" H 8850 2250 60  0001 C CNN
	1    8850 2250
	0    1    1    0   
$EndComp
$Comp
L XTAL-4 X1
U 1 1 4D317045
P 8450 1600
F 0 "X1" V 8700 2200 60  0000 C CNN
F 1 "16MHz" V 8550 2100 60  0000 C CNN
F 2 "xtal4-3.2mmx2.5mm" H 8450 1600 60  0001 C CNN
F 4 "8pF" V 8400 2150 60  0000 C CNN "Field4"
F 5 "40ppm" V 8300 2100 60  0000 C CNN "Field5"
F 6 "ESR=80R" V 8200 2050 60  0000 C CNN "Field6"
	1    8450 1600
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 4D22A62E
P 3850 3400
F 0 "#FLG1" H 3850 3670 30  0001 C CNN
F 1 "PWR_FLAG" H 3850 3630 30  0000 C CNN
	1    3850 3400
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 4D22A5A9
P 3850 4400
F 0 "C9" H 3900 4500 50  0000 L CNN
F 1 "22pF/RF" H 3900 4300 50  0000 L CNN
F 2 "0402" H 3850 4400 60  0001 C CNN
	1    3850 4400
	1    0    0    -1  
$EndComp
$Comp
L BALUN-SMT6 B1
U 1 1 4D22A4C6
P 3250 3800
F 0 "B1" H 2950 4150 60  0000 C CNN
F 1 "2450FB15L0001" H 3150 3350 60  0000 C CNN
F 2 "0805-6" H 3250 3800 60  0001 C CNN
	1    3250 3800
	1    0    0    -1  
$EndComp
$Comp
L AT86RF231 U1
U 1 1 4D22A108
P 6850 3850
F 0 "U1" H 5850 5050 60  0000 C CNN
F 1 "AT86RF231" H 6850 3850 60  0000 C CNN
	1    6850 3850
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4C8C121C
P 1750 3600
F 0 "R1" V 1830 3600 50  0000 C CNN
F 1 "0R" V 1750 3600 50  0000 C CNN
F 2 "0402" H 1750 3600 60  0001 C CNN
	1    1750 3600
	0    -1   -1   0   
$EndComp
Text Label 2450 3600 0    60   ~ 0
FEED
$Comp
L DGND #PWR6
U 1 1 4C803013
P 5050 4300
F 0 "#PWR6" H 5050 4300 40  0001 C CNN
F 1 "DGND" H 5050 4230 40  0000 C CNN
	1    5050 4300
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR25
U 1 1 4C7FE9AE
P 10000 6250
F 0 "#PWR25" H 10000 6350 30  0001 C CNN
F 1 "VDD" H 10000 6360 30  0000 C CNN
	1    10000 6250
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR23
U 1 1 4C7FE9A9
P 9600 6600
F 0 "#PWR23" H 9600 6600 40  0001 C CNN
F 1 "AGND" H 9600 6530 50  0000 C CNN
	1    9600 6600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG3
U 1 1 4C7FE9A5
P 10000 6450
F 0 "#FLG3" H 10000 6720 30  0001 C CNN
F 1 "PWR_FLAG" H 10000 6680 30  0000 C CNN
	1    10000 6450
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 4C7FE973
P 9600 6400
F 0 "#FLG2" H 9600 6670 30  0001 C CNN
F 1 "PWR_FLAG" H 9600 6630 30  0000 C CNN
	1    9600 6400
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR4
U 1 1 4C7FD425
P 3850 4800
F 0 "#PWR4" H 3850 4800 40  0001 C CNN
F 1 "AGND" H 3850 4730 50  0000 C CNN
	1    3850 4800
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR3
U 1 1 4C7FD41F
P 2650 4800
F 0 "#PWR3" H 2650 4800 40  0001 C CNN
F 1 "AGND" H 2650 4730 50  0000 C CNN
	1    2650 4800
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4C7FBF1E
P 4250 4000
F 0 "C2" H 4300 4100 50  0000 L CNN
F 1 "22pF/RF" H 4300 3900 50  0000 L CNN
F 2 "0402" H 4250 4000 60  0001 C CNN
	1    4250 4000
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 4C7FBF1B
P 4250 3600
F 0 "C1" H 4300 3700 50  0000 L CNN
F 1 "22pF/RF" H 4300 3500 50  0000 L CNN
F 2 "0402" H 4250 3600 60  0001 C CNN
	1    4250 3600
	0    -1   -1   0   
$EndComp
$Comp
L DGND #PWR20
U 1 1 4C7FBE4B
P 9250 2450
F 0 "#PWR20" H 9250 2450 40  0001 C CNN
F 1 "DGND" H 9250 2380 40  0000 C CNN
	1    9250 2450
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR5
U 1 1 4C7FBBB2
P 4750 4450
F 0 "#PWR5" H 4750 4550 30  0001 C CNN
F 1 "VDD" H 4750 4560 30  0000 C CNN
	1    4750 4450
	0    -1   -1   0   
$EndComp
Text GLabel 9200 3850 0    60   Output ~ 0
SLP_TR
$Comp
L VDD #PWR21
U 1 1 4C7FBA67
P 9400 2800
F 0 "#PWR21" H 9400 2900 30  0001 C CNN
F 1 "VDD" H 9400 2910 30  0000 C CNN
	1    9400 2800
	1    0    0    -1  
$EndComp
Text Label 9600 4150 0    60   ~ 0
DAT1(PD11)
Text Label 9600 4050 0    60   ~ 0
DAT0(PD10)
Text Label 9600 3950 0    60   ~ 0
VSS
Text Label 9600 3850 0    60   ~ 0
CLK(PD09)
Text Label 9600 3750 0    60   ~ 0
VDD
Text Label 9600 3650 0    60   ~ 0
CMD(PD08)
Text Label 9600 3550 0    60   ~ 0
DAT3/CD(PD13)
Text Label 9600 3450 0    60   ~ 0
DAT2(PD12)
$Comp
L CONN_8 P2
U 1 1 4C7FB8B3
P 10850 3800
F 0 "P2" V 10800 3800 60  0000 C CNN
F 1 "CONN_8" V 10900 3800 60  0000 C CNN
F 2 "8:10-card" H 10850 3800 60  0001 C CNN
	1    10850 3800
	1    0    0    -1  
$EndComp
Text Label 8650 4450 0    60   ~ 0
CLKM
Text Label 4850 4000 0    60   ~ 0
RFN
Text Label 4850 3850 0    60   ~ 0
RPF
$Comp
L DGND #PWR22
U 1 1 4C641B55
P 9400 5400
F 0 "#PWR22" H 9400 5400 40  0001 C CNN
F 1 "DGND" H 9400 5330 40  0000 C CNN
	1    9400 5400
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR24
U 1 1 4C641B53
P 9650 5400
F 0 "#PWR24" H 9650 5400 40  0001 C CNN
F 1 "AGND" H 9650 5330 50  0000 C CNN
	1    9650 5400
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR1
U 1 1 4C641731
P 1300 3900
F 0 "#PWR1" H 1300 3900 40  0001 C CNN
F 1 "AGND" H 1300 3830 50  0000 C CNN
	1    1300 3900
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR17
U 1 1 4C641205
P 7350 5950
F 0 "#PWR17" H 7350 6050 30  0001 C CNN
F 1 "VDD" H 7350 6060 30  0000 C CNN
	1    7350 5950
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR10
U 1 1 4C6411DB
P 6600 850
F 0 "#PWR10" H 6600 950 30  0001 C CNN
F 1 "VDD" H 6600 960 30  0000 C CNN
	1    6600 850 
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR9
U 1 1 4C641100
P 6350 1850
F 0 "#PWR9" H 6350 1850 40  0001 C CNN
F 1 "AGND" H 6350 1780 50  0000 C CNN
	1    6350 1850
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR14
U 1 1 4C64109A
P 7000 2250
F 0 "#PWR14" H 7000 2250 40  0001 C CNN
F 1 "AGND" H 7000 2180 50  0000 C CNN
	1    7000 2250
	-1   0    0    1   
$EndComp
$Comp
L DGND #PWR11
U 1 1 4C641010
P 6700 1650
F 0 "#PWR11" H 6700 1650 40  0001 C CNN
F 1 "DGND" H 6700 1580 40  0000 C CNN
	1    6700 1650
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 4C641004
P 6700 2050
F 0 "C4" H 6750 2150 50  0000 L CNN
F 1 "1uF" H 6750 1950 50  0000 L CNN
F 2 "0402" H 6700 2050 60  0001 C CNN
	1    6700 2050
	-1   0    0    -1  
$EndComp
$Comp
L AGND #PWR7
U 1 1 4C640D33
P 5250 4650
F 0 "#PWR7" H 5250 4650 40  0001 C CNN
F 1 "AGND" H 5250 4580 50  0000 C CNN
	1    5250 4650
	1    0    0    -1  
$EndComp
$Comp
L TST P1
U 1 1 4C640CD5
P 9100 4650
F 0 "P1" H 9100 4950 40  0000 C CNN
F 1 "TST" H 9100 4900 30  0000 C CNN
F 2 "PAD_60x60" H 9100 4650 60  0001 C CNN
	1    9100 4650
	-1   0    0    1   
$EndComp
$Comp
L AGND #PWR18
U 1 1 4C640CBA
P 7750 5650
F 0 "#PWR18" H 7750 5650 40  0001 C CNN
F 1 "AGND" H 7750 5580 50  0000 C CNN
	1    7750 5650
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR13
U 1 1 4C640C4C
P 6850 6750
F 0 "#PWR13" H 6850 6750 40  0001 C CNN
F 1 "DGND" H 6850 6680 40  0000 C CNN
	1    6850 6750
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR15
U 1 1 4C640C48
P 7150 6750
F 0 "#PWR15" H 7150 6750 40  0001 C CNN
F 1 "DGND" H 7150 6680 40  0000 C CNN
	1    7150 6750
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR8
U 1 1 4C640C14
P 6250 5650
F 0 "#PWR8" H 6250 5650 40  0001 C CNN
F 1 "DGND" H 6250 5580 40  0000 C CNN
	1    6250 5650
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR19
U 1 1 4C640BFC
P 8450 4650
F 0 "#PWR19" H 8450 4650 40  0001 C CNN
F 1 "DGND" H 8450 4580 40  0000 C CNN
	1    8450 4650
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR12
U 1 1 4C640BF7
P 6700 5650
F 0 "#PWR12" H 6700 5650 40  0001 C CNN
F 1 "DGND" H 6700 5580 40  0000 C CNN
	1    6700 5650
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR16
U 1 1 4C640BD2
P 7300 5650
F 0 "#PWR16" H 7300 5650 40  0001 C CNN
F 1 "DGND" H 7300 5580 40  0000 C CNN
	1    7300 5650
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4C640A84
P 6850 6350
F 0 "C5" H 6900 6450 50  0000 L CNN
F 1 "1uF" H 6900 6250 50  0000 L CNN
F 2 "0402" H 6850 6350 60  0001 C CNN
	1    6850 6350
	-1   0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 4C640A7E
P 7150 6350
F 0 "C6" H 7200 6450 50  0000 L CNN
F 1 "1uF" H 7200 6250 50  0000 L CNN
F 2 "0402" H 7150 6350 60  0001 C CNN
	1    7150 6350
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4C640A76
P 6350 1450
F 0 "C3" H 6400 1550 50  0000 L CNN
F 1 "1uF" H 6400 1350 50  0000 L CNN
F 2 "0402" H 6350 1450 60  0001 C CNN
	1    6350 1450
	-1   0    0    -1  
$EndComp
$Comp
L ANTENNA ANT1
U 1 1 4C63FE17
P 800 3650
F 0 "ANT1" H 800 3900 60  0000 C CNN
F 1 "50R" H 800 3400 60  0000 C CNN
F 2 "meander" H 800 3650 60  0001 C CNN
	1    800  3650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
