`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/23 13:49:22
// Design Name: 
// Module Name: cr_flipflop
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


module cr_flipflop (
    input S, // Set
    input R, // Reset
    input enable,
    output reg Q,
    output Q_bar
);

    always @(S, R, enable) begin
        if (enable) begin
            if (S && !R)
                Q = 1;
            else if (!S && R)
                Q = 0;
            // When S and R are both 1, behavior is undefined
            // We can either keep the state or reset Q, depending on the desired behavior.
            else if (S && R)
                Q = 0;
        end
        // If enable is not asserted, no change in Q
    end

    assign Q_bar = ~Q;

endmodule



