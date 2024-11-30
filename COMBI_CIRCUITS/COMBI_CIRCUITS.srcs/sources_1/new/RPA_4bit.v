`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2024 13:42:33
// Design Name: 
// Module Name: RPA_4bit
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


module RPA_4bit(
    input [3:0] A,
    input [3:0] B,
    input C,
    output [3:0] S,
    output Cout
    );
    wire c1,c2,c3;
    FA_GATE d0(.A(A[0]), .B(B[0]), .Cin(C), .Sum(S[0]), .Cout(c1));
    FA_GATE d1(.A(A[1]), .B(B[1]), .Cin(c1), .Sum(S[1]), .Cout(c2));
    FA_GATE d2(.A(A[2]), .B(B[2]), .Cin(c2), .Sum(S[2]), .Cout(c3));
    FA_GATE d3(.A(A[3]), .B(B[3]), .Cin(c3), .Sum(S[3]), .Cout(Cout));
   
endmodule
