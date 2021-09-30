// Test Verilog module
module mac (
    output reg[15:0]    out,
    input[7:0]              ina, inb, 
    input                     clk, sclrn
);

task mult;
    input[7:0] a, b;
    output[15:0] mult_out;
begin
    mult_out = a * b;
end
endtask

always @*
      mult(ina, inb, out);

endmodule
