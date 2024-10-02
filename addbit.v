`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 10:56:45 AM
// Design Name: 
// Module Name: addbit
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


module addbit(
    input cin,
    input a,
    input b,
    output s,
    output cout
    );
    wire abar;
    wire bbar;
    wire cbar;
    
    not (abar, a);
    not (bbar, b);
    not (cbar, cin);
    
    assign s = (abar & bbar & cin) | (abar & b & cbar) | (a & bbar & cbar) | (a & b & cin);
    assign cout = (a & b) | (b & cin) | (a & cin); 
    
endmodule
