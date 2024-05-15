`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2024 07:45:53 PM
// Design Name: 
// Module Name: board_test
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


module board_test(
    input wire i_A0,
    input wire i_A1,
    input wire i_A2,
    input wire i_A3,
    input wire i_B0,

    input wire i_B1,
    input wire i_B2,
    input wire i_B3,

    input wire i_SW0,
    input wire i_SW1,

    output wire o_F0,
    output wire o_F1,
    output wire o_F2,
    output wire o_F3,
    output wire o_F4,
    output wire o_F5,

    output wire o_SA,
    output wire o_SB,
    output wire o_SC,
    output wire o_SD,
    output wire o_SE,
    output wire o_SF,
    output wire o_SG,
    output wire o_SP
    );

    assign o_F0 = ~i_A0;
    assign o_F1 = ~i_A1;
    assign o_F2 = ~i_A2;
    assign o_F3 = ~i_A3;
    assign o_F4 = ~i_SW0;
    assign o_F5 = ~i_SW1;

    assign o_SA = ~i_B0;
    assign o_SB = ~i_B1;
    assign o_SC = ~i_B2;
    assign o_SD = ~i_B3;
    assign o_SE = ~i_B0;
    assign o_SF = ~i_B1;
    assign o_SG = ~i_B2;
    assign o_SP = ~i_B3;
endmodule
