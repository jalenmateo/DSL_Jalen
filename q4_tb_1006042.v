`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Jalen Mateo
// 
// Create Date: 11.03.2024 21:50:04
// Design Name: nibbleadd DSL
// Module Name: nibleadd_tb
// Project Name: HW4
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


module nibbleadd_tb();

// testbench signals
reg [7:0]A;
reg [7:0]B;
reg ctrl;
wire [4:0]q;

// instantiate the Unit Under Test (UUT)
nibbleadd nibbleadd_u0(
    .A(A),
    .B(B),
    .ctrl(ctrl),
    .q(q)
);

initial begin
    // initiate values for A,B,C,D,SEL
    A = 8'h00;
    B = 8'h00;
    ctrl = 1'b0;
    // change the values of A and B and ctrl inputs to test if output is right
    #10 A = 8'h24; B = 8'h81;
    #10 A = 8'h09; B = 8'h63;
    #10 A = 8'h0d; B = 8'h8d;
    #10 A = 8'h65; B = 8'h12;
    #10 A = 8'h01; B = 8'h0d;
    #10 A = 8'h76; B = 8'h3d; ctrl = 1'b1;
    #10 A = 8'hed; B = 8'h8c;
    #10 A = 8'hf9; B = 8'hc6;
    #10 $finish;
end
endmodule
