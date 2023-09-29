`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2023 03:06:13 PM
// Design Name: 
// Module Name: majority_dtector_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module majority_dtector_tb();
reg a,b,c,clk;
wire  m;
majority_detector dut(a,b,c,m);

initial begin
clk=1'b0;
a=1'b0; b=1'b0; c=1'b0;
end

always #5 clk= ~clk;

initial begin

#5
a=1'b0; b=1'b0; c=1'b1;
#10
a=1'b0; b=1'b1; c=1'b0;
#10
a=1'b0; b=1'b1; c=1'b1;
#10
a=1'b1; b=1'b0; c=1'b0;
#10
a=1'b1; b=1'b0; c=1'b1;
#10
a=1'b1; b=1'b1; c=1'b0;
#10
a=1'b1; b=1'b1; c=1'b1;

#10
$finish;
end
endmodule
