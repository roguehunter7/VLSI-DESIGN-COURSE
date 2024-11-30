`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2024 13:18:42
// Design Name: 
// Module Name: FA_GATE
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


module FA_GATE(
    input A,B,Cin,
    output Sum, Cout
    );
    wire s1,s2,s3;
    
    xor (s1, A, B);
    and (s2, A, B);
    xor (Sum, s1, Cin);
    and (s3, s1, Cin);
    or (Cout, s2, s3);
     
endmodule
