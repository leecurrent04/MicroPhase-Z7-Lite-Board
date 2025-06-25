`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2024 01:17:19 AM
// Design Name: 
// Module Name: fpga_adder_4bit
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


module fpga_adder_4bit(
    input wire [3:0] i_a,
    input wire [3:0] i_b,
    input wire i_carry0,
    output wire [3:0] o_sum,
    output wire o_carry
    );
    wire [3:0] a = ~i_a;
    wire [3:0] b = ~i_b;
    wire c0 = ~i_carry0;

    adder_4bit DUT(
        .i_a (a),
        .i_b (b),
        .i_carry0 (c0),
        .o_sum (o_sum),
        .o_carry (o_carry)
    );
endmodule
