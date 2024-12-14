`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2024 11:06:43
// Design Name: 
// Module Name: FA_MI
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


module FA_MI(
    input A,
    input B,
    input Cin,
    output Cout,
    output Sum
    );
    
    wire s1,s2,s3;
    
    HA_gate d0 (.a(A),.b(B),.s(s1),.c(s2));
    HA_gate d1 (.a(s1), .b(Cin), .s(Sum), .c(s3));
    or (Cout, s2, s3);
    
endmodule
