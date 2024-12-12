`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2024 17:32:54
// Design Name: 
// Module Name: Counter_4_updown
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


module Counter_4_updown ( 
input clk,clr,dir, 
output [3:0] Q 
);

wire clk,clr,dir;
reg [3:0] Q = 0;

always@(posedge (clk) or posedge (clr)) begin

if (clr == 1) begin
    Q <= 0;
    end
else begin    
    if (dir == 0)
        if(Q == 15) 
            Q <= 0;
        else
            Q <= Q + 1;
   else
        if (Q == 0)
            Q <= 15;
        else 
            Q <= Q - 1;
end
end
endmodule
