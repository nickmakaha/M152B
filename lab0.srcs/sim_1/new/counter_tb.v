`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2024 10:27:21 AM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();
    reg clock;
    reg reset;
    reg enable;
    wire [3:0] counter;
    counter c0 (
        .clock(clock),
        .reset(reset),
        .enable(enable),
        .counter(counter)
    );
    
    always #5 clock = ~clock;

    initial begin
        // Initial Testing: Counter should increment and 
        // overflow back to zero on incrementing 15
        reset <= 0;
        clock <= 0;
        enable <= 1;
        
        // Test Hold on Enable
        #375 
        enable <= 0;
        
        // Test Reset Functionality - Counter should go to zero
        #50 
        enable <= 1;
        reset <= 1;
        
        // Normal Functionality
        #25
        reset <= 0;
        enable <= 1;
        
        // Reset On and Enable Off at the Same time
        // Output should stay at zero here
        #25
        reset <= 1;
        enable <= 0;
    end
endmodule
