`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2024 21:23:43
// Design Name: 
// Module Name: REG_SIPO_4Bit
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


module REG_SIPO_4Bit(
    input Din,
    input clk,
    input load,
    output [3:0] Q
    );
    
    reg [3:0] temp;
    always@(posedge clk) begin
        if (load == 0) begin
            temp = temp;
        end
        else begin
            temp = {temp[2:0],Din};
        end
    end
    assign Q = temp;
endmodule
