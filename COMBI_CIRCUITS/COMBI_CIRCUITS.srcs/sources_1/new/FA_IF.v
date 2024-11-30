`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2024 13:12:45
// Design Name: 
// Module Name: FA_IF
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


module FA_IF(
    input wire A,
    input wire B, 
    input wire Cin,
    output reg Sum,
    output reg Cout
    );
    
    always@(A or B or Cin) begin
        if(A==0 &&  B==0 && Cin==0)
            begin Sum = 0; Cout = 0; end
        else if(A==0 &&  B==0 && Cin==1)
            begin Sum = 1; Cout = 0; end 
        else if(A==0 &&  B==1 && Cin==0)
            begin Sum = 1; Cout = 0; end
        else if(A==0 &&  B==1 && Cin==1)
            begin Sum = 0; Cout = 1; end
        else if(A==1 &&  B==0 && Cin==0)
            begin Sum = 1; Cout = 0; end
        else if(A==1 &&  B==0 && Cin==1)
            begin Sum = 0; Cout = 1; end
        else if(A==1 &&  B==1 && Cin==0)
            begin Sum = 0; Cout = 1; end
        else if(A==1 &&  B==1 && Cin==1)
            begin Sum = 1; Cout = 1; end
        else
            $finish;
    end
endmodule
