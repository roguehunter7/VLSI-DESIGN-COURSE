`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2024 12:58:14
// Design Name: 
// Module Name: FA_CASE
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


module FA_CASE(
    input wire A,
    input wire B, 
    input wire Cin,
    output reg Sum,
    output reg Cout
    );
    
    always@(A or B or Cin) begin
        case({A,B,Cin})
            
            3'b000: begin Sum = 0; Cout=0; end 
            3'b001: begin Sum = 1; Cout=0; end 
            3'b010: begin Sum = 1; Cout=0; end 
            3'b011: begin Sum = 0; Cout=1; end 
            3'b100: begin Sum = 1; Cout=0; end 
            3'b101: begin Sum = 0; Cout=1; end 
            3'b110: begin Sum = 0; Cout=1; end
            3'b111: begin Sum = 1; Cout=1; end 
                
        endcase
    end
endmodule
