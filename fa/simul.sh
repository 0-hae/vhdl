#!/bin/sh

 ghdl -a fa.vhd 
 ghdl -a fa16.vhd 
 ghdl -a fa_tb.vhd 
 ghdl -e fa_tb
 ghdl -r fa_tb --stop-time=1000ns --wave=fa_tb.ghw
 gtkwave fa_tb.ghw