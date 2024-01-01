`timescale 1ns / 1ps

module tb_pwm_generator();

    logic clk;
    logic reset;
    wire out;
    logic[3:0] value;
    
    pwm_driver #(.R(4)) test_instance(.clk(clk), .reset(reset), .out(out), .value(value)); 
    
    always  
    begin
        #25
        clk <= ~clk;
        #25
        clk <= ~clk;        
        $display(out);
    end
    
    initial 
    begin
        clk <= 0;        
        reset <= 1;
        value <= 10;
        #50
        reset <= 0;
        
        #800     
        $finish ;
    end

endmodule
