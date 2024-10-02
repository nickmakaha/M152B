`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 11:25:03 AM
// Design Name: 
// Module Name: addfourbit_tb
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


module addfourbit_tb();
    reg [3:0] r1;
    reg [3:0] r2;
    reg cin;
    wire [3:0] result;
    wire cout;
    
    addfourbit adder (
        .r1(r1),
        .r2(r2),
        .ci(cin),
        .result(result),
        .carry(cout)
    );
    
    initial begin
        cin <= 0;
        r1 <= 4'b0000;
        r2 <= 4'b0001;
        
        #5
        r1 <= 4'b1111;
        r2 <= 4'b1111;
        
        #5
        r1 <= 4'b1000;
        r2 <= 4'b0010;
    end
endmodule
