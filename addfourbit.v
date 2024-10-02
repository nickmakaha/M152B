`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 11:18:22 AM
// Design Name: 
// Module Name: addfourbit
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


module addfourbit(
    input [3:0] r1,
    input [3:0] r2,
    input ci,
    output [3:0] result,
    output carry
    );
    wire c1, c2, c3;
    
    addbit u0(
        .a(r1[0]), 
        .b(r2[0]),
        .cin(ci),
        .s(result[0]),
        .cout(c1)
    );
    
    addbit u1(
        .a(r1[1]), 
        .b(r2[1]),
        .cin(c1),
        .s(result[1]),
        .cout(c2)
    );
    
    addbit u2(
        .a(r1[2]), 
        .b(r2[2]),
        .cin(c2),
        .s(result[2]),
        .cout(c3)
    );
    
    addbit u4(
        .a(r1[3]), 
        .b(r2[3]),
        .cin(c3),
        .s(result[3]),
        .cout(carry)
    );
    
    
endmodule
