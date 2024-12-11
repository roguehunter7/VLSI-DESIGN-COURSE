`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2024 14:29:06
// Design Name: 
// Module Name: D_FF_CLR
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


module D_FF_CLR(
    input D,
    input clk,
    input clr,
    output Q
    );
    
    reg Q;
    
    always@(posedge clk) begin
        if(clr == 1)
            Q = 1'b0;
        else
            Q = D;
    end
    
endmodule
