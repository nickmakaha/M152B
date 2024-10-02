`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 11:41:29 AM
// Design Name: 
// Module Name: alu_one_bit
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


module alu_one_bit(
    input op,
    input [3:0] r1,
    input [3:0] r2,
    output [3:0] result
    );
    
    wire [3:0] addition;
    wire [3:0] subtraction;
    wire [3:0] neg_r2;
    
    addfourbit negate (
        .r1(4'b0001),
        .r2(~r2),
        .ci(4'b0000),
        .result(neg_r2)        
    );
    
    
    addfourbit add (
        .r1(r1),
        .r2(r2),
        .ci(1'b0),
        .result(addition)
    );
    
    addfourbit subtract(
        .r1(r1),
        .r2(neg_r2),
        .ci(1'b0),
        .result(subtraction)
    )
    
    mux_two_to_one select(
        
    );
    
    
    
    
endmodule
