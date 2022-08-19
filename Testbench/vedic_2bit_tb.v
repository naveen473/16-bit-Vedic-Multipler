`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 16:53:48
// Design Name: 
// Module Name: vedic_2bit_tb
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


module vedic_2bit_tb(

    );
    reg [1:0]a,b;
    wire [3:0]c;
    
    
    // Instantiation of 2 bit vedic multiplier
    vedic_2bit vtb(a,b,c);
   
   
    // Test case
    initial
    begin 
    a=0;b=0;
    #10 a=0;b=1;
    #10 a=0;b=2;
    #10 a=0;b=3;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #10 a=1;b=2;
    #10 a=1;b=3;
    #10 a=2;b=0;
    #10 a=2;b=1;
    #10 a=2;b=2;
    #10 a=2;b=3;
    #10 a=3;b=0;
    #10 a=3;b=1;
    #10 a=3;b=2;
    #10 a=3;b=3;
    end
endmodule
