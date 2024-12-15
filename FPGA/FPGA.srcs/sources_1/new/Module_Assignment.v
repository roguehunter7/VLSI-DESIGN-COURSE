`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2024 12:40:00
// Design Name: 
// Module Name: Module_Assignment
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


module Module_Assignment(
input A, B, C,  
    output Z        
);
    assign Z = (~A & ~B) | (~B & ~C) | (~C & ~A); 
endmodule