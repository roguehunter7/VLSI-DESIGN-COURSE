`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2024 15:19:42
// Design Name: 
// Module Name: MUX_2x1_DATAFLOW
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


module MUX_2x1_DATAFLOW(
    input I0,
    input I1,
    input S,
    output Y
    );
    reg Y;
    always@(S or I0 or I1) begin
    Y = (I0 & ~S) | (I1 & S);
    end
endmodule
