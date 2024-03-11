`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Jalen Mateo
// 
// Create Date: 11.03.2024 19:31:12
// Design Name: Decade Counter DSL
// Module Name: decade_counter
// Project Name: HW1
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


module decade_counter(
    input clk,
    input rst,
    output [3:0] count,
    output ten
);

// internal signals to hold and drive the outputs
reg ten_reg;
reg [3:0] count_reg;

wire rstn;

// assign internal registers to outputs
assign count = count_reg;
assign ten = ten_reg;

assign rstn = rst;

always@(posedge clk, posedge rstn)begin
    if(rstn)begin // when rst is high
        count_reg <= 4'b0000; // "count" is set to 0
        ten_reg <= 1'b0; //  "ten" is set to 0
    end
    else begin // when rst is low, circuit increments on the positive edge
        if(count == 4'b1001)begin // highest reachable count is 9 aka 4b'1001
            count_reg <= 4'b0000; // reset count from 0
            ten_reg <= 1'b1; // set output "ten" to 1
        end
        else begin
            count_reg <= count_reg + 4'b0001; // continue increasing count    
            ten_reg <= 1'b0; // set "ten" to 0

        end
    end
end
endmodule
