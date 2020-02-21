EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5DF26010
P 2900 3650
F 0 "A1" H 3197 2664 79  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2900 2470 50  0001 C CNN
F 2 "Module:Arduino_Nano" H 3050 2700 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2900 2650 50  0001 C CNN
	1    2900 3650
	-1   0    0    1   
$EndComp
$Comp
L 74xGxx:74LVC1GU04DRL U2
U 1 1 5DF27499
P 4750 3800
F 0 "U2" H 5094 3800 79  0000 L CNN
F 1 "74LVC1GU04DRL" H 5094 3755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-553" H 4750 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1gu04.pdf" H 4675 3800 50  0001 C CNN
	1    4750 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5DF27EA4
P 7950 4200
F 0 "D1" H 7943 4036 50  0000 C CNN
F 1 "LED" H 7943 4325 50  0001 C CNN
F 2 "" H 7950 4200 50  0001 C CNN
F 3 "~" H 7950 4200 50  0001 C CNN
	1    7950 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DF297B3
P 7100 3800
F 0 "C2" H 7192 3800 50  0000 L CNN
F 1 "C_Small" H 7192 3755 50  0001 L CNN
F 2 "" H 7100 3800 50  0001 C CNN
F 3 "~" H 7100 3800 50  0001 C CNN
	1    7100 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5DF2A027
P 8050 5100
F 0 "R2" H 8109 5100 50  0000 L CNN
F 1 "R_Small" H 8109 5055 50  0001 L CNN
F 2 "" H 8050 5100 50  0001 C CNN
F 3 "~" H 8050 5100 50  0001 C CNN
	1    8050 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT_TRIM RV1
U 1 1 5DF2ADA6
P 8700 3050
F 0 "RV1" V 8585 3050 50  0000 C CNN
F 1 "R_POT_TRIM" H 8630 3005 50  0001 R CNN
F 2 "" H 8700 3050 50  0001 C CNN
F 3 "~" H 8700 3050 50  0001 C CNN
	1    8700 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5DF2B55F
P 6950 3600
F 0 "Y1" H 6950 3798 50  0000 C CNN
F 1 "Crystal" H 6950 3777 50  0001 C CNN
F 2 "" H 6950 3600 50  0001 C CNN
F 3 "~" H 6950 3600 50  0001 C CNN
	1    6950 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5DF2DC2D
P 8850 2500
F 0 "J2" V 8768 2312 50  0000 R CNN
F 1 "Screw_Terminal_01x02" H 8930 2401 50  0001 L CNN
F 2 "" H 8850 2500 50  0001 C CNN
F 3 "~" H 8850 2500 50  0001 C CNN
	1    8850 2500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5DF2F02C
P 8300 2500
F 0 "J1" V 8218 2312 50  0000 R CNN
F 1 "Screw_Terminal_01x02" H 8380 2401 50  0001 L CNN
F 2 "" H 8300 2500 50  0001 C CNN
F 3 "~" H 8300 2500 50  0001 C CNN
	1    8300 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF358BA
P 2100 2800
F 0 "#PWR?" H 2100 2550 50  0001 C CNN
F 1 "GND" H 2105 2627 50  0000 C CNN
F 2 "" H 2100 2800 50  0001 C CNN
F 3 "" H 2100 2800 50  0001 C CNN
	1    2100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2650 2900 2500
Wire Wire Line
	2900 2500 2800 2500
Wire Wire Line
	2800 2500 2800 2650
Wire Wire Line
	2100 2800 2100 2500
Wire Wire Line
	2100 2500 2800 2500
Connection ~ 2800 2500
Wire Wire Line
	3400 4150 4050 4150
Wire Wire Line
	3400 4250 4150 4250
$Comp
L power:VSS #PWR?
U 1 1 5DF3F6D3
P 3000 4650
F 0 "#PWR?" H 3000 4500 50  0001 C CNN
F 1 "VSS" H 3017 4823 50  0000 C CNN
F 2 "" H 3000 4650 50  0001 C CNN
F 3 "" H 3000 4650 50  0001 C CNN
	1    3000 4650
	-1   0    0    1   
$EndComp
$Comp
L power:VSS #PWR?
U 1 1 5DF4090A
P 4750 3600
F 0 "#PWR?" H 4750 3450 50  0001 C CNN
F 1 "VSS" H 4767 3773 50  0000 C CNN
F 2 "" H 4750 3600 50  0001 C CNN
F 3 "" H 4750 3600 50  0001 C CNN
	1    4750 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF4114A
P 4750 4000
F 0 "#PWR?" H 4750 3750 50  0001 C CNN
F 1 "GND" H 4755 3827 50  0000 C CNN
F 2 "" H 4750 4000 50  0001 C CNN
F 3 "" H 4750 4000 50  0001 C CNN
	1    4750 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF41686
P 8400 2700
F 0 "#PWR?" H 8400 2450 50  0001 C CNN
F 1 "GND" H 8405 2527 50  0000 C CNN
F 2 "" H 8400 2700 50  0001 C CNN
F 3 "" H 8400 2700 50  0001 C CNN
	1    8400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2700 8300 2800
Wire Wire Line
	8300 2800 7850 2800
Wire Wire Line
	7850 2800 7850 2300
Wire Wire Line
	7850 2300 3550 2300
$Comp
L Device:C_Small C1
U 1 1 5DF4623D
P 6800 3800
F 0 "C1" H 6892 3800 50  0000 L CNN
F 1 "C_Small" H 6892 3755 50  0001 L CNN
F 2 "" H 6800 3800 50  0001 C CNN
F 3 "~" H 6800 3800 50  0001 C CNN
	1    6800 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF2867E
P 5800 4400
F 0 "#PWR?" H 5800 4150 50  0001 C CNN
F 1 "GND" H 5805 4227 50  0000 C CNN
F 2 "" H 5800 4400 50  0001 C CNN
F 3 "" H 5800 4400 50  0001 C CNN
	1    5800 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF47525
P 6800 3900
F 0 "#PWR?" H 6800 3650 50  0001 C CNN
F 1 "GND" H 6805 3727 50  0000 C CNN
F 2 "" H 6800 3900 50  0001 C CNN
F 3 "" H 6800 3900 50  0001 C CNN
	1    6800 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF47999
P 7100 3900
F 0 "#PWR?" H 7100 3650 50  0001 C CNN
F 1 "GND" H 7105 3727 50  0000 C CNN
F 2 "" H 7100 3900 50  0001 C CNN
F 3 "" H 7100 3900 50  0001 C CNN
	1    7100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3700 7100 3600
Wire Wire Line
	6800 3700 6800 3600
Wire Wire Line
	6800 3600 6800 3450
Wire Wire Line
	6800 3450 6250 3450
Connection ~ 6800 3600
Wire Wire Line
	7100 3350 7100 3600
Connection ~ 7100 3600
$Comp
L power:GND #PWR?
U 1 1 5DF49883
P 8100 4200
F 0 "#PWR?" H 8100 3950 50  0001 C CNN
F 1 "GND" H 8105 4027 50  0000 C CNN
F 2 "" H 8100 4200 50  0001 C CNN
F 3 "" H 8100 4200 50  0001 C CNN
	1    8100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3450 5050 3450
Wire Wire Line
	4550 3800 4550 3350
Wire Wire Line
	4550 3350 5350 3350
Wire Wire Line
	5050 3450 5050 3800
$Comp
L Device:R_POT_TRIM RV2
U 1 1 5DF56CFE
P 9100 3050
F 0 "RV2" V 8985 3050 50  0000 C CNN
F 1 "R_POT_TRIM" H 9030 3005 50  0001 R CNN
F 2 "" H 9100 3050 50  0001 C CNN
F 3 "~" H 9100 3050 50  0001 C CNN
	1    9100 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 2650 8550 2650
Wire Wire Line
	8950 3050 8950 3250
Wire Wire Line
	8950 3250 8550 3250
Wire Wire Line
	9100 2900 9100 2800
Wire Wire Line
	9100 2800 8950 2800
Wire Wire Line
	8950 2800 8950 2700
Wire Wire Line
	8850 2700 8850 3050
Wire Wire Line
	8550 2650 8550 3050
Connection ~ 8550 3050
Wire Wire Line
	8550 3050 8550 3250
Wire Wire Line
	9250 3050 9250 3450
Wire Wire Line
	9250 3450 8850 3450
Wire Wire Line
	8700 2900 8600 2900
Wire Wire Line
	8600 2900 8600 2950
Wire Wire Line
	8600 2950 8400 2950
Wire Wire Line
	8400 2950 8400 3400
$Comp
L Device:C_Small C3
U 1 1 5DF5D897
P 8200 3400
F 0 "C3" V 8292 3400 50  0000 L CNN
F 1 "C_Small" H 8292 3355 50  0001 L CNN
F 2 "" H 8200 3400 50  0001 C CNN
F 3 "~" H 8200 3400 50  0001 C CNN
	1    8200 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5DF5E5C7
P 8200 3600
F 0 "C4" V 8292 3600 50  0000 L CNN
F 1 "C_Small" H 8292 3555 50  0001 L CNN
F 2 "" H 8200 3600 50  0001 C CNN
F 3 "~" H 8200 3600 50  0001 C CNN
	1    8200 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 3600 8850 3600
Wire Wire Line
	8850 3600 8850 3450
Wire Wire Line
	8400 3400 8300 3400
Wire Wire Line
	7350 2900 7350 3600
Wire Wire Line
	7350 3600 8100 3600
Wire Wire Line
	6250 3000 7750 3000
Wire Wire Line
	7750 3000 7750 3400
Wire Wire Line
	7750 3400 8100 3400
$Comp
L Device:R_POT_TRIM RV3
U 1 1 5DF66D3D
P 7750 5100
F 0 "RV3" V 7635 5100 50  0000 C CNN
F 1 "R_POT_TRIM" H 7680 5055 50  0001 R CNN
F 2 "" H 7750 5100 50  0001 C CNN
F 3 "~" H 7750 5100 50  0001 C CNN
	1    7750 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT_TRIM RV4
U 1 1 5DF6896C
P 8550 5100
F 0 "RV4" V 8435 5100 50  0000 C CNN
F 1 "R_POT_TRIM" H 8480 5055 50  0001 R CNN
F 2 "" H 8550 5100 50  0001 C CNN
F 3 "~" H 8550 5100 50  0001 C CNN
	1    8550 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5DF6C428
P 8250 5100
F 0 "R3" H 8309 5100 50  0000 L CNN
F 1 "R_Small" H 8309 5055 50  0001 L CNN
F 2 "" H 8250 5100 50  0001 C CNN
F 3 "~" H 8250 5100 50  0001 C CNN
	1    8250 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 5100 8350 5100
Wire Wire Line
	7950 5100 7900 5100
$Comp
L Device:R_Small R4
U 1 1 5DF6E90F
P 8800 5100
F 0 "R4" H 8859 5100 50  0000 L CNN
F 1 "R_Small" H 8859 5055 50  0001 L CNN
F 2 "" H 8800 5100 50  0001 C CNN
F 3 "~" H 8800 5100 50  0001 C CNN
	1    8800 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5DF6F8A9
P 7500 5100
F 0 "R1" H 7559 5100 50  0000 L CNN
F 1 "R_Small" H 7559 5055 50  0001 L CNN
F 2 "" H 7500 5100 50  0001 C CNN
F 3 "~" H 7500 5100 50  0001 C CNN
	1    7500 5100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF7095D
P 7400 5100
F 0 "#PWR?" H 7400 4850 50  0001 C CNN
F 1 "GND" H 7405 4927 50  0000 C CNN
F 2 "" H 7400 5100 50  0001 C CNN
F 3 "" H 7400 5100 50  0001 C CNN
	1    7400 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF7150C
P 8900 5100
F 0 "#PWR?" H 8900 4850 50  0001 C CNN
F 1 "GND" H 8905 4927 50  0000 C CNN
F 2 "" H 8900 5100 50  0001 C CNN
F 3 "" H 8900 5100 50  0001 C CNN
	1    8900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5100 8150 4850
Connection ~ 8150 5100
Wire Wire Line
	7750 4950 7750 4650
Wire Wire Line
	6250 3350 7100 3350
Wire Wire Line
	6250 2900 7350 2900
$Comp
L Interface_Telecom:TCM3105 U1
U 1 1 5DF26C37
P 5800 3400
F 0 "U1" H 5481 4160 79  0000 C CNN
F 1 "TCM3105" H 5800 4290 50  0001 C CNN
F 2 "" H 5800 3500 50  0001 C CNN
F 3 "" H 5800 3500 50  0001 C CNN
	1    5800 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR?
U 1 1 5DF290AA
P 5800 2600
F 0 "#PWR?" H 5800 2450 50  0001 C CNN
F 1 "VSS" H 5817 2773 50  0000 C CNN
F 2 "" H 5800 2600 50  0001 C CNN
F 3 "" H 5800 2600 50  0001 C CNN
	1    5800 2600
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR?
U 1 1 5DF7652F
P 8150 4850
F 0 "#PWR?" H 8150 4700 50  0001 C CNN
F 1 "VSS" H 8167 5023 50  0000 C CNN
F 2 "" H 8150 4850 50  0001 C CNN
F 3 "" H 8150 4850 50  0001 C CNN
	1    8150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4650 6400 4650
Wire Wire Line
	6400 4650 6400 4150
Wire Wire Line
	6400 4150 6250 4150
Wire Wire Line
	6250 4050 6500 4050
Wire Wire Line
	6500 4050 6500 4550
Wire Wire Line
	8550 4550 8550 4950
Wire Wire Line
	6500 4550 8550 4550
Wire Wire Line
	7800 4200 7850 4200
Wire Wire Line
	6650 4200 6650 3750
Wire Wire Line
	6650 3750 6250 3750
Wire Wire Line
	5350 4050 5200 4050
Wire Wire Line
	5200 4050 5200 4150
Wire Wire Line
	5350 4150 5200 4150
Connection ~ 5200 4150
Wire Wire Line
	5200 4150 5200 4400
$Comp
L power:GND #PWR?
U 1 1 5DF8B0F5
P 5200 4400
F 0 "#PWR?" H 5200 4150 50  0001 C CNN
F 1 "GND" H 5205 4227 50  0000 C CNN
F 2 "" H 5200 4400 50  0001 C CNN
F 3 "" H 5200 4400 50  0001 C CNN
	1    5200 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5DF973CD
P 7750 4200
F 0 "R5" H 7809 4200 50  0000 L CNN
F 1 "R_Small" H 7809 4155 50  0001 L CNN
F 2 "" H 7750 4200 50  0001 C CNN
F 3 "~" H 7750 4200 50  0001 C CNN
	1    7750 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 4200 6650 4200
$Comp
L Device:LED D2
U 1 1 5DFAA799
P 6300 2600
F 0 "D2" H 6293 2436 50  0000 C CNN
F 1 "LED" H 6293 2725 50  0001 C CNN
F 2 "" H 6300 2600 50  0001 C CNN
F 3 "~" H 6300 2600 50  0001 C CNN
	1    6300 2600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFAA79F
P 6450 2600
F 0 "#PWR?" H 6450 2350 50  0001 C CNN
F 1 "GND" H 6455 2427 50  0000 C CNN
F 2 "" H 6450 2600 50  0001 C CNN
F 3 "" H 6450 2600 50  0001 C CNN
	1    6450 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2600 6200 2600
$Comp
L Device:R_Small R6
U 1 1 5DFAA7A6
P 6100 2600
F 0 "R6" H 6159 2600 50  0000 L CNN
F 1 "R_Small" H 6159 2555 50  0001 L CNN
F 2 "" H 6100 2600 50  0001 C CNN
F 3 "~" H 6100 2600 50  0001 C CNN
	1    6100 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 2600 5800 2600
Connection ~ 5800 2600
Wire Wire Line
	3400 3050 3550 3050
Wire Wire Line
	3550 3050 3550 2550
$Comp
L power:GND #PWR?
U 1 1 5DFB34D5
P 4050 2550
F 0 "#PWR?" H 4050 2300 50  0001 C CNN
F 1 "GND" H 4055 2377 50  0000 C CNN
F 2 "" H 4050 2550 50  0001 C CNN
F 3 "" H 4050 2550 50  0001 C CNN
	1    4050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2550 3800 2550
$Comp
L Device:R_Small R7
U 1 1 5DFB34DC
P 3700 2550
F 0 "R7" H 3759 2550 50  0000 L CNN
F 1 "R_Small" H 3759 2505 50  0001 L CNN
F 2 "" H 3700 2550 50  0001 C CNN
F 3 "~" H 3700 2550 50  0001 C CNN
	1    3700 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 2550 3550 2550
Connection ~ 3550 2550
Wire Wire Line
	3550 2550 3550 2300
Wire Wire Line
	5350 3000 4150 3000
Wire Wire Line
	4150 3000 4150 4250
Wire Wire Line
	4050 4150 4050 2900
Wire Wire Line
	4050 2900 5350 2900
$Comp
L Device:LED D3
U 1 1 5DFB34CF
P 3900 2550
F 0 "D3" H 3893 2386 50  0000 C CNN
F 1 "LED" H 3893 2675 50  0001 C CNN
F 2 "" H 3900 2550 50  0001 C CNN
F 3 "~" H 3900 2550 50  0001 C CNN
	1    3900 2550
	-1   0    0    1   
$EndComp
Wire Notes Line
	4500 5000 4500 2350
Wire Notes Line
	4500 2350 7800 2350
Wire Notes Line
	7800 2350 7800 2850
Wire Notes Line
	7800 2850 9350 2850
Wire Notes Line
	9350 2850 9350 5400
Wire Notes Line
	9350 5400 6950 5400
Wire Notes Line
	6950 5400 6950 5000
Wire Notes Line
	4500 5000 6950 5000
Text Notes 5150 4900 0    118  ~ 0
FSK MODEM
Wire Notes Line
	7950 2700 9350 2700
Wire Notes Line
	9350 2700 9350 2300
Wire Notes Line
	9350 2300 7950 2300
Wire Notes Line
	7950 2300 7950 2700
Text Notes 8450 2450 0    118  ~ 0
TRX
Wire Notes Line
	4200 5000 4200 2250
Wire Notes Line
	4200 2250 1900 2250
Wire Notes Line
	1900 2250 1900 5000
Wire Notes Line
	1900 5000 4200 5000
Text Notes 3350 4900 0    118  ~ 0
ARDUINO
$EndSCHEMATC