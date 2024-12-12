`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2024 21:16:30
// Design Name: 
// Module Name: Counter_Ring_4bit
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


module Counter_Ring_4bit(
input clk,clr,
output [3:0] Q
    );
wire clk,clr;
reg [3:0] Q = 4'b1000;

always@(posedge (clk) or posedge (clr)) begin
if (clr == 1) begin
    Q = 4'b1000;
end
else begin
    Q <= {Q[0],Q[3:1]};
end
end
endmodule
