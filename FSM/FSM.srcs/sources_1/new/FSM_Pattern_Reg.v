`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2024 13:41:08
// Design Name: 
// Module Name: FSM_Pattern_Reg
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


module FSM_Pattern_Reg( clk, din, clr, Z);

input wire clk,din,clr;
output reg Z;

parameter Sin = 3'b000, S1 = 3'b001, S10 = 3'b010, S101 = 3'b011, S1011 = 3'b111;
reg [2:0] state, state_next;

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
        Z = 0;
   end
   S1: begin
          if(din == 0)
              state_next <= S10;
          else 
              state_next <= S1;
          Z = 0;
   end
   S10: begin
          if(din == 0)
              state_next <= Sin;
          else 
              state_next <= S101;
          Z = 0;
   end
   S101: begin
          if(din == 0)
              state_next <= S10;
          else 
              state_next <= S1011;
          Z = 0;
   end
   S1011: begin
          if(din == 0)
              state_next <= S10;
          else 
              state_next <= S1;
          Z = 1;
   end
   
   default:
    state_next = Sin;
   endcase
   
 end
  
endmodule
