`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUTD
// Engineer: Jalen Mateo
// 
// Create Date: 11.03.2024 21:10:46
// Design Name: demultiplexer DSL
// Module Name: demultiplexer
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


//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module demultiplexer(
    input [1:0]A,
    input [1:0]SEL,
    output [1:0]W,
    output [1:0]X,
    output [1:0]Y,
    output [1:0]Z
    );

reg [1:0]W_reg;
reg [1:0]X_reg;
reg [1:0]Y_reg;
reg [1:0]Z_reg;

assign W = W_reg;
assign X = X_reg;
assign Y = Y_reg;
assign Z = Z_reg;

always @(A, SEL) begin // check against cases if there's any changes to the inputs
    case(SEL) // to list all the conditions and corresponding outputs W, X, Y, Z
        2'b00: begin W_reg = A; X_reg = 2'b00; Y_reg = 2'b00; Z_reg = 2'b00; end
        2'b01: begin W_reg = 2'b00; X_reg = A; Y_reg = 2'b00; Z_reg = 2'b00; end
        2'b10: begin W_reg = 2'b00; X_reg = 2'b00; Y_reg = A; Z_reg = 2'b00; end
        2'b11: begin W_reg = 2'b00; X_reg = 2'b00; Y_reg = 2'b00; Z_reg = A; end
        default: begin W_reg = 2'bxx; X_reg = 2'bxx; Y_reg = 2'bxx; Z_reg = 2'bxx; end 
        // undefined W, X, Y, Z as the default
    endcase
end

endmodule
