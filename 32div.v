// 32bit divider
`timescale 1ns / 1ps

module divide(
    input         clk,
    input         div_begin,
    input  [31:0] div_op1,
    input  [31:0] div_op2,
    output [31:0] quotient,
    output reg    div_end,
);


endmodule