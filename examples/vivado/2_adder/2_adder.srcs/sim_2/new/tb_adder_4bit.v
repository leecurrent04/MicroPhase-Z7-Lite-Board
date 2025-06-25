`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2024 11:57:58 PM
// Design Name: 
// Module Name: tb_adder_4bit
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


module tb_adder_4bit(
    );

    reg clk;

    reg [3:0] r_a;
    reg [3:0] r_b;
    reg r_carry0;
    wire o_carry;
    wire [3:0] sum;

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 1'b0;
        r_a = 4'b0000;
        r_b = 4'b0000;
        r_carry0 = 1'b0;

        #10
        r_a = 4'b0000;
        r_b = 4'b0001;

        #10
        r_a = 4'b0000;
        r_b = 4'b0010;

        #10
        r_a = 4'b0000;
        r_b = 4'b0011;

        #10
        r_a = 4'b0001;
        r_b = 4'b0011;

        #10
        r_a = 4'b0011;
        r_b = 4'b1011;

        #10
        r_a = 4'b1111;
        r_b = 4'b0001;

        #10
        $finish;
    end

    adder_4bit DUT (
        .i_a (r_a),
        .i_b (r_b),
        .i_carry0 (r_carry0),
        .o_sum (sum),
        .o_carry (o_carry)
    );

endmodule