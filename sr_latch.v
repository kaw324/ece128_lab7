`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/23 13:41:07
// Design Name: 
// Module Name: sr_latch
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

module sr_latch (S, R, Q, Q_bar);
    input S, R;
    output Q, Q_bar;
    wire S_bar, R_bar;

    nand (Q, S_bar, R);
    nand (Q_bar, R_bar, S);

    assign S_bar = ~Q_bar;
    assign R_bar = ~Q;
endmodule

