`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2024 01:26:55 AM
// Design Name: 
// Module Name: fpga_logic_gate
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


module fpga_logic_gate(
    input wire i_a,
    input wire i_b,

    output wire o_and,
    output wire o_or,
    output wire o_xor,
    output wire o_xnor,
    output wire o_nand,
    output wire o_nor

    );
    // The hat works pull-up re
    wire a = ~i_a;
    wire b = ~i_b;

    logic_gate DUT (
        .a (a),
        .b (b),

        .o_and (o_and),
        .o_or (o_or),
        .o_xor (o_xor),
        .o_xnor (o_xnor),
        .o_nand (o_nand),
        .o_nor (o_nor)
    );
endmodule
