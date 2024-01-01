`timescale 1ns / 1ps


module led_driver #(parameter R=10) (
        input logic clk,
        input logic[0:R-1] value,
        output logic out,
        input logic reset
    );
    
    logic[0:R-1] counter;
    wire[0:R-1] driver;
    
    genvar i;  
    generate
        for (i = 0; i < R; i=i+1) begin : gen_loop
            assign driver[i] = value[R-1-i];
        end
    endgenerate
    
    always_ff @(posedge clk) 
    begin
        counter <= reset ? 0 : counter + 1;           
        out <= ((~counter) & (counter+1) & driver) != 0;           
    end
    
endmodule
