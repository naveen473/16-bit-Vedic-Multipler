`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 19:17:54
// Design Name: 
// Module Name: vedic_16bit
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


module vedic_16bit(
    input [15:0] a,
    input [15:0] b,
    output [31:0] c
    );
    // temporary variables
   wire [15:0]q0;    
   wire [15:0]q1;    
   wire [15:0]q2;
   wire [15:0]q3;  
   wire [15:0]q4;
   wire [23:0]q5;
   wire [23:0]q6;  
   wire [15:0]temp0;
   wire [23:0]temp1;
   wire [23:0]temp2;
   wire [23:0]temp3;
  
   
   // using 4 2x2 multipliers
   vedic_8bit v1(a[7:0],b[7:0],q0[15:0]);
   vedic_8bit v2(a[15:8],b[7:0],q1[15:0]);
   vedic_8bit v3(a[7:0],b[15:8],q2[15:0]);
   vedic_8bit v4(a[15:8],b[15:8],q3[15:0]);
   
   
   // stage 1 adders 
   assign temp0 ={8'b0,q0[15:8]};
   assign temp1 ={8'b0,q2[15:0]};
   assign temp2 ={q3[15:0],8'b0};
   assign temp3={8'b0,q4[15:0]};
   
   half_adder_16bit h1(q1[15:0],temp0,q4);
   half_adder_24bit h2(temp1,temp2,q5);

  
   
   
   // stage 2 adder 
   half_adder_24bit h3(temp3,q5,q6);
   
   
   // fnal output assignment 
   assign c[7:0]=q0[7:0];
   assign c[31:8]=q6[23:0];

endmodule
