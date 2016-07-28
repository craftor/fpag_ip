`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/07/28 10:04:13
// Design Name: 
// Module Name: adc_acquisition
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


module adc_acquisition(

    input        clk_i,
    input        rst,
    output       clk_o,
    input [11:0] adc_data,
    input        adc_otr_i,
    output       adc_otr_o,
    output [11:0] adc_data_o,
    
    input    [31:0]  start,
    output           wr_en ,
    output            wr_clk,
    output     [31:0] wr_data,
    output reg [31:0] wr_addr = 0
    
    );
    
assign clk_o = clk_i;
assign wr_clk = clk_i;
assign wr_data = {20'b0, adc_data};
assign wr_en = start[0];
assign adc_otr_o = adc_otr_i;
assign adc_data_o = adc_data;

always@(posedge clk_i or posedge rst) begin

    if (rst) begin
        wr_addr <= 0;
    end else begin
        wr_addr <= wr_addr + 1'b1;
    end

end
    
endmodule
