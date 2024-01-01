`timescale 1ns / 1ps

module pwm_driver #(parameter R=10) (
        input logic clk,
        input logic[R-1:0] value,
        output logic out,
        input logic reset
    );
    
    logic[R-1:0] counter;
    wire[R-1:0] next_counter;
    assign next_counter = counter + 1;
    
    always @(posedge clk) 
    begin
        counter <= (reset | &next_counter) ? 0 : next_counter;           
        out <= counter < value;           
    end
    
endmodule