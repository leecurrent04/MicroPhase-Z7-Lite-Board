`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2024 09:32:01 PM
// Design Name: 
// Module Name: logic_gate
// Project Name: 
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


module logic_gate(
    input wire a,
    input wire b,

    output wire o_and,
    output wire o_or,
    output wire o_xor,
    output wire o_xnor,
    output wire o_nand,
    output wire o_nor
    );
    assign o_and = a&b;
    assign o_or = a|b;
    assign o_xor = (~a&b)|(a&~b);
    assign o_xnor = (a&b)|(~a&~b);
    assign o_nand = ~(a&b);
    assign o_nor = ~(a|b);
endmodule
