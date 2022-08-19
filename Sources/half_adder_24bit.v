`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 19:17:54
// Design Name: 
// Module Name: half_adder_24bit
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


module half_adder_24bit(
    input [23:0] a,
    input [23:0] b,
    output [23:0] c
    );
    assign c=a+b;
endmodule
