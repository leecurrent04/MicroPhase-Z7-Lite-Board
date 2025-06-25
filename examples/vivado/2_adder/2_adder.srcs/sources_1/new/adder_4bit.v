`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2024 11:53:46 PM
// Design Name: 
// Module Name: adder_4bit
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


module adder_4bit (
    input wire [3:0] i_a,
    input wire [3:0] i_b,
    input wire i_carry0,
    output wire [3:0] o_sum,
    output wire o_carry
    );
    
    wire [3:0] r_carry;
    assign o_carry = r_carry[3];

    full_adder FA0 (
        .i_a (i_a[0]),
        .i_b (i_b[0]),
        .i_c0 (i_carry0),
        .o_sum (o_sum[0]),
        .o_carry (r_carry[0])
    );

    full_adder FA1 (
        .i_a (i_a[1]),
        .i_b (i_b[1]),
        .i_c0 (r_carry[0]),
        .o_sum (o_sum[1]),
        .o_carry (r_carry[1])
    );

    full_adder FA2 (
        .i_a (i_a[2]),
        .i_b (i_b[2]),
        .i_c0 (r_carry[1]),
        .o_sum (o_sum[2]),
        .o_carry (r_carry[2])
    );

    full_adder FA3 (
        .i_a (i_a[3]),
        .i_b (i_b[3]),
        .i_c0 (r_carry[2]),
        .o_sum (o_sum[3]),
        .o_carry (r_carry[3])
    );
endmodule