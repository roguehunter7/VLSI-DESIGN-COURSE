`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2024 14:34:07
// Design Name: 
// Module Name: Counter_4bit_async
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


module Counter_4bit_async(
    input clk,
    output [3:0] Q
    );
    
    reg [3:0] Q;
    wire clk;
    
    initial begin
        Q = 4'b0;
    end
    
    always@(negedge clk) begin
        Q[0] <= ~Q[0];
    end
    always@(negedge Q[0]) begin
        Q[1] <= ~Q[1];
    end
    always@(negedge Q[1]) begin
        Q[2] <= ~Q[2];
    end
    always@(negedge Q[2]) begin
        Q[3] <= ~Q[3];
    end        
        
endmodule
