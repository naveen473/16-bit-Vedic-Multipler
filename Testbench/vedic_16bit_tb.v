`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 19:25:47
// Design Name: 
// Module Name: vedic_16bit_tb
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


module vedic_16bit_tb(

    );
    reg [15:0]a,b;
    wire [31:0]c;
    
    
    // Instantiation of 2 bit vedic multiplier
    vedic_16bit vtb(a,b,c);
    
    
    // Test case
    initial
    begin 
    a=0;b=0;
    #10 a=1;b=1;
    #10 a=3;b=3;
    #10 a=7;b=7;
    #10 a=15;b=15;
    #10 a=31;b=31;
    #10 a=63;b=63;
    #10 a=127;b=127;
    #10 a=255;b=255;
    #10 a=511;b=511;
    #10 a=1023;b=1023;
    #10 a=2047;b=2047;
    #10 a=4095;b=4095;
    #10 a=8191;b=8191;
    #10 a=16383;b=16383;
    #10 a=32767;b=32767;
    #10 a=65535;b=65535;
    
    end
endmodule
