`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/23 14:08:12
// Design Name: 
// Module Name: t_flipflop
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


module t_flipflop (
    input T,
    input clk,
    output reg Q
);

    always @(posedge clk) begin
        if (T) 
            Q <= ~Q;
    end

    initial Q = 0; // Initialize Q to a known value

endmodule


