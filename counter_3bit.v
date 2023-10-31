`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/23 14:09:32
// Design Name: 
// Module Name: counter_3bit
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


module counter_3bit (
    input clk,
    output [2:0] Q
);

    wire Q0, Q1, Q2;

    t_flipflop tff0 (
        .T(1'b1),
        .clk(clk),
        .Q(Q0)
    );

    t_flipflop tff1 (
        .T(Q0),
        .clk(clk),
        .Q(Q1)
    );

    t_flipflop tff2 (
        .T(Q1 & Q0),
        .clk(clk),
        .Q(Q2)
    );

    assign Q = {Q2, Q1, Q0};

endmodule

