`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2024 14:33:12
// Design Name: 
// Module Name: REG_PIPO_BD_SHIFT
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


module REG_PIPO_BD_SHIFT(
    input [3:0] D,
    input [1:0] CTRL,
    input Xr,
    input Xl,
    input clk,
    input clr,
    output [3:0] Q
    );
    wire [3:0] S;    
  
    MUX_4x1_GATE m0(.I0(Q[0]),.I1(Xl),.I2(Q[1]),.I3(D[0]),.S1(CTRL[1]),.S0(CTRL[0]),.Y(S[0]));
    MUX_4x1_GATE m1(.I0(Q[1]),.I1(Q[0]),.I2(Q[2]),.I3(D[1]),.S1(CTRL[1]),.S0(CTRL[0]),.Y(S[1]));
    MUX_4x1_GATE m2(.I0(Q[2]),.I1(Q[1]),.I2(Q[3]),.I3(D[2]),.S1(CTRL[1]),.S0(CTRL[0]),.Y(S[2]));
    MUX_4x1_GATE m3(.I0(Q[3]),.I1(Q[2]),.I2(Xr),.I3(D[3]),.S1(CTRL[1]),.S0(CTRL[0]),.Y(S[3]));
    
    D_FF_CLR d0(.D(S[0]),.clk(clk),.clr(clr),.Q(Q[0]));
    D_FF_CLR d1(.D(S[1]),.clk(clk),.clr(clr),.Q(Q[1]));
    D_FF_CLR d2(.D(S[2]),.clk(clk),.clr(clr),.Q(Q[2]));
    D_FF_CLR d3(.D(S[3]),.clk(clk),.clr(clr),.Q(Q[3]));
    
    
endmodule
