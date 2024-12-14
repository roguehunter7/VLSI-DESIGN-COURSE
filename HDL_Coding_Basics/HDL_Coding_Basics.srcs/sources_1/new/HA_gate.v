`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2024 20:59:44
// Design Name: 
// Module Name: HA_gate
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


module HA_gate(
    input a,
    input b,
    output s,
    output c
    );
    
    xor (s, a, b);
    and (c, a, b);
    
endmodule
