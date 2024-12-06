`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2024 13:53:25
// Design Name: 
// Module Name: Decoder_3to8
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


module Decoder_3to8(
    input E,
    input A,
    input B,
    input C,
    output Y0,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5,
    output Y6,
    output Y7
    );
    wire P ,Q;
    Decoder_2to4E h0 (.E(E),.A(C),.B(0),.Y0(P),.Y1(Q));
    Decoder_2to4E h1 (.E(P),.A(A),.B(B),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3));
    Decoder_2to4E h2 (.E(Q),.A(A),.B(B),.Y0(Y4),.Y1(Y5),.Y2(Y6),.Y3(Y7));
    
endmodule
