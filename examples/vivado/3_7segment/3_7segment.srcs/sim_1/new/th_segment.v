`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2024 04:59:47 AM
// Design Name: 
// Module Name: th_segment
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


module th_segment(
    );
    reg clk;

    reg [3:0] r_num;

    wire seg_a;
    wire seg_b;
    wire seg_c;
    wire seg_d;
    wire seg_e;
    wire seg_f;
    wire seg_g;

    always begin
        #5
        clk = ~clk;
    end
    always begin
        #10
        r_num = r_num + 1;
    end

    initial begin
        clk = 1'b0;
        r_num = 0;

        #70
        
        #10
        $finish;
    end

    segment DUT (
        .i_a (r_num[3]),
        .i_b (r_num[2]),
        .i_c (r_num[1]),
        .i_d (r_num[0]),
        .o_a (seg_a),
        .o_b (seg_b),
        .o_c (seg_c),
        .o_d (seg_d),
        .o_e (seg_e),
        .o_f (seg_f),
        .o_g (seg_g)
    );
endmodule
