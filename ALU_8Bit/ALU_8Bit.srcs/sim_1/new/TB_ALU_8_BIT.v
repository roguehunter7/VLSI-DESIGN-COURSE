`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2024 13:04:53
// Design Name: 
// Module Name: TB_ALU_8_BIT
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


module TB_ALU_8_BIT();
  reg [7:0] A_tb;
  reg [7:0] B_tb;
  reg [2:0] Opcode_tb;
  wire [15:0] Output_tb;
  wire Cout_tb;

  ALU_8_BIT dut ( // Instance name should match the module name
    .A(A_tb),
    .B(B_tb),
    .Opcode(Opcode_tb),
    .Output(Output_tb),
    .Cout(Cout_tb)
  );

  initial begin
    $monitor("Time = %0t, A = %d, B = %d, Opcode = %b, Output = %d, Cout = %b", $time, A_tb, B_tb, Opcode_tb, Output_tb, Cout_tb);

    // Test Case 1: A = 45, B = 38
    A_tb = 8'd45;
    B_tb = 8'd38;
    Opcode_tb = 3'b000; #10; // Addition
    Opcode_tb = 3'b001; #10; // Subtraction
    Opcode_tb = 3'b110; #10; // OR
    Opcode_tb = 3'b111; #10; // XOR

    // Test Case 2: A = 49, B = 10
    A_tb = 8'd49;
    B_tb = 8'd10;
    Opcode_tb = 3'b010; #10; // Multiplication
    Opcode_tb = 3'b011; #10; // Left Shift
    Opcode_tb = 3'b100; #10; // Right Shift
    Opcode_tb = 3'b101; #10; // AND

    // Test Carry/Borrow Cases (Unsigned)
    A_tb = 8'd250;
    B_tb = 8'd10;
    Opcode_tb = 3'b000; #10; // Addition (Carry)
    A_tb = 8'd10;
    B_tb = 8'd20;
    Opcode_tb = 3'b001; #10; // Subtraction (Borrow)

    //More test cases for multiplication
    A_tb = 8'd5;
    B_tb = 8'd6;
    Opcode_tb = 3'b010; #10; // Multiplication
    A_tb = 8'd12;
    B_tb = 8'd11;
    Opcode_tb = 3'b010; #10; // Multiplication

    // Test with 0s
    A_tb = 8'd0;
    B_tb = 8'd5;
    Opcode_tb = 3'b000; #10; // Addition
    A_tb = 8'd5;
    B_tb = 8'd0;
    Opcode_tb = 3'b000; #10; // Addition
    A_tb = 8'd0;
    B_tb = 8'd0;
    Opcode_tb = 3'b000; #10; // Addition

    //Test with max values
    A_tb = 8'd255;
    B_tb = 8'd1;
    Opcode_tb = 3'b000; #10; // Addition
    A_tb = 8'd255;
    B_tb = 8'd255;
    Opcode_tb = 3'b010; #10; // Multiplication

    $finish;
  end
endmodule