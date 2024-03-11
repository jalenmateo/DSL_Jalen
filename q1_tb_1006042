`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Jalen Mateo
// 
// Create Date: 11.03.2024 19:31:32
// Design Name: Decade Counter DSL
// Module Name: decade_counter_tb
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


module decade_counter_tb();

reg clk;
reg rst;
wire [3:0]count;
wire ten;

decade_counter decade_counter_u0(
    .clk(clk),
    .rst(rst),
    .count(count),
    .ten(ten)
);

always begin
    #10 clk = ~clk;
end

initial begin
    clk = 0;
    rst = 1;
    #20;
    rst = 0;
    #40;
    rst = 1;
    #10;
    rst = 0;
    #250;
    
    $finish;
     //YOUR CODE HERE - Initialize the clk, rst;
end

endmodule
