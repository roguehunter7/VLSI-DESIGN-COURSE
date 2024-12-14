`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2024 14:57:59
// Design Name: 
// Module Name: FSM_updown
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


module FSM_updown( din, clk, clr, Z);

input wire din,clk,clr;
output reg [1:0] Z;

parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
reg [1:0] state;

always@(posedge clk) begin
    if(clr == 1)
        state <= S0;
    else
        state <= state;
end

always@(posedge clk) begin
    case(state)
        S0: begin
            if(din == 0)
                state <= S1;
            else 
                state <= S3;
            Z <= 2'b00;
        end
        S1: begin
            if(din == 0)
                state <= S2;
            else
                state <= S0;
            Z <= 2'b01;
        end
        S2: begin
            if(din == 0)
                state <= S3;
            else
                state <= S1;
            Z <= 2'b10;
        end
        S3: begin
            if(din == 0)
                state <= S0;
            else
                state <= S2;
            Z <= 2'b11;
        end 
    endcase
end

endmodule
