`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 10:45:20 AM
// Design Name: 
// Module Name: mux_two_to_one
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


module mux_two_to_one(
    input D0,
    input D1,
    input S,
    output Y
    );
    
    wire T1, T2, Sbar;
    and (T1, D1, S);
    and(T2, D0, Sbar);
    not(Sbar, S);
    or(Y, T1, T2);
    
endmodule
