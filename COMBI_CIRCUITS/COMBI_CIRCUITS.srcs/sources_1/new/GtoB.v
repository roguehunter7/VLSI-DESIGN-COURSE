`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2024 21:06:31
// Design Name: 
// Module Name: GtoB
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


module GtoB(
    input [3:0] G,
    output [3:0] B
    );
    
    assign G[3] = B[3];
    assign G[2] = B[3] ^ B[2];
    assign G[1] = B[3] ^ B[2] ^ B[1];
    assign G[0] = B[3] ^ B[2] ^ B[1] ^ B[0];
    
endmodule
