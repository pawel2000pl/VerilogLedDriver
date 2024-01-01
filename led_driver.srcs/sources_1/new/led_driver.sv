`timescale 1ns / 1ps

module led_driver #(parameter R=10) (
        input logic clk,
        input logic[R-1:0] value,
        output logic out,
        input logic reset
    );
    
    logic[R-1:0] counter;
    wire[R-1:0] driver;
    wire[R-1:0] next_counter;
    assign next_counter = counter + 1;
    
    genvar i;  
    generate
        for (i = 0; i < R; i=i+1) begin : gen_loop
            assign driver[i] = value[R-1-i];
        end
    endgenerate
    
    always @(posedge clk) 
    begin
        counter <= (reset || &next_counter) ? 0 : next_counter;           
        out <= |((~counter) & next_counter & driver);           
    end
    
endmodule
