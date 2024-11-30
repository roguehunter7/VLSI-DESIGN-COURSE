`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2024 12:52:04
// Design Name: 
// Module Name: block
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


module block(  );

reg[7:0] x1,x2,x3,y1,y2;
initial begin

x1 = 8'h10;
$display("[%0t] x1=0x%0h x2=0x%0h x3=0x%0h",$time,x1,x2,x3);

#10 x2 = 8'h20;
$display("[%0t] x1=0x%0h x2=0x%0h x3=0x%0h",$time,x1,x2,x3);
#10 x3 = 8'h30;
$display("[%0t] x1=0x%0h x2=0x%0h x3=0x%0h",$time,x1,x2,x3);
end

initial begin
#10 y1 = 8'h40;
$display("[%0t] y1=0x%0h y2=0x%0h",$time,y1,y2);
#10 y2 = 8'h50;
$display("[%0t] y1=0x%0h y2=0x%0h",$time,y1,y2);
end




endmodule
