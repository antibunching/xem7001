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

# allows multiplexing of clk signal (ti_clk)
#PIN "okHI/hi_clkbuf.O" CLOCK_DEDICATED_ROUTE = FALSE;
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {okHI/hi_in0_ibufg}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk_100}]
set_property PACKAGE_PIN N14 [get_ports {clk_100}]

set_property PACKAGE_PIN A8  [get_ports {dac_bus[0]}] 
set_property PACKAGE_PIN D9  [get_ports {dac_bus[1]}] 
set_property PACKAGE_PIN C8  [get_ports {dac_bus[2]}] 
set_property PACKAGE_PIN D10 [get_ports {dac_bus[3]}] 
set_property PACKAGE_PIN A9  [get_ports {dac_bus[4]}] 
set_property PACKAGE_PIN C9  [get_ports {dac_bus[5]}] 
set_property PACKAGE_PIN B9  [get_ports {dac_bus[6]}] 
set_property PACKAGE_PIN A10 [get_ports {dac_bus[7]}] 
set_property PACKAGE_PIN B10 [get_ports {dac_bus[8]}]
set_property PACKAGE_PIN C11 [get_ports {dac_bus[9]}] 
set_property PACKAGE_PIN B12 [get_ports {dac_bus[10]}] 
set_property PACKAGE_PIN A12 [get_ports {dac_bus[11]}] 
set_property PACKAGE_PIN C12 [get_ports {dac_bus[12]}] 
set_property PACKAGE_PIN F13 [get_ports {dac_bus[13]}] 
set_property PACKAGE_PIN A13 [get_ports {dac_bus[14]}] 
set_property PACKAGE_PIN A14 [get_ports {dac_bus[15]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {dac_bus[*]}]

set_property PACKAGE_PIN G14 [get_ports {dac_cs[0]}] 
set_property PACKAGE_PIN H16 [get_ports {dac_cs[1]}] 
set_property PACKAGE_PIN G16 [get_ports {dac_cs[2]}] 
set_property PACKAGE_PIN F14 [get_ports {dac_cs[3]}] 
set_property PACKAGE_PIN E15 [get_ports {dac_cs[4]}] 
set_property PACKAGE_PIN D14 [get_ports {dac_cs[5]}] 
set_property PACKAGE_PIN D15 [get_ports {dac_cs[6]}] 
set_property PACKAGE_PIN B16 [get_ports {dac_cs[7]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {dac_cs[*]}]

set_property PACKAGE_PIN F15 [get_ports {ldac[0]}] 
set_property PACKAGE_PIN H13 [get_ports {ldac[1]}] 
set_property PACKAGE_PIN H14 [get_ports {ldac[2]}] 
set_property PACKAGE_PIN G15 [get_ports {ldac[3]}] 
set_property PACKAGE_PIN E16 [get_ports {ldac[4]}] 
set_property PACKAGE_PIN D16 [get_ports {ldac[5]}] 
set_property PACKAGE_PIN C16 [get_ports {ldac[6]}] 
set_property PACKAGE_PIN B15 [get_ports {ldac[7]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {ldac[*]}]

set_property PACKAGE_PIN A3 [get_ports {trigger}] 
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
