`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 10:49:41 AM
// Design Name: 
// Module Name: mux_two_to_one_tb
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


module mux_two_to_one_tb();
    reg D0;
    reg D1;
    reg S;
    wire Y;
    
    mux_two_to_one mux (
        .D0(D0),
        .D1(D1),
        .S(S),
        .Y(Y)
    );
    
    initial begin
        D0 <= 0;
        D1 <= 1;
        S <= 0;
        
        # 25 
        D0 <= 1;
        # 25
        S <= 1;
        # 25
        S <= 1;
        D1 <= 0;
        
    end
endmodule
