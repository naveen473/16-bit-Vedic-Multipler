`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 17:58:35
// Design Name: 
// Module Name: vedic_4bit_tb
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


module vedic_4bit_tb(

    );
    reg [3:0]a,b;
    wire [7:0]c;
        
      
    // Instantiation of 2 bit vedic multiplier
    vedic_4bit vtb(a,b,c);
   
   
    // Test case
    initial
    begin 
    a=0;b=0;
    #10 a=1;b=1;
    #10 a=2;b=2;
    #10 a=3;b=3;
    #10 a=4;b=4;
    #10 a=5;b=5;
    #10 a=6;b=6;
    #10 a=7;b=7;
    #10 a=8;b=8;
    #10 a=9;b=9;
    #10 a=10;b=10;
    #10 a=11;b=11;
    #10 a=12;b=12;
    #10 a=13;b=13;
    #10 a=14;b=14;
    #10 a=15;b=15;      

    end
endmodule
