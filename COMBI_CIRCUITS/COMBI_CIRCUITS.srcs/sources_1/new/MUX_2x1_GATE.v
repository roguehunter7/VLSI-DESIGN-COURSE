`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2024 15:09:08
// Design Namew// Module Name: MUX_2x1_GATE
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX_2x1_GATE(
    input I0, I1, S,
    output Y
    );
    
    wire sbar, o1, o2;
    
    not(sbar, S);
    and(o1, sbar, I0);
    and(o2, S, I1);
    or(Y, o1, o2);
endmodule
