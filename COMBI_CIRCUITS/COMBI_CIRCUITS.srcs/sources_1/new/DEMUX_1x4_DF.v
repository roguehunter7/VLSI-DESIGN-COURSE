`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2024 16:27:17
// Design Name: 
// Module Name: DEMUX_1x4_DF
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


module DEMUX_1x4_DF(
    input X,
    input S0,
    input S1,
    output Y0,
    output Y1,
    output Y2,
    output Y3
    );
    
    assign Y0 = X & (~S0) & (~S1);
    assign Y1 = X & (~S0) & (S1);
    assign Y2 = X & (S0) & (~S1);
    assign Y3 = X & (S0) & (S1);
endmodule
