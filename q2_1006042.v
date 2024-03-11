`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Jalen Mateo
// 
// Create Date: 11.03.2024 20:37:30
// Design Name: multiplexer DSL
// Module Name: multiplexer
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


//!DO NOT EDIT MODULE NAME AND PORT NAME!
module multiplexer(
    input [1:0]A,
    input [1:0]B,
    input [1:0]C,
    input [1:0]D,
    input [1:0]SEL,
    output [1:0]X
);

// Internal signal to hold and drive the output
reg [1:0] X_reg;
// Assign internal register to output
assign X = X_reg;
//TIPS: IN THE VERILOG CASE STATEMENT, YOU HAVE TO LIST ALL CONDITION TO AVIOD ANY AMBIGUOUS STATEMENT;
always @(A, B, C, D, SEL) begin // check against cases if there's any changes to the inputs
    case(SEL) // to list all the conditions and corresponding output X
        2'b00: X_reg <= A;
        2'b01: X_reg <= B;
        2'b10: X_reg <= C;
        2'b11: X_reg <= D;
        default: X_reg <= 2'bxx; // undefined X as the default
    endcase
end
endmodule
