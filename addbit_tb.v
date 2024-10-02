`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 11:05:45 AM
// Design Name: 
// Module Name: addbit_tb
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


module addbit_tb(
    );
    reg cin;
    reg a;
    reg b;
    wire s;
    wire cout;
    
    
    addbit adder (
            .cin(cin),
            .a(a),
            .b(b),
            .s(s),
            .cout(cout)
        );
        
    initial begin
        cin <= 0;
        a <= 0;
        b <= 0;
        # 5
        
        cin <= 1;
        a <= 0;
        b <= 0;
        # 5
        
        cin <= 0;
        a <= 0;
        b <= 1;
        
        # 5
         
        cin <= 1;
        a <= 0;
        b <= 1;
        # 5
        
        cin <= 0;
        a <= 1;
        b <= 0;
        # 5
        
        cin <= 1;
        a <= 1;
        b <= 0;
        # 5
        
        cin <= 0;
        a <= 1;
        b <= 1;
        
        # 5
         
        cin <= 1;
        a <= 1;
        b <= 1;
        
    end
endmodule
