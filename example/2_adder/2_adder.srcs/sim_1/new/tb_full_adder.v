`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2024 10:27:52 PM
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder(
    );

    reg clk;

    reg a;
    reg b;
    reg c_in;

    wire sum;
    wire c_out;

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        a=0;
        b=0;
        c_in=0;

        #10
        a=0;
        b=1;

        #10
        a=1;
        b=0;

        #10
        a=1;
        b=1;

        #10
        a=0;
        b=0;
        c_in=1;

        #10
        a=0;
        b=1;
        c_in=1;

        #10
        a=1;
        b=0;
        c_in=1;

        #10
        a=1;
        b=1;
        c_in=1;

        #10
        $finish;
    end

    full_adder DUT (
        .i_a (a),
        .i_b (b),
        .i_c0 (c_in),
        .o_sum (sum),
        .o_carry (c_out)
    );
endmodule
