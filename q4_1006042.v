`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Jalen Mateo
// 
// Create Date: 11.03.2024 21:38:26
// Design Name: nibbleadd DSL
// Module Name: nibleadd
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


//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output [4:0]q
);
    
// Internal signal to hold and drive the output
reg [4:0]q_reg;

// Assign internal register to output
assign q = q_reg;

always @(A,B,ctrl) begin // re-register output when there's any changes in the input
    case(ctrl) // to check whether the lowest 4 bits or the upper 4 bits should be summed
        1'b0: q_reg = A[3:0] + B[3:0];
        1'b1: q_reg = A[7:4] + B[7:4];
        default: q_reg = 5'bxxxxx; //default case is undefined
    endcase
end
endmodule
