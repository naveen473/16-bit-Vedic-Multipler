`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 16:48:12
// Design Name: 
// Module Name: vedic_2bit
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


module vedic_2bit(
    input [1:0]a,
    input [1:0]b,
    output [3:0]c
    );
    
    //temporary variable
    wire [3:0]temp;
    
    
    //stage 1
    // four multiplication operation of bits accourding to vedic logic done using and gates 
    assign c[0]=a[0]&b[0]; 
    assign temp[0]=a[1]&b[0];
    assign temp[1]=a[0]&b[1];
    assign temp[2]=a[1]&b[1];
    
    
    //stage two 
    // using two half adders 
    half_adder h1(temp[0],temp[1],c[1],temp[3]);
    half_adder h2(temp[2],temp[3],c[2],c[3]);
endmodule
