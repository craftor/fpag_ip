`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/07/24 12:16:05
// Design Name: 
// Module Name: vga24torgb888
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


module vga24torgb888(
    input [23:0] vga_data,
    output [7:0] r,
    output [7:0] g,
    output [7:0] b
    );
assign r = vga_data[23:16];
assign g = vga_data[15:8];
assign b = vga_data[7:0];
    
endmodule
