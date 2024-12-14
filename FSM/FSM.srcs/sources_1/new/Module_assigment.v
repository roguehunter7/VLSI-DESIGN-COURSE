`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2024 16:58:30
// Design Name: 
// Module Name: Module_assigment
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
module Module_assigment(din, clk, clr, Z);

    input wire din, clk, clr;
    output reg Z;

    parameter Sin = 3'b000, S1 = 3'b001, S11 = 3'b011, S110 = 3'b100, S1101 = 3'b101, S11011 = 3'b111;
    reg [2:0] state, next_state;

    always @(posedge clk) begin
        if (clr == 1) 
            state <= Sin;
        else
            state <= next_state;
    end

    always @(state, din) begin
        case (state)
            Sin: begin
                if (din == 1)
                    next_state = S1;
                else
                    next_state = Sin;
                Z = 0;
            end

            S1: begin
                if (din == 1)
                    next_state = S11;
                else
                    next_state = Sin;
                Z = 0;
            end

            S11: begin
                if (din == 1)
                    next_state = S11;
                else
                    next_state = S110;
                Z = 0;
            end

            S110: begin
                if (din == 1)
                    next_state = S1101;
                else
                    next_state = Sin;
                Z = 0;
            end

            S1101: begin
                if (din == 1)
                    next_state = S11011;
                else
                    next_state = Sin;
                Z = 0;
            end

            S11011: begin
                if (din == 1)
                    next_state = S11;
                else
                    next_state = S110;
                Z = 1;
            end

            default: next_state = Sin;
        endcase
    end

endmodule

