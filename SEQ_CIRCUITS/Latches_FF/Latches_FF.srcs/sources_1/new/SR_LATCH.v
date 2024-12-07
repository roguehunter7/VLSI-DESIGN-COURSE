`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2024 11:45:55
// Design Name: 
// Module Name: SR_LATCH
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


module SR_LATCH(
    input S,
    input R,
    output Q,
    output Qbar
    );
    
    nor(Qbar, Q, S);
    nor(Q, Qbar, R);

    
endmodule
