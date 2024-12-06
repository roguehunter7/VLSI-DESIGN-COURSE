`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2024 21:43:06
// Design Name: 
// Module Name: comp_1_bit
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


module comp_1_bit(
    input A,
    input B,
    output E,
    output G,
    output S
    );
    wire abar, bbar;
   
   xnor (E, A, B);
   not(abar,A);
   and(S,abar,B);
   not(bbar,B);
   and(G,A,bbar);
    
endmodule
