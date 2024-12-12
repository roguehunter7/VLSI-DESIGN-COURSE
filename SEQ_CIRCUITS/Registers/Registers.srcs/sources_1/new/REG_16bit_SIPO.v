`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2024 21:50:28
// Design Name: 
// Module Name: REG_16bit_SIPO
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


module REG_16bit_SIPO( 
    input Din,clk,load,
    output [15:0] Q
        );
        
        REG_SIPO_4Bit x0(.Din(Din),.clk(clk),.load(load),.Q(Q[3:0]));
        REG_SIPO_4Bit x1(.Din(Q[3]),.clk(clk),.load(load),.Q(Q[7:4]));
        REG_SIPO_4Bit x2(.Din(Q[7]),.clk(clk),.load(load),.Q(Q[11:8]));
        REG_SIPO_4Bit x3(.Din(Q[11]),.clk(clk),.load(load),.Q(Q[15:12]));
       
endmodule
