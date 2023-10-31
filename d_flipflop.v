`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/23 14:01:29
// Design Name: 
// Module Name: d_flipflop
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

module d_flipflop (
    input D,
    input clk,
    input reset,     // Synchronous reset
    output reg Q
);

    always @(posedge clk) begin
        if (reset) 
            Q <= 0;
        else 
            Q <= D;
    end

endmodule



