############################################################################
# XEM7001 - Xilinx constraints file
#
# Pin mappings for the XEM7001.  Use this as a template and comment out 
# the pins that are not used in your design.  (By default, map will fail
# if this file contains constraints for signals not in your design).
#
# Copyright (c) 2004-2015 Opal Kelly Incorporated
############################################################################
set_property BITSTREAM.GENERAL.COMPRESS True [current_design]

set_property PACKAGE_PIN K12 [get_ports {hi_muxsel}]
set_property IOSTANDARD LVCMOS33 [get_ports {hi_muxsel}]

############################################################################
## FrontPanel Host Interface
############################################################################
set_property PACKAGE_PIN N11 [get_ports {hi_in[0]}]
set_property PACKAGE_PIN R13 [get_ports {hi_in[1]}]
set_property PACKAGE_PIN R12 [get_ports {hi_in[2]}]
set_property PACKAGE_PIN P13 [get_ports {hi_in[3]}]
set_property PACKAGE_PIN T13 [get_ports {hi_in[4]}]
set_property PACKAGE_PIN T12 [get_ports {hi_in[5]}]
set_property PACKAGE_PIN P11 [get_ports {hi_in[6]}]
set_property PACKAGE_PIN R10 [get_ports {hi_in[7]}]

set_property SLEW FAST [get_ports {hi_in[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hi_in[*]}]

set_property PACKAGE_PIN R15 [get_ports {hi_out[0]}]
set_property PACKAGE_PIN N13 [get_ports {hi_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hi_out[*]}]

set_property PACKAGE_PIN T15 [get_ports {hi_inout[0]}]
set_property PACKAGE_PIN T14 [get_ports {hi_inout[1]}]
set_property PACKAGE_PIN R16 [get_ports {hi_inout[2]}]
set_property PACKAGE_PIN P16 [get_ports {hi_inout[3]}]
set_property PACKAGE_PIN P15 [get_ports {hi_inout[4]}]
set_property PACKAGE_PIN N16 [get_ports {hi_inout[5]}]
set_property PACKAGE_PIN M16 [get_ports {hi_inout[6]}]
set_property PACKAGE_PIN M12 [get_ports {hi_inout[7]}]
set_property PACKAGE_PIN L13 [get_ports {hi_inout[8]}]
set_property PACKAGE_PIN K13 [get_ports {hi_inout[9]}]
set_property PACKAGE_PIN M14 [get_ports {hi_inout[10]}]
set_property PACKAGE_PIN L14 [get_ports {hi_inout[11]}]
set_property PACKAGE_PIN K16 [get_ports {hi_inout[12]}]
set_property PACKAGE_PIN K15 [get_ports {hi_inout[13]}]
set_property PACKAGE_PIN J14 [get_ports {hi_inout[14]}]
set_property PACKAGE_PIN J13 [get_ports {hi_inout[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {hi_inout[*]}]

set_property PACKAGE_PIN M15 [get_ports {hi_aa}]
set_property IOSTANDARD LVCMOS33 [get_ports {hi_aa}]


create_clock -name okHostClk -period 20.83 [get_ports {hi_in[0]}]

set_input_delay -add_delay -max -clock [get_clocks {okHostClk}]  11.000 [get_ports {hi_inout[*]}]
set_input_delay -add_delay -min -clock [get_clocks {okHostClk}]  0.000  [get_ports {hi_inout[*]}]
set_multicycle_path -setup -from [get_ports {hi_inout[*]}] 2

set_input_delay -add_delay -max -clock [get_clocks {okHostClk}]  6.700 [get_ports {hi_in[*]}]
set_input_delay -add_delay -min -clock [get_clocks {okHostClk}]  0.000 [get_ports {hi_in[*]}]
set_multicycle_path -setup -from [get_ports {hi_in[*]}] 2

set_output_delay -add_delay -clock [get_clocks {okHostClk}]  8.900 [get_ports {hi_out[*]}]

set_output_delay -add_delay -clock [get_clocks {okHostClk}]  9.200 [get_ports {hi_inout[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports {clk_100}]
set_property PACKAGE_PIN N14 [get_ports {clk_100}]

#set_property IOSTANDARD LVCMOS33 [get_ports {clk2}]
#set_property PACKAGE_PIN F4 [get_ports {clk2}]
############################################################################
## Expansion Connectors                                                         
############################################################################

### JP2 ###
set_property PACKAGE_PIN T10 [get_ports {logic_out[0]}] 
set_property PACKAGE_PIN T8  [get_ports {logic_out[1]}]
set_property PACKAGE_PIN R8  [get_ports {logic_out[2]}] 
set_property PACKAGE_PIN T7  [get_ports {logic_out[3]}] 
set_property PACKAGE_PIN R7  [get_ports {logic_out[4]}]
set_property PACKAGE_PIN T9  [get_ports {logic_out[5]}] 
set_property PACKAGE_PIN R6  [get_ports {logic_out[6]}]
set_property PACKAGE_PIN T5  [get_ports {logic_out[7]}] 
set_property PACKAGE_PIN P8  [get_ports {logic_out[8]}] 
set_property PACKAGE_PIN R5  [get_ports {logic_out[9]}]
set_property PACKAGE_PIN N6  [get_ports {logic_out[10]}] 
set_property PACKAGE_PIN P5  [get_ports {logic_out[11]}] 
set_property PACKAGE_PIN T4  [get_ports {logic_out[12]}] 
set_property PACKAGE_PIN P4  [get_ports {logic_out[13]}] 
set_property PACKAGE_PIN N4  [get_ports {logic_out[14]}] 
set_property PACKAGE_PIN T3  [get_ports {logic_out[15]}]

set_property PACKAGE_PIN R3  [get_ports {logic_out[16]}]
set_property PACKAGE_PIN T2  [get_ports {logic_out[17]}] 
set_property PACKAGE_PIN P3  [get_ports {logic_out[18]}] 
set_property PACKAGE_PIN R2  [get_ports {logic_out[19]}] 
set_property PACKAGE_PIN R1  [get_ports {logic_out[20]}] 
set_property PACKAGE_PIN P1  [get_ports {logic_out[21]}] 
set_property PACKAGE_PIN N3  [get_ports {logic_out[22]}] 
set_property PACKAGE_PIN N2  [get_ports {logic_out[23]}] 
set_property PACKAGE_PIN N1  [get_ports {logic_out[24]}] 
set_property PACKAGE_PIN M4  [get_ports {logic_out[25]}] 
set_property PACKAGE_PIN L4  [get_ports {logic_out[26]}] 
set_property PACKAGE_PIN M2  [get_ports {logic_out[27]}] 
set_property PACKAGE_PIN M1  [get_ports {logic_out[28]}] 
set_property PACKAGE_PIN L3  [get_ports {logic_out[29]}] 
set_property PACKAGE_PIN K3  [get_ports {logic_out[30]}] 
set_property PACKAGE_PIN L2  [get_ports {logic_out[31]}] 

### JP3 ###
set_property PACKAGE_PIN A8  [get_ports {logic_out[32]}] 
set_property PACKAGE_PIN D9  [get_ports {logic_out[33]}] 
set_property PACKAGE_PIN C8  [get_ports {logic_out[34]}] 
set_property PACKAGE_PIN D10 [get_ports {logic_out[35]}] 
set_property PACKAGE_PIN A9  [get_ports {logic_out[36]}] 
set_property PACKAGE_PIN C9  [get_ports {logic_out[37]}] 
set_property PACKAGE_PIN B9  [get_ports {logic_out[38]}] 
set_property PACKAGE_PIN A10 [get_ports {logic_out[39]}] 
set_property PACKAGE_PIN B10 [get_ports {logic_out[40]}]
set_property PACKAGE_PIN C11 [get_ports {logic_out[41]}] 
set_property PACKAGE_PIN B12 [get_ports {logic_out[42]}] 
set_property PACKAGE_PIN A12 [get_ports {logic_out[43]}] 
set_property PACKAGE_PIN C12 [get_ports {logic_out[44]}] 
set_property PACKAGE_PIN F13 [get_ports {logic_out[45]}] 
set_property PACKAGE_PIN A13 [get_ports {logic_out[46]}] 
set_property PACKAGE_PIN A14 [get_ports {logic_out[47]}] 

set_property PACKAGE_PIN E13 [get_ports {logic_out[48]}] 
set_property PACKAGE_PIN B14 [get_ports {logic_out[49]}] 
set_property PACKAGE_PIN C14 [get_ports {logic_out[50]}] 
set_property PACKAGE_PIN A15 [get_ports {logic_out[51]}] 
set_property PACKAGE_PIN B15 [get_ports {logic_out[52]}] 
set_property PACKAGE_PIN B16 [get_ports {logic_out[53]}] 
set_property PACKAGE_PIN C16 [get_ports {logic_out[54]}] 
set_property PACKAGE_PIN D15 [get_ports {logic_out[55]}] 
set_property PACKAGE_PIN D16 [get_ports {logic_out[56]}] 
set_property PACKAGE_PIN D14 [get_ports {logic_out[57]}] 
set_property PACKAGE_PIN E16 [get_ports {logic_out[58]}] 
set_property PACKAGE_PIN E15 [get_ports {logic_out[59]}] 
set_property PACKAGE_PIN G15 [get_ports {logic_out[60]}] 
set_property PACKAGE_PIN F14 [get_ports {logic_out[61]}] 
set_property PACKAGE_PIN H14 [get_ports {logic_out[62]}] 
set_property PACKAGE_PIN G16 [get_ports {logic_out[63]}] 

set_property IOSTANDARD LVCMOS33 [get_ports {logic_out[*]}]

### Trigger, JP3-Pin45, F15 ###
set_property PACKAGE_PIN F15 [get_ports {trigger}]
set_property IOSTANDARD LVCMOS33 [get_ports {trigger}]

# LEDs #####################################################################
set_property PACKAGE_PIN H5 [get_ports {led[0]}]
set_property PACKAGE_PIN F3 [get_ports {led[1]}]
set_property PACKAGE_PIN E3 [get_ports {led[2]}]
set_property PACKAGE_PIN H4 [get_ports {led[3]}]
set_property PACKAGE_PIN D3 [get_ports {led[4]}]
set_property PACKAGE_PIN C3 [get_ports {led[5]}]
set_property PACKAGE_PIN H3 [get_ports {led[6]}]
set_property PACKAGE_PIN A4 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]

# Buttons ##################################################################
#set_property PACKAGE_PIN A5 [get_ports {button[0]}]
#set_property PACKAGE_PIN B4 [get_ports {button[1]}]
#set_property PACKAGE_PIN B7 [get_ports {button[2]}]
#set_property PACKAGE_PIN A7 [get_ports {button[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {button[*]}]
