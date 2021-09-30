// Test Verilog module
module mac (
    output reg[15:0]    out,
    input[7:0]              ina, inb, 
    input                     clk, sclrn
);

// Multiplier task
task mult;
    input[7:0] a, b;
    output[15:0] mult_out;
begin
    mult_out = a * b;
end
endtask

// Register to hold the multiply output
reg[15:0] mult_out;

always @*
begin
      mult(ina, inb, mult_out);
end

wire[15:0] adder_out;
assign adder_out = mult_out + out;

always @(posedge clk)
begin
    if(!sclrn)
        out = 16'h0000;
    else
        out <= adder_out;
end

endmodule
