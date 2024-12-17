`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2024 12:40:56
// Design Name: 
// Module Name: ALU_8_BIT
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 8-bit ALU with 16-bit output for various arithmetic and logic operations
// 
// Dependencies: None
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ALU_8_BIT(
    input wire [2:0] Opcode,       // 3-bit opcode for operation selection
    input wire [7:0] A,            // 8-bit input A
    input wire [7:0] B,            // 8-bit input B
    output reg [15:0] Output,      // 16-bit output result
    output reg Cout                // Carry-out flag
    );
    
    always @(*) begin
        // Default values for outputs
        Cout = 1'b0;
        Output = 16'b0;
        // Perform operation based on opcode
        case (Opcode)
            3'b000: begin
                // Addition with carry-out
                {Cout, Output} <= A + B;
            end
            3'b001: begin
                // Subtraction with carry-out
                {Cout, Output} <= A - B;
            end
            3'b010: begin
                // Multiplication
                Output <= A * B;
            end
            3'b011: begin
                // Logical left shift by B positions
                Output <= A << B;
            end
            3'b100: begin
                // Logical right shift by B positions
                Output <= A >> B;
            end
            3'b101: begin
                // Logical AND
                Output <= A & B;
            end
            3'b110: begin
                // Logical OR
                Output <= A | B;
            end
            3'b111: begin
                // Logical XOR
                Output <= A ^ B;
            end
            default: begin
                // Default case
                Output <= 16'b0;
                Cout <= 1'b0;
            end
        endcase
    end
endmodule
