`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2024 14:34:45
// Design Name: 
// Module Name: Module_test
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


module Module_test(
    input wire D1,
    input wire D2,
    input wire D3,
    output wire P1,
    output wire P2,
    output wire P3,
    output wire P4
    );
    assign {P4,P3,P2,P1} = {D3,D2,D1} << 1;
endmodule
