`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2024 09:44:50
// Design Name: 
// Module Name: MUX_4x1_GATE
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


module MUX_4x1_GATE(
    input I0,
    input I1,
    input I2,
    input I3,
    input S0,
    input S1,
    output Y
    );
    wire Y1,Y2;
    MUX_2x1_GATE d0(.S(S0),.I0(I0),.I1(I1),.Y(Y1));
    MUX_2x1_GATE d1(.S(S0),.I0(I2),.I1(I3),.Y(Y2));
    MUX_2x1_GATE d2(.S(S1),.I0(Y1),.I1(Y2),.Y(Y));
        
endmodule
