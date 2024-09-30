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
counter c0 (.clock(clock),
 .reset(reset),
 .enable(enable),
 .counter(counter));

always #5 clock = ~clock;

initial begin
    reset <= 0;
    clock <= 0;
    enable <= 1;
    
    #375 enable <= 0;
    reset <= 1;
    
    #50
    enable <= 1;
    #25
    reset <= 0;
end



    
endmodule
