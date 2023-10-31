`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/23 14:58:59
// Design Name: 
// Module Name: d_flipflop_asynchronous
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


module d_flipflop_asynchronous (
   input D,
    input clk,
    input reset,     // Synchronous reset
    output reg Q
);

    always @(posedge clk or negedge reset) begin
        if (!reset) 
            Q <= 0;
        else 
            Q <= D;
    end

endmodule


