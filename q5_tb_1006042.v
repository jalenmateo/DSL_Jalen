`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Jalen Mateo
// 
// Create Date: 12.03.2024 00:11:34
// Design Name: DSL CCTA
// Module Name: CCTA_tb
// Project Name: HW5
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


module CCTA_tb();

// testbench signals
reg [3:0]A;
reg [3:0]B;
reg [3:0]C;
reg rst;
reg ctrl;
wire [4:0]q;

// instantiate the Unit Under Test (UUT)
CCTA CCTA_u0(
    .A(A),
    .B(B),
    .C(C),
    .rst(rst),
    .ctrl(ctrl),
    .q(q)
);

initial begin
    // initiate values for A,B,C,D,SEL
    A = 4'b0100;
    B = 4'b0001;
    C = 4'b1001;
    rst = 1'b1;
    ctrl = 1'b0;
    // change the input values to test if the output matches
    #10 rst = 1'b0;
    #10 A = 4'b0011; B = 4'b1101; C = 4'b1101;
    #10 A = 4'b0101; B = 4'b0010; C = 4'b0001;
    #10 A = 4'b1101; B = 4'b0110; C = 4'b1101;
    #10 A = 4'b1101; B = 4'b1100; C = 4'b1001;
    #10 A = 4'b0110; B = 4'b0101; C = 4'b1010; ctrl = 1'b1;
    #10 A = 4'b0101; B = 4'b0111; C = 4'b0010; 
    #10 A = 4'b1111; B = 4'b0010; C = 4'b1110; 
    #10 $finish;
end
endmodule
