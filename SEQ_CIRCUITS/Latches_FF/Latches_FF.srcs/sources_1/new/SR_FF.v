`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2024 12:37:56
// Design Name: 
// Module Name: SR_FF
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


module SR_FF(
    input S,
    input R,
    input clk,
    output reg Q,
    output reg Qbar
    );
    
    always@(posedge clk)
    begin
        if(S==0 && R==1) begin
            Q <= 0;
            Qbar <= 1;
        end
        else if(S==1 && R==0) begin
            Q <= 1;
            Qbar <= 0;
        end
        else if(S==0 && R==1) begin
             Q <= Q;
             Qbar <= Qbar;
        end
            
    end
    
endmodule
