`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2024 06:47:30 AM
// Design Name: 
// Module Name: fpga_segment
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


module fpga_segment(
        input wire [3:0] i_a,
        output wire [6:0] o_seg
    );

    wire [3:0] a = ~i_a;

    segment DUT (
        .i_a (a[3]),
        .i_b (a[2]),
        .i_c (a[1]),
        .i_d (a[0]),
        .o_a (o_seg[0]),
        .o_b (o_seg[1]),
        .o_c (o_seg[2]),
        .o_d (o_seg[3]),
        .o_e (o_seg[4]),
        .o_f (o_seg[5]),
        .o_g (o_seg[6])
    );
endmodule
