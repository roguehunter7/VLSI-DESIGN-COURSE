`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2024 10:59:40
// Design Name: 
// Module Name: Decoder_2to4
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


module Decoder_2to4E(
    input E,
    input A,
    input B,
    output Y0,
    output Y1,
    output Y2,
    output Y3
    );
    
    assign Y0 = E & (~A) & (~B);
    assign Y1 = E & (A) & (~B);
    assign Y2 = E & (~A) & (B);
    assign Y3 = E & (A) & (B);
    
endmodule
