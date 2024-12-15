`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2021 16:09:51
// Design Name: 
// Module Name: RCA_4_bit_7seg
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


module RCA_4_bit_7seg(
    input [3:0] A,
    input [3:0] B,
    input C,
    output [6:0] seg,
    output [3:0] an,
    output Cout
);
reg [6:0] seg;
wire [3:0] S;
wire c1,c2,c3;
FA_GATE d1(A[0],B[0],C,S[0],c1);
FA_GATE d2(A[1],B[1],c1,S[1],c2);
FA_GATE d3(A[2],B[2],c2,S[2],c3);
FA_GATE d4(A[3],B[3],c3,S[3],Cout);
assign an = 4'b1110;

always@(S)
begin 
case(S)
4'b0000: seg = 7'b1000000;
4'b0001: seg = 7'b1111001; 
4'b0010: seg = 7'b0100100; 
4'b0011: seg = 7'b0110000; 
4'b0100: seg = 7'b0011001; 
4'b0101: seg = 7'b0010010; 
4'b0110: seg = 7'b0000010; 
4'b0111: seg = 7'b1111000; 
4'b1000: seg = 7'b0000000;  
4'b1001: seg = 7'b0010000;
4'b1010: seg = 7'b0001000;
4'b1011: seg = 7'b0000011;
4'b1100: seg = 7'b1000110;
4'b1101: seg = 7'b0100001;
4'b1110: seg = 7'b0000110;
4'b1111: seg = 7'b0001110;
endcase 
end 
endmodule
