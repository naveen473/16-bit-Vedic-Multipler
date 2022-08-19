`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 17:36:27
// Design Name: 
// Module Name: vedic_4bit
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


module vedic_4bit(
    input [3:0] a,
    input [3:0] b,
    output [7:0] c
    );
    // temporary variables
    wire [3:0]q0;	
    wire [3:0]q1;    
    wire [3:0]q2;
    wire [3:0]q3;  
    wire [3:0]q4;
    wire [5:0]q5;
    wire [5:0]q6;  
    wire [3:0]temp0;
    wire [5:0]temp1;
    wire [5:0]temp2;
    wire [5:0]temp3;
   
    
    // using 4 2x2 multipliers
    vedic_2bit v1(a[1:0],b[1:0],q0[3:0]);
    vedic_2bit v2(a[3:2],b[1:0],q1[3:0]);
    vedic_2bit v3(a[1:0],b[3:2],q2[3:0]);
    vedic_2bit v4(a[3:2],b[3:2],q3[3:0]);
    
    
    // stage 1 adders 
    assign temp0 ={2'b0,q0[3:2]};
    assign temp1 ={2'b0,q2[3:0]};
    assign temp2 ={q3[3:0],2'b0};
    assign temp3={2'b0,q4[3:0]};
    
    half_adder_4bit h1(q1[3:0],temp0,q4);
    half_adder_6bit h2(temp1,temp2,q5);

   
    
    
    // stage 2 adder 
    half_adder_6bit h3(temp3,q5,q6);
    
    
    // fnal output assignment 
    assign c[1:0]=q0[1:0];
    assign c[7:2]=q6[5:0];

endmodule
