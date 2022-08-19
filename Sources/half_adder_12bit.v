`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 19:02:19
// Design Name: 
// Module Name: half_adder_12bit
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


module half_adder_12bit(
    input [11:0] a,
    input [11:0] b,
    output [11:0] c
    );
    assign c=a+b;
endmodule
