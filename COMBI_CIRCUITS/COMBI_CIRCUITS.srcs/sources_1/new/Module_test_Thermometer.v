`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2024 22:01:21
// Design Name: 
// Module Name: Module_test_Thermometer
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


module Module_test_Thermometer(
    input i1,i2,i3,i4,i5,i6,i7,
    output b0,b1,b2
    );
    
    wire a1,a2,a3,a4,a5;
   
    FA_GATE d1 (.A(i6),.B(i5),.Cin(i4),.Cout(a1),.Sum(a2));
    FA_GATE d2 (.A(i3),.B(i2),.Cin(i1),.Cout(a3),.Sum(a4));
    FA_GATE d3 (.A(i7),.B(a2),.Cin(a4),.Cout(a5),.Sum(b0));
    FA_GATE d4 (.A(a1),.B(a5),.Cin(a3),.Cout(b2),.Sum(b1));
    
endmodule
