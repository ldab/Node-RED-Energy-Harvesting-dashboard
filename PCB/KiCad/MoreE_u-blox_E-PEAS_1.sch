EESchema Schematic File Version 4
LIBS:MoreE u-blox E-PEAS-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "MoreE u-blox E-PEAS Energy Harvesting"
Date "2019-06-25"
Rev "0.0.1"
Comp ""
Comment1 "Leonardo Bispo"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6700 6300 6600 6300
Wire Wire Line
	6600 6300 6600 6500
Wire Wire Line
	1800 1300 1500 1300
Wire Wire Line
	9700 2900 9900 2900
Wire Wire Line
	9900 2900 9900 3000
Wire Wire Line
	9900 3000 9900 3100
Wire Wire Line
	9900 3100 9900 3200
Wire Wire Line
	9900 3200 9900 3300
Wire Wire Line
	9900 3300 9900 3400
Wire Wire Line
	9900 3400 9900 3500
Wire Wire Line
	9900 3500 9900 3600
Wire Wire Line
	9900 3600 9900 3700
Wire Wire Line
	9900 3700 9900 3800
Wire Wire Line
	9900 3800 9900 3900
Wire Wire Line
	9900 3900 9900 4000
Wire Wire Line
	9900 4000 9900 4200
Wire Wire Line
	9700 3000 9900 3000
Wire Wire Line
	9700 3100 9900 3100
Wire Wire Line
	9700 3200 9900 3200
Wire Wire Line
	9700 3300 9900 3300
Wire Wire Line
	9700 3400 9900 3400
Wire Wire Line
	9700 3500 9900 3500
Wire Wire Line
	9700 3600 9900 3600
Wire Wire Line
	9700 3700 9900 3700
Wire Wire Line
	9700 3800 9900 3800
Wire Wire Line
	9700 3900 9900 3900
Wire Wire Line
	9700 4000 9900 4000
Connection ~ 9900 3000
Connection ~ 9900 3100
Connection ~ 9900 3200
Connection ~ 9900 3300
Connection ~ 9900 3400
Connection ~ 9900 3500
Connection ~ 9900 3600
Connection ~ 9900 3700
Connection ~ 9900 3800
Connection ~ 9900 3900
Connection ~ 9900 4000
Wire Wire Line
	4900 3000 4900 3200
Wire Wire Line
	4600 3000 4600 3200
Wire Wire Line
	1900 3900 1900 4100
Wire Wire Line
	1400 6100 1300 6100
Wire Wire Line
	1300 6100 1300 6700
Wire Wire Line
	2700 6500 2700 6700
Wire Wire Line
	10100 5900 10300 5900
Wire Wire Line
	10300 5900 10300 6200
Wire Wire Line
	5000 6000 4700 6000
Wire Wire Line
	4700 6000 4500 6000
Wire Wire Line
	6700 6100 5700 6100
Wire Wire Line
	5700 6100 5600 6100
Wire Wire Line
	5700 6100 5700 6400
Wire Wire Line
	5700 6400 4700 6400
Wire Wire Line
	4700 6400 4700 6000
Connection ~ 5700 6100
Connection ~ 4700 6000
Wire Wire Line
	5000 5900 4800 5900
Wire Wire Line
	4800 5900 4500 5900
Wire Wire Line
	5000 6100 4800 6100
Wire Wire Line
	4800 6100 4800 5900
Connection ~ 4800 5900
Wire Wire Line
	6700 5900 6600 5900
Wire Wire Line
	6700 6000 6600 6000
Wire Wire Line
	2600 6000 2900 6000
Wire Wire Line
	2900 6000 3100 6000
Wire Wire Line
	2900 5900 2900 6000
Connection ~ 2900 6000
Wire Wire Line
	1400 6000 1300 6000
Wire Wire Line
	1300 6000 1100 6000
Wire Wire Line
	1300 5900 1300 6000
Connection ~ 1300 6000
Wire Wire Line
	1900 3300 1900 3400
Wire Wire Line
	1900 3400 1900 3500
Wire Wire Line
	2300 3400 1900 3400
Connection ~ 1900 3400
Wire Wire Line
	8700 6000 8500 6000
Wire Wire Line
	8700 5900 8500 5900
Wire Wire Line
	5700 2500 4900 2500
Wire Wire Line
	4900 2500 4600 2500
Wire Wire Line
	4600 2500 4600 2200
Wire Wire Line
	5700 2600 4900 2600
Wire Wire Line
	4900 2600 4900 2500
Wire Wire Line
	4900 2700 4900 2600
Wire Wire Line
	4600 2700 4600 2500
Connection ~ 4900 2500
Connection ~ 4900 2600
Connection ~ 4600 2500
Wire Wire Line
	2900 5500 2900 5400
Wire Wire Line
	1300 5500 1300 5400
Wire Wire Line
	2600 6100 2700 6100
Wire Wire Line
	2700 6100 2700 5400
Wire Wire Line
	2700 6200 2700 6100
Connection ~ 2700 6100
Wire Wire Line
	5600 5900 5700 5900
Wire Wire Line
	5700 5900 5700 5700
Wire Wire Line
	9100 5800 9200 5800
Wire Wire Line
	9100 5900 9200 5900
Wire Wire Line
	9100 6000 9200 6000
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:NINA-W102 IC?
U 1 1 22F7723E
P 5700 1700
AR Path="/22F7723E" Ref="IC?"  Part="1" 
AR Path="/5D11F2D7/22F7723E" Ref="IC1"  Part="1" 
F 0 "IC1" H 9550 2000 59  0000 L CNN
F 1 "NINA-W102" H 9550 1900 59  0000 L CNN
F 2 "SamacSys_Parts:NINAW102" H 5700 1700 50  0001 C CNN
F 3 "" H 5700 1700 50  0001 C CNN
	1    5700 1700
	1    0    0    -1  
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:61300511121 SV?
U 1 1 1FCB83CC
P 7000 6100
AR Path="/1FCB83CC" Ref="SV?"  Part="1" 
AR Path="/5D11F2D7/1FCB83CC" Ref="SV2"  Part="1" 
F 0 "SV2" H 6950 6430 42  0001 L BNN
F 1 "UART" H 6950 5700 42  0000 L BNN
F 2 "SamacSys_Parts:PinHeader_1x05_P2.54mm_Vertical" H 7000 6100 50  0001 C CNN
F 3 "" H 7000 6100 50  0001 C CNN
	1    7000 6100
	-1   0    0    1   
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:GND #GND?
U 1 1 4877C9E2
P 6600 6600
AR Path="/4877C9E2" Ref="#GND?"  Part="1" 
AR Path="/5D11F2D7/4877C9E2" Ref="#GND02"  Part="1" 
F 0 "#GND02" H 6600 6600 50  0001 C CNN
F 1 "GND" H 6500 6500 59  0000 L BNN
F 2 "" H 6600 6600 50  0001 C CNN
F 3 "" H 6600 6600 50  0001 C CNN
	1    6600 6600
	1    0    0    -1  
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:HTU21D U?
U 1 1 4E0AB7A9
P 1400 6000
AR Path="/4E0AB7A9" Ref="U?"  Part="1" 
AR Path="/5D11F2D7/4E0AB7A9" Ref="U1"  Part="1" 
F 0 "U1" H 1650 6300 59  0000 L CNN
F 1 "HTU21D" H 1650 6200 59  0000 L CNN
F 2 "Package_DFN_QFN:DFN-6-1EP_3x3mm_P1mm_EP1.5x2.4mm" H 1400 6000 50  0001 C CNN
F 3 "" H 1400 6000 50  0001 C CNN
	1    1400 6000
	1    0    0    -1  
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:C-EUC0805 C?
U 1 1 A747C402
P 4900 2800
AR Path="/A747C402" Ref="C?"  Part="1" 
AR Path="/5D11F2D7/A747C402" Ref="C2"  Part="1" 
F 0 "C2" H 4960 2815 59  0000 L BNN
F 1 "100n" H 4960 2615 59  0000 L BNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4900 2800 50  0001 C CNN
F 3 "" H 4900 2800 50  0001 C CNN
	1    4900 2800
	1    0    0    -1  
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:C-EUC0805 C?
U 1 1 C1FD9C95
P 4600 2800
AR Path="/C1FD9C95" Ref="C?"  Part="1" 
AR Path="/5D11F2D7/C1FD9C95" Ref="C1"  Part="1" 
F 0 "C1" H 4660 2815 59  0000 L BNN
F 1 "100n" H 4660 2615 59  0000 L BNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4600 2800 50  0001 C CNN
F 3 "" H 4600 2800 50  0001 C CNN
	1    4600 2800
	1    0    0    -1  
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:R-EU_R0805 R?
U 1 1 E63EF57F
P 1900 3700
AR Path="/E63EF57F" Ref="R?"  Part="1" 
AR Path="/5D11F2D7/E63EF57F" Ref="R2"  Part="1" 
F 0 "R2" H 1750 3759 59  0000 L BNN
F 1 "1M" H 1750 3570 59  0000 L BNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1900 3700 50  0001 C CNN
F 3 "" H 1900 3700 50  0001 C CNN
	1    1900 3700
	0    -1   -1   0   
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:R-EU_R0805 R?
U 1 1 1BA30361
P 1900 3100
AR Path="/1BA30361" Ref="R?"  Part="1" 
AR Path="/5D11F2D7/1BA30361" Ref="R1"  Part="1" 
F 0 "R1" H 1750 3159 59  0000 L BNN
F 1 "1M" H 1750 2970 59  0000 L BNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1900 3100 50  0001 C CNN
F 3 "" H 1900 3100 50  0001 C CNN
	1    1900 3100
	0    -1   -1   0   
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:R-EU_R0805 R?
U 1 1 40871C63
P 2900 5700
AR Path="/40871C63" Ref="R?"  Part="1" 
AR Path="/5D11F2D7/40871C63" Ref="R4"  Part="1" 
F 0 "R4" H 2750 5759 59  0000 L BNN
F 1 "10K" H 2750 5570 59  0000 L BNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2900 5700 50  0001 C CNN
F 3 "" H 2900 5700 50  0001 C CNN
	1    2900 5700
	0    -1   -1   0   
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:R-EU_R0805 R?
U 1 1 30FCCEAE
P 1300 5700
AR Path="/30FCCEAE" Ref="R?"  Part="1" 
AR Path="/5D11F2D7/30FCCEAE" Ref="R3"  Part="1" 
F 0 "R3" H 1150 5759 59  0000 L BNN
F 1 "10K" H 1150 5570 59  0000 L BNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1300 5700 50  0001 C CNN
F 3 "" H 1300 5700 50  0001 C CNN
	1    1300 5700
	0    -1   -1   0   
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:GND #GND?
U 1 1 D027D65F
P 1300 6800
AR Path="/D027D65F" Ref="#GND?"  Part="1" 
AR Path="/5D11F2D7/D027D65F" Ref="#GND03"  Part="1" 
F 0 "#GND03" H 1300 6800 50  0001 C CNN
F 1 "GND" H 1200 6700 59  0000 L BNN
F 2 "" H 1300 6800 50  0001 C CNN
F 3 "" H 1300 6800 50  0001 C CNN
	1    1300 6800
	1    0    0    -1  
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:C-EUC0805 C?
U 1 1 93F3FA2A
P 2700 6300
AR Path="/93F3FA2A" Ref="C?"  Part="1" 
AR Path="/5D11F2D7/93F3FA2A" Ref="C3"  Part="1" 
F 0 "C3" H 2760 6315 59  0000 L BNN
F 1 "100n" H 2760 6115 59  0000 L BNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2700 6300 50  0001 C CNN
F 3 "" H 2700 6300 50  0001 C CNN
	1    2700 6300
	1    0    0    -1  
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:GND #GND?
U 1 1 157BD418
P 2700 6800
AR Path="/157BD418" Ref="#GND?"  Part="1" 
AR Path="/5D11F2D7/157BD418" Ref="#GND04"  Part="1" 
F 0 "#GND04" H 2700 6800 50  0001 C CNN
F 1 "GND" H 2600 6700 59  0000 L BNN
F 2 "" H 2700 6800 50  0001 C CNN
F 3 "" H 2700 6800 50  0001 C CNN
	1    2700 6800
	1    0    0    -1  
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:LED-RGB-CCCLEAR LED?
U 1 1 1AF26757
P 9600 5900
AR Path="/1AF26757" Ref="LED?"  Part="1" 
AR Path="/5D11F2D7/1AF26757" Ref="LED1"  Part="1" 
F 0 "LED1" H 9300 6112 70  0000 L BNN
F 1 "CLEAR" H 9300 5687 70  0000 L TNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9600 5900 50  0001 C CNN
F 3 "" H 9600 5900 50  0001 C CNN
	1    9600 5900
	1    0    0    -1  
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:GND #GND?
U 1 1 D1DF28FE
P 10300 6300
AR Path="/D1DF28FE" Ref="#GND?"  Part="1" 
AR Path="/5D11F2D7/D1DF28FE" Ref="#GND01"  Part="1" 
F 0 "#GND01" H 10300 6300 50  0001 C CNN
F 1 "GND" H 10200 6200 59  0000 L BNN
F 2 "" H 10300 6300 50  0001 C CNN
F 3 "" H 10300 6300 50  0001 C CNN
	1    10300 6300
	1    0    0    -1  
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:R-EU_R0805 R?
U 1 1 420EC5C7
P 8900 5800
AR Path="/420EC5C7" Ref="R?"  Part="1" 
AR Path="/5D11F2D7/420EC5C7" Ref="R5"  Part="1" 
F 0 "R5" H 9010 5809 59  0000 L BNN
F 1 "1K" H 8750 5670 59  0000 L BNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8900 5800 50  0001 C CNN
F 3 "" H 8900 5800 50  0001 C CNN
	1    8900 5800
	-1   0    0    1   
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:R-EU_R0805 R?
U 1 1 8D50DE8C
P 8900 5900
AR Path="/8D50DE8C" Ref="R?"  Part="1" 
AR Path="/5D11F2D7/8D50DE8C" Ref="R6"  Part="1" 
F 0 "R6" H 9010 5919 59  0000 L BNN
F 1 "1K" H 8750 5770 59  0001 L BNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8900 5900 50  0001 C CNN
F 3 "" H 8900 5900 50  0001 C CNN
	1    8900 5900
	-1   0    0    1   
$EndComp
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:R-EU_R0805 R?
U 1 1 221781BE
P 8900 6000
AR Path="/221781BE" Ref="R?"  Part="1" 
AR Path="/5D11F2D7/221781BE" Ref="R7"  Part="1" 
F 0 "R7" H 9010 6019 59  0000 L BNN
F 1 "1K" H 8750 5870 59  0001 L BNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8900 6000 50  0001 C CNN
F 3 "" H 8900 6000 50  0001 C CNN
	1    8900 6000
	-1   0    0    1   
$EndComp
NoConn ~ 9700 2300
NoConn ~ 9700 2400
NoConn ~ 9700 2500
NoConn ~ 9700 2600
NoConn ~ 9700 2700
NoConn ~ 9700 2800
Wire Wire Line
	9700 2200 9900 2200
Wire Wire Line
	9900 2200 9900 2900
Connection ~ 9900 2900
Wire Wire Line
	9700 1800 9900 1800
Wire Wire Line
	9900 1800 9900 2200
Connection ~ 9900 2200
Text GLabel 5500 2000 0    50   Input ~ 0
ADC_BATT
Text GLabel 5500 2100 0    50   Output ~ 0
DONE
NoConn ~ 5700 2700
NoConn ~ 5700 2900
NoConn ~ 5700 3400
Wire Wire Line
	5700 3200 5500 3200
Wire Wire Line
	5700 3300 5500 3300
Wire Wire Line
	5700 3500 5500 3500
Text GLabel 5500 3200 0    50   Output ~ 0
RGB_G
Text GLabel 5500 3300 0    50   Output ~ 0
RGB_B
Text GLabel 5500 3500 0    50   Input ~ 0
!RESET
NoConn ~ 5700 3700
NoConn ~ 5700 4000
Wire Wire Line
	5700 3600 5500 3600
Wire Wire Line
	5700 3800 5500 3800
Wire Wire Line
	5700 3900 5500 3900
$Comp
L power:+3.3V #PWR03
U 1 1 5D18794D
P 4600 2200
F 0 "#PWR03" H 4600 2050 50  0001 C CNN
F 1 "+3.3V" H 4615 2373 50  0000 C CNN
F 2 "" H 4600 2200 50  0001 C CNN
F 3 "" H 4600 2200 50  0001 C CNN
	1    4600 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D189236
P 4600 3200
F 0 "#PWR05" H 4600 2950 50  0001 C CNN
F 1 "GND" H 4605 3027 50  0000 C CNN
F 2 "" H 4600 3200 50  0001 C CNN
F 3 "" H 4600 3200 50  0001 C CNN
	1    4600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D189BC2
P 4900 3200
F 0 "#PWR06" H 4900 2950 50  0001 C CNN
F 1 "GND" H 4905 3027 50  0000 C CNN
F 2 "" H 4900 3200 50  0001 C CNN
F 3 "" H 4900 3200 50  0001 C CNN
	1    4900 3200
	1    0    0    -1  
$EndComp
Text GLabel 5500 3800 0    50   Output ~ 0
NINA_TX
Text GLabel 5500 3900 0    50   Input ~ 0
NINA_RX
Text GLabel 5500 3600 0    50   Output ~ 0
SCL
NoConn ~ 5700 3100
Text GLabel 10000 1900 2    50   Input ~ 0
!BOOT
Wire Wire Line
	9700 1900 10000 1900
$Comp
L power:GND #PWR08
U 1 1 5D195DF8
P 9900 4200
F 0 "#PWR08" H 9900 3950 50  0001 C CNN
F 1 "GND" H 9905 4027 50  0000 C CNN
F 2 "" H 9900 4200 50  0001 C CNN
F 3 "" H 9900 4200 50  0001 C CNN
	1    9900 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D196141
P 1500 2200
F 0 "#PWR02" H 1500 1950 50  0001 C CNN
F 1 "GND" H 1505 2027 50  0000 C CNN
F 2 "" H 1500 2200 50  0001 C CNN
F 3 "" H 1500 2200 50  0001 C CNN
	1    1500 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D1964ED
P 1500 1500
F 0 "#PWR01" H 1500 1250 50  0001 C CNN
F 1 "GND" H 1505 1327 50  0000 C CNN
F 2 "" H 1500 1500 50  0001 C CNN
F 3 "" H 1500 1500 50  0001 C CNN
	1    1500 1500
	1    0    0    -1  
$EndComp
Text GLabel 2700 1300 2    50   Input ~ 0
!RESET
Text GLabel 2700 2000 2    50   Input ~ 0
!BOOT
Text GLabel 2300 3400 2    50   Input ~ 0
ADC_BATT
$Comp
L power:GND #PWR07
U 1 1 5D196B13
P 1900 4100
F 0 "#PWR07" H 1900 3850 50  0001 C CNN
F 1 "GND" H 1905 3927 50  0000 C CNN
F 2 "" H 1900 4100 50  0001 C CNN
F 3 "" H 1900 4100 50  0001 C CNN
	1    1900 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR04
U 1 1 5D196DFC
P 1900 2750
F 0 "#PWR04" H 1900 2600 50  0001 C CNN
F 1 "+BATT" H 1915 2923 50  0000 C CNN
F 2 "" H 1900 2750 50  0001 C CNN
F 3 "" H 1900 2750 50  0001 C CNN
	1    1900 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR012
U 1 1 5D198406
P 5700 5700
F 0 "#PWR012" H 5700 5550 50  0001 C CNN
F 1 "+BATT" H 5715 5873 50  0000 C CNN
F 2 "" H 5700 5700 50  0001 C CNN
F 3 "" H 5700 5700 50  0001 C CNN
	1    5700 5700
	1    0    0    -1  
$EndComp
Text GLabel 6600 6000 0    50   Output ~ 0
NINA_RX
Text GLabel 6600 5900 0    50   Input ~ 0
NINA_TX
Text GLabel 5700 6000 2    50   Input ~ 0
CE_STD
Text GLabel 4500 5900 0    50   UnSpc ~ 0
VIN
Text GLabel 4500 6000 0    50   Output ~ 0
CE
Wire Wire Line
	5600 6000 5700 6000
NoConn ~ 6700 6200
Text GLabel 3100 6000 2    50   Input ~ 0
SCL
$Comp
L power:+3.3V #PWR09
U 1 1 5D1A2F59
P 1300 5400
F 0 "#PWR09" H 1300 5250 50  0001 C CNN
F 1 "+3.3V" H 1315 5573 50  0000 C CNN
F 2 "" H 1300 5400 50  0001 C CNN
F 3 "" H 1300 5400 50  0001 C CNN
	1    1300 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5D1A381F
P 2700 5400
F 0 "#PWR010" H 2700 5250 50  0001 C CNN
F 1 "+3.3V" H 2715 5573 50  0000 C CNN
F 2 "" H 2700 5400 50  0001 C CNN
F 3 "" H 2700 5400 50  0001 C CNN
	1    2700 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR011
U 1 1 5D1A3A7F
P 2900 5400
F 0 "#PWR011" H 2900 5250 50  0001 C CNN
F 1 "+3.3V" H 2915 5573 50  0000 C CNN
F 2 "" H 2900 5400 50  0001 C CNN
F 3 "" H 2900 5400 50  0001 C CNN
	1    2900 5400
	1    0    0    -1  
$EndComp
NoConn ~ 2600 6200
NoConn ~ 2000 6700
NoConn ~ 1400 6200
Text GLabel 1100 6000 0    50   BiDi ~ 0
SDA
Wire Wire Line
	5700 2400 5500 2400
Text GLabel 5500 2400 0    50   BiDi ~ 0
SDA
Wire Wire Line
	5500 2000 5700 2000
Text GLabel 8500 5800 0    50   Input ~ 0
RGB_R
Text GLabel 8500 5900 0    50   Input ~ 0
RGB_B
Text GLabel 8500 6000 0    50   Input ~ 0
RGB_G
Wire Wire Line
	8500 5800 8700 5800
Wire Wire Line
	5700 2300 5500 2300
Text GLabel 5500 2300 0    50   Output ~ 0
RGB_R
Wire Wire Line
	1900 2750 1900 2900
Wire Wire Line
	1800 2000 1500 2000
$Comp
L SamacSys_Parts:SW_Push_KMR2 !RESET1
U 1 1 5D3801F4
P 2000 1300
F 0 "!RESET1" H 2000 1493 50  0000 C CNN
F 1 "SW_Push_KMR2" H 2000 1494 50  0001 C CNN
F 2 "SamacSys_Parts:SW_Push_1P1T_NO_CK_KMR2" H 2000 1500 50  0001 C CNN
F 3 "~" H 2000 1500 50  0001 C CNN
	1    2000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1300 2700 1300
Wire Wire Line
	1500 2000 1500 2200
Wire Wire Line
	1500 1300 1500 1500
Wire Wire Line
	2200 2000 2700 2000
$Comp
L SamacSys_Parts:SW_Push_KMR2 !BOOT1
U 1 1 5D37F9E7
P 2000 2000
F 0 "!BOOT1" H 2000 2193 50  0000 C CNN
F 1 "SW_Push_KMR2" H 2000 2194 50  0001 C CNN
F 2 "SamacSys_Parts:SW_Push_1P1T_NO_CK_KMR2" H 2000 2200 50  0001 C CNN
F 3 "~" H 2000 2200 50  0001 C CNN
	1    2000 2000
	1    0    0    -1  
$EndComp
Connection ~ 5700 5900
Wire Wire Line
	5800 5900 5700 5900
Text Notes 1550 850  0    59   ~ 0
K2-1809SN-D4DW-06
$Comp
L MoreE_u-blox_E-PEAS-eagle-import:MA03-2 SV?
U 1 1 3E7D897A
P 5300 6000
AR Path="/3E7D897A" Ref="SV?"  Part="1" 
AR Path="/5D11F2D7/3E7D897A" Ref="Flash_Conf1"  Part="1" 
F 0 "Flash_Conf1" H 5150 6230 59  0000 L BNN
F 1 "SV1" H 5150 5700 59  0000 L BNN
F 2 "SamacSys_Parts:PinHeader_2x03_P2.54mm_Vertical" H 5300 6000 50  0001 C CNN
F 3 "" H 5300 6000 50  0001 C CNN
	1    5300 6000
	1    0    0    -1  
$EndComp
NoConn ~ 5700 1800
NoConn ~ 5700 1900
$Comp
L power:GND #PWR0114
U 1 1 5D499047
P 5600 3050
F 0 "#PWR0114" H 5600 2800 50  0001 C CNN
F 1 "GND" H 5605 2877 50  0000 C CNN
F 2 "" H 5600 3050 50  0001 C CNN
F 3 "" H 5600 3050 50  0001 C CNN
	1    5600 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3000 5600 3000
Wire Wire Line
	5600 3000 5600 3050
Wire Wire Line
	5700 2800 5600 2800
Wire Wire Line
	5600 2800 5600 3000
Connection ~ 5600 3000
Wire Wire Line
	5700 2200 5600 2200
Wire Wire Line
	5600 2200 5600 2800
Connection ~ 5600 2800
Wire Wire Line
	5500 2100 5700 2100
NoConn ~ 9700 1700
NoConn ~ 9700 2000
NoConn ~ 9700 2100
NoConn ~ 5700 1700
$EndSCHEMATC
