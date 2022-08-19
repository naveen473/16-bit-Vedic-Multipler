`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 19:04:54
// Design Name: 
// Module Name: vedic_8bit_tb
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


module vedic_8bit_tb(

    );
     reg [7:0]a,b;
     wire [15:0]c;
           
         
       // Instantiation of 2 bit vedic multiplier
       vedic_8bit vtb(a,b,c);
      
      
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
      
       end  
endmodule
