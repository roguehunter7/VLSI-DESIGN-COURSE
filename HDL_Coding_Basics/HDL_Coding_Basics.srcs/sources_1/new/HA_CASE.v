`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2024 13:16:34
// Design Name: 
// Module Name: HA_CASE
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


module HA_CASE(
    input wire A,
    input wire B,
    output reg S,
    output reg Cout
    );
    
    always@(A or B)
    begin
      case({A,B})
        2'b00: begin S=0; Cout =0; end
        2'b01: begin S=1; Cout =0; end
        2'b10: begin S=1; Cout =0; end
        2'b11: begin S=0; Cout =1; end
        default: begin S=1; Cout =1; end  
      endcase
    end
endmodule
