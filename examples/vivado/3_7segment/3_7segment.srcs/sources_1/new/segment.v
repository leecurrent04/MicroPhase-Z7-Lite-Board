`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2024 03:10:23 AM
// Design Name: 
// Module Name: segment
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


module segment(
        input wire i_a,
        input wire i_b,
        input wire i_c,
        input wire i_d,
        output wire o_a,
        output wire o_b,
        output wire o_c,
        output wire o_d,
        output wire o_e,
        output wire o_f,
        output wire o_g
    );
    assign o_a = i_a | i_c | i_b&i_d | ~i_b&~i_d;
    assign o_b = ~i_b | i_c&i_d | ~i_c&~i_d;
    assign o_c = i_b | ~i_c | i_d;
    assign o_d = i_a | ~i_b&~i_d | ~i_b&i_c | i_c&~i_d | i_b&~i_c&i_d;
    assign o_e = ~i_b&~i_d | i_c&~i_d;
    assign o_f = i_a | i_b | ~i_c&~i_d;
    assign o_g = i_a | i_b&~i_c | i_c&~i_d | ~i_b&i_c;
endmodule
