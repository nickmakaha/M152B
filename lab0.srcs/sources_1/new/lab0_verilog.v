`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2024 10:21:13 AM
// Design Name: 
// Module Name: counter
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


module counter(
    input clock,
    input reset,
    input enable,
    output reg [3:0] counter
    );
    
    initial begin
        counter <= 0;
    end
    
    always@(posedge clock)
    begin
        if(reset)
            counter <= 0;
        else if(enable)
            counter <= counter + 1;
    end
endmodule

