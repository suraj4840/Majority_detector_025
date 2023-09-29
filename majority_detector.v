`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2023 03:01:04 PM
// Design Name: 
// Module Name: majority_detector
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


module majority_detector(a,b,c,m);
input a,b,c;
output m;
wire w1,w2,w3;

assign w1 = a&b;  
assign w2 = a&c;
assign w3 = b&c; 

assign m =(w1|w2|w3);



endmodule
