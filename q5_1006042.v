`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Jalen Mateo
// 
// Create Date: 11.03.2024 23:52:35
// Design Name: DSL CCTA
// Module Name: CCTA
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


//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module CCTA(
        input [3:0] A,
        input [3:0] B,
        input [3:0] C,
        input rst,
        input ctrl,
        output [4:0] q
);

// Internal signal to hold and drive the output
reg [4:0] q_reg;
// Assign internal register to output
assign q = q_reg;

always @(A, B, C, ctrl, rst) begin // run this loop if inputs change, so that the output is updated
    if(rst) begin
        q_reg <= 5'b00000;
    end
    else begin
        case(ctrl)
            1'b0: q_reg <= A + B; // sum A and B if ctrl is 0
//            1'b1: begin // check for the sifference (positive difference) if ctrl is 1
//                if (A>=C) begin
//                    q_reg <= A - C;
//                end
//                else begin
//                    q_reg <= C - A;
//                end
//            end
            1'b1: q_reg <= A - C;
            default: q_reg <= 5'bxxxxx; // undefined output default
        endcase
    end
end
endmodule
