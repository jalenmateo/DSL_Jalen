`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Jalen Mateo
// 
// Create Date: 11.03.2024 21:27:04
// Design Name: demultiplexer DSL
// Module Name: demultiplexer_tb
// Project Name: HW3
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


module demultiplexer_tb();

// Testbench signals
reg [1:0] A;
reg [1:0] SEL;
wire [1:0] W;
wire [1:0] X;
wire [1:0] Y;
wire [1:0] Z;

// Instantiate the Unit Under Test (UUT)
demultiplexer demultiplexer_u0(
    .A(A),
    .SEL(SEL),
    .W(W),
    .X(X),
    .Y(Y),
    .Z(Z)
);

initial begin
    // Initialize inputs
    A = 2'b00;
    SEL = 2'b00;
    // change the inputs every 10 time units to check that the outputs W, X, Y, Z match
    #10 A = 2'b01; SEL = 2'b01;
    #10 A = 2'b01; SEL = 2'b10;
    #10 A = 2'b11; SEL = 2'b11;
    #10 $finish; 
end

endmodule
