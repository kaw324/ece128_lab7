`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/23 14:17:11
// Design Name: 
// Module Name: clock_divider
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


//module clock_divider (
//    input clk,       // Assume 100 MHz
//    output reg clk_out = 0  // 25 MHz
//);

//    reg [1:0] counter = 0;

//    always @(posedge clk) begin
//        counter <= counter + 1;
//        if (counter == 2'b10) 
//            clk_out <= ~clk_out;
//    end

//endmodule
module clock_divider (
    input clk,       // Assume 100 MHz
    output reg clk_out = 0  // 25 MHz
);

    reg [1:0] counter = 0;

    always @(posedge clk) begin
        counter <= counter + 1'b1;
        if (counter == 2'b00) 
            clk_out <= 0;
        else if (counter == 2'b10)
            clk_out <= 1;
    end

endmodule







