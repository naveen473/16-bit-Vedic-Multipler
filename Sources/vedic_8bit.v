`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 18:52:47
// Design Name: 
// Module Name: vedic_8bit
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


module vedic_8bit(
    input [7:0] a,
    input [7:0] b,
    input [15:0] c
    );
    // temporary variables
   wire [7:0]q0;    
   wire [7:0]q1;    
   wire [7:0]q2;
   wire [7:0]q3;  
   wire [7:0]q4;
   wire [11:0]q5;
   wire [11:0]q6;  
   wire [7:0]temp0;
   wire [11:0]temp1;
   wire [11:0]temp2;
   wire [11:0]temp3;
  
   
   // using 4 2x2 multipliers
   vedic_4bit v1(a[3:0],b[3:0],q0[7:0]);
   vedic_4bit v2(a[7:4],b[3:0],q1[7:0]);
   vedic_4bit v3(a[3:0],b[7:4],q2[7:0]);
   vedic_4bit v4(a[7:4],b[7:4],q3[7:0]);
   
   
   // stage 1 adders 
   assign temp0 ={4'b0,q0[7:4]};
   assign temp1 ={4'b0,q2[7:0]};
   assign temp2 ={q3[7:0],4'b0};
   assign temp3={4'b0,q4[7:0]};
   
   half_adder_8bit h1(q1[7:0],temp0,q4);
   half_adder_12bit h2(temp1,temp2,q5);

  
   
   
   // stage 2 adder 
   half_adder_12bit h3(temp3,q5,q6);
   
   
   // fnal output assignment 
   assign c[3:0]=q0[3:0];
   assign c[15:4]=q6[11:0];

endmodule
