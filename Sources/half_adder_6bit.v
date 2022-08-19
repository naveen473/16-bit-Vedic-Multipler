`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 17:55:39
// Design Name: 
// Module Name: half_adder_6bit
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


module half_adder_6bit(
    input [5:0] a,
    input [5:0] b,
    output [5:0] c
    );
     assign c =a+b;
endmodule
