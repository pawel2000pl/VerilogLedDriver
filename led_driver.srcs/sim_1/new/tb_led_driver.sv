`timescale 1ns / 1ps

module tb_led_driver();
    
    logic clk;
    logic reset;
    wire out_led;
    wire out_pwm;
    logic[3:0] value;
    
    led_driver #(.R(4)) led_instance(.clk(clk), .reset(reset), .out(out_led), .value(value)); 
    pwm_driver #(.R(4)) pwm_instance(.clk(clk), .reset(reset), .out(out_pwm), .value(value)); 
    
    
    always  
    begin
        #25
        clk <= ~clk;
        #25
        clk <= ~clk;        
        $display(out_led, " ", out_pwm);
    end
    
    initial 
    begin
        clk <= 0;        
        reset <= 1;
        value <= 12;
        #50
        reset <= 0;
        
        #775     
        $finish ;
    end

endmodule
