`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/07/28 10:36:08
// Design Name: 
// Module Name: clk_div
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


module clk_div#(
    CLK_DIV = 32'd10
)(
    input clk_i,
    input rst,
    output clk_o
    );

reg [31:0] cnt = 0;
reg        clk_buf = 0;
always@(posedge clk_i or posedge rst) begin

    if (rst) begin
        cnt <= 0;
        clk_buf <= 0;
    end else begin
        if (cnt == CLK_DIV/2 -1) begin
            cnt <= 0;
            clk_buf <= ~clk_buf;
        end else begin
            cnt <= cnt + 1'b1;
        end
    end

end

endmodule
