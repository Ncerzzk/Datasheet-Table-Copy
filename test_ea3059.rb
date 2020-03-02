
require File.expand_path('../pdf_table_copy.rb', __FILE__)

test_str="GND3 Power ground pin of CH3. 1 FB3 Feedback input of CH3.  Connect to output voltage with a resistor divider. 2 VCC Input supply pin for internal control circuit. 3 AGND Analog ground pin. 4 FB2 Feedback input of CH2.  Connect to output voltage with a resistor divider. 5 GND2 Power ground pin of CH2. 6
LX2
Internal MOSFET switching output of CH2.  Connect LX2 pin with a low pass filter circuit to obtain a stable DC output voltage.
7
VIN2
Power input pin of CH2. Recommended to use a 10uF MLCC capacitor between VIN2 pin and PGND2 pin.
8
EN2 CH2 turns on/turns off control input.  Don’t leave this pin floating. 9 EN1 CH1 turns on/turns off control input.  Don’t leave this pin floating. 10
VIN1
Power input pin of CH1. Recommended to use a 10uF MLCC capacitor between VIN1 pin and PGND1 pin.
11
LX1
Internal MOSFET switching output of CH1.  Connect LX1 pin with a low pass filter circuit to obtain a stable DC output voltage.
12
GND1 Power ground pin of CH1. 13 FB1 Feedback input of CH1.  Connect to output voltage with a resistor divider. 14 NC No connect. 15 NC No connect. 16 FB4 Feedback input of CH4 Connect to output voltage with a resistor divider. 17 GND4 Power ground pin of CH4. 18
LX4
Internal MOSFET switching output of CH4.  Connect LX4 pin with a low pass filter circuit to obtain a stable DC output voltage.
19
VIN4
Power input pin of CH4. Recommended to use a 10uF MLCC capacitor between VIN4 pin and PGND4 pin.
20
EN4 CH4 turns on/turns off control input.  Don’t leave this pin floating. 21 EN3 CH3 turns on/turns off control input.  Don’t leave this pin floating. 22
VIN3
Power input pin of CH3. Recommended to use a 10uF MLCC capacitor between VIN3 pin and PGND3 pin.
23
LX3
Internal MOSFET switching output of CH3.  Connect LX3 pin with a low pass filter circuit to obtain a stable DC output voltage.
24
Exposed Pad
The Exposed Pad must be soldered to a large PCB copper plane and connected to GND for appropriate dissipation.
25"
header="NAME DESC. PIN_NO"
a=PDF_Table.new test_str
a.set_header(header)
a.scan
