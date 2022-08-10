#!/bin/sh

 ghdl -a tc.vhd 
 ghdl -a tc_tb.vhd 
 ghdl -a dff.vhd
 ghdl -e tc_tb
 ghdl -r tc_tb --stop-time=1000ns --wave=tc_tb.ghw
 gtkwave tc_tb.ghw