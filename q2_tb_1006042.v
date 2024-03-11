`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Jalen Mateo
// 
// Create Date: 11.03.2024 20:37:52
// Design Name: multiplexer DSL
// Module Name: multiplexer_tb
// Project Name: HW2
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


module multiplexer_tb();

// testbench signals
reg [1:0]A;
reg [1:0]B;
reg [1:0]C;
reg [1:0]D;
reg [1:0]SEL;
wire [1:0]X;

// instantiate the Unit Under Test (UUT)
multiplexer multiplexer_u0(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .SEL(SEL),
    .X(X)
);

initial begin
    // initiate values for A,B,C,D,SEL
    A = 2'b11;
    B = 2'b10;
    C = 2'b01;
    D = 2'b00;
    SEL = 2'b10;
    // change the SEL value to test if the output matches
    #10 SEL = 2'b00;
    #10 SEL = 2'b11;
    #10 SEL = 2'b10;
    #10 SEL = 2'b01;
    #10 $finish;
end

endmodule
