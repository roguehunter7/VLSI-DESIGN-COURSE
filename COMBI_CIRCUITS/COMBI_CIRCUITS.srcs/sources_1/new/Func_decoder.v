`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2024 19:57:19
// Design Name: 
// Module Name: Func_decoder
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


module Func_decoder(
    input E,
    input A,
    input B,
    input C,
    output Y
    );
    
    wire d0,d1,d2,d3,d4,d5,d6,d7;
    
    Decoder_3to8 x0 (E,A,B,C,d0,d1,d2,d3,d4,d5,d6,d7);
    assign Y = d0|d1|d4;

endmodule
