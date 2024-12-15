`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2021 16:07:31
// Design Name: 
// Module Name: RCA_4bit
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


module RCA_4bit(
    input [3:0] A,
    input [3:0] B,
    input C,
    output [3:0] S,
    output Cout
    );
    wire c1,c2,c3;
    FA_GATE d1(A[0],B[0],C,S[0],c1);
    FA_GATE d2(A[1],B[1],c1,S[1],c2);
    FA_GATE d3(A[2],B[2],c2,S[2],c3);
    FA_GATE d4(A[3],B[3],c3,S[3],Cout);
endmodule
