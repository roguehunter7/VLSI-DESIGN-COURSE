`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2024 12:07:39
// Design Name: 
// Module Name: Parking_Count
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


module Parking_Count(
    input [7:0] Spots,
    output [6:0] Seg,
    output [7:0] AN
    );
    
    reg [3:0] Occupied_No;
    reg [6:0] Seg;
    
    always@(Spots) begin
        Occupied_No = Spots[7] + Spots[6] + Spots[5] + Spots[4] + Spots[3] + Spots[2] + Spots[1] + Spots[0];
    end
    
    assign AN = 8'b11111110;
    
    always@(Occupied_No) begin
        case(Occupied_No) 
            4'b0000: Seg = 7'b1000000;
            4'b0001: Seg = 7'b1111001;
            4'b0010: Seg = 7'b0100100;
            4'b0011: Seg = 7'b0110000;
            4'b0100: Seg = 7'b0011001;
            4'b0101: Seg = 7'b0010010;
            4'b0110: Seg = 7'b0000010;
            4'b0111: Seg = 7'b1111000;
            4'b1000: Seg = 7'b0000000;
        endcase
    end    
    
endmodule
