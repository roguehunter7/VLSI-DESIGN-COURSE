`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2024 16:33:08
// Design Name: 
// Module Name: Pattern_mealy
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


module Pattern_mealy(clk, din, clr, Z);

input wire clk,din,clr;
output reg Z;

parameter Sin = 2'b00, S1 = 2'b01, S10 = 2'b10, S101 = 2'b11;
reg [1:0] state, state_next;

always@(posedge clk) begin
    if( clr == 1)
        state <= Sin;            
    else
        state <= state_next;
end

always@(state,din) begin
case(state)
    Sin: begin
        if(din == 0)
            state_next <= Sin;
        else 
            state_next <= S1;
   end
   S1: begin
          if(din == 0)
              state_next <= S10;
          else 
              state_next <= S1;
   end
   S10: begin
          if(din == 0)
              state_next <= Sin;
          else 
              state_next <= S101;
   end
   S101: begin
          if(din == 0)
              state_next <= S10;
          else 
              state_next <= S1;
   end
   default:
    state_next = Sin;
   endcase   
 end
 
always@(din, state) begin
case(state)
    Sin: Z <= 0;
    S1: Z <= 0;
    S10: Z<= 0;
    S101: begin
        if(din == 1) 
             Z <= 1;
        else
            Z <= 0;
    end
endcase
end
  
endmodule
