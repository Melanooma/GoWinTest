//Copyright (C)2014-2021 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//GOWIN Version: V1.9.8
//Part Number: GW1N-LV4LQ144C6/I5
//Device: GW1N-4
//Created Time: Mon Oct 04 13:12:06 2021

module Gowin_OSC (oscout);

output oscout;

OSC osc_inst (
    .OSCOUT(oscout)
);


// Base Osc freq on GW1N-4 is 210MHz, and output freq is 210MHz /  FREQ_DIV, divide between 2 & 128
defparam osc_inst.FREQ_DIV = 2;
defparam osc_inst.DEVICE = "GW1N-4B";

endmodule //Gowin_OSC
