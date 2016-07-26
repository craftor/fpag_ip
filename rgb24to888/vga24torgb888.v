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


module vga24torgb888#(
    width_red = 8,
    width_green = 8,
    width_blue = 8
)(
    input [23:0] vga_data,
    output [width_red-1:0] r,
    output [width_green-1:0] g,
    output [width_blue-1:0] b
    );
assign r = vga_data[23:24-width_red];
assign g = vga_data[15:16-width_green];
assign b = vga_data[7:8-width_blue];
    
endmodule
