`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2024 10:42:21
// Design Name: 
// Module Name: REG_4bit
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


module REG_4bit(
    input [3:0] D,
    input clk,
    output [3:0] Q
    );
    
    reg [3:0] Q;
    
    always@(posedge clk) begin
    
     Q = D;
 
    end
    
endmodule
