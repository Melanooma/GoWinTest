//Copyright (C)2014-2021 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//GOWIN Version: 1.9.8 
//Created Time: 2021-10-04 13:09:33
create_clock -name clk -period 20 -waveform {0 10} [get_ports {clk}] -add
