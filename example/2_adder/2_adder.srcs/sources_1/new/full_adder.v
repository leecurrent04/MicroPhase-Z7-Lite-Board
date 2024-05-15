`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2024 10:23:36 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input wire i_a,
    input wire i_b,
    input wire i_c0,

    output wire o_sum,
    output wire o_carry
    );
    wire a = i_a;
    wire b = i_b;
    wire c = i_c0;
    
    assign o_sum = (~a&~b&c) | (~a&b&~c) | (a&~b&~c) | (a&b&c);
    assign o_carry = (a&b)|((~a&b)|(a&~b))&c;
endmodule
