`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2024 12:58:08
// Design Name: 
// Module Name: REG_4bit_clear
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


module REG_4bit_clear(
    input [3:0] D,
    input clk, load, clear,
    output [3:0] Q
    );
    reg [3:0] Q;
    always@(posedge clk) begin
    if (clear == 1) begin
        Q = 4'b0000;
    end
    else if (clear == 0 && load == 0) begin
        Q = Q;
    end
    else begin
        Q = D;
    end
    end    
endmodule
