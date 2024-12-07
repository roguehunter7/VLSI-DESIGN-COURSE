`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2024 20:07:45
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(
    input J,
    input K,
    input clk,
    output Q
    );

    reg Q;
    initial begin 
    Q = 0;
    end
    always@(posedge clk) begin
    
    case({J,K}) 
    
    2'b00: begin Q = Q; end
    2'b01: begin Q = 0; end
    2'b10: begin Q = 1; end
    2'b11: begin Q = ~Q; end
    
    endcase
    end

endmodule
