module top (clk, SCK, MOSI, MISO, SSEL, LED);

input clk; // FPGA internal clk from crystal on board

// 4 wire SPI signals
input SCK, SSEL, MOSI;  
output MISO;

// Controlled output for demo
output LED;


// Instantiate alternative clock, the internal osc
Gowin_OSC FPGA_osc(
    .oscout(oscout_o) //output oscout
);

// Instantiate and connect the SPI block
 SPI_slave SPI_port(oscout_o, SCK, MOSI, MISO, SSEL, LED);

endmodule