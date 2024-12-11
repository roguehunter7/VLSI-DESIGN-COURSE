`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2024 10:50:39
// Design Name: 
// Module Name: REG_4bit_str
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


module REG_4bit_str(
    input [3:0] D,
    input clk, load,
    output [3:0] Q
    );
    wire [3:0] Q;
    wire [3:0] S;
    
    MUX_2x1_GATE d0 (.I0(Q[0]),.I1(D[0]),.S(load),.Y(S[0]));
    MUX_2x1_GATE d1 (.I0(Q[1]),.I1(D[1]),.S(load),.Y(S[1]));
    MUX_2x1_GATE d2 (.I0(Q[2]),.I1(D[2]),.S(load),.Y(S[2]));
    MUX_2x1_GATE d3 (.I0(Q[3]),.I1(D[3]),.S(load),.Y(S[3]));
    
    D_FF x0 (.D(S[0]),.clk(clk),.Q(Q[0]));
    D_FF x1 (.D(S[1]),.clk(clk),.Q(Q[1]));
    D_FF x2 (.D(S[2]),.clk(clk),.Q(Q[2]));
    D_FF x3 (.D(S[3]),.clk(clk),.Q(Q[3]));
    
endmodule
