`timescale 1ns / 1ps


module main(
    input logic CLK1,
    input logic sw_in[3:0],
    output wire LEDR,
    output wire LEDG,
    output wire LEDB,
    output logic P4[35:0],
    output logic LED[7:0]
    );
    
    wire reset;
    assign reset = sw_in[0];
    logic slowdown_clk;
    logic[31:0] slowdown_counter;
    
    logic[9:0] red_value;
    logic[9:0] green_value;
    logic[9:0] blue_value;
    
    led_driver led_r(.clk(reset ? CLK1 : slowdown_counter), .value(red_value), .out(P4[0]), .reset(reset));
    led_driver led_g(.clk(reset ? CLK1 : slowdown_counter), .value(green_value), .out(P4[1]), .reset(reset));
    led_driver led_b(.clk(reset ? CLK1 : slowdown_counter), .value(blue_value), .out(P4[2]), .reset(reset));
    
    assign LEDR = ~P4[0];
    assign LEDG = ~P4[1];
    assign LEDB = ~P4[2];
    
    wire clk_btn;
    assign clk_btn = reset ? CLK1 : &(slowdown_counter[19:0]); //~95Hz 
    logic set_mode_btn;
    logic[1:0] set_mode;
    
    always @(posedge CLK1)
    begin
        if (reset) 
        begin
            slowdown_clk <= 0;
            slowdown_counter <= 0;
        end else begin
            slowdown_counter <= slowdown_counter + 1;
            slowdown_clk <= slowdown_counter[4];                   
        end              
    end
    
    always @(posedge clk_btn)
    begin
        if (reset)
            set_mode_btn <= 0;
        else
            set_mode_btn <= sw_in[3];
    end
    
    always @(posedge (set_mode_btn ^ (reset && CLK1)))
    begin
        if (reset)
            set_mode <= 0;
        else 
            set_mode <= set_mode + 1;
    end
    
    always @(posedge clk_btn)
    begin
        if (reset)
        begin
            red_value <= 0;
            green_value <= 0;
            blue_value <= 0;
        end else begin
            
            case (set_mode)
            2'd1: 
            begin
                red_value <= red_value + sw_in[2] - sw_in[1];
                for (integer i=0;i<8;i++)
                    LED[i] <= red_value[i+2];
            end
            2'd2: 
            begin
                green_value <= green_value + sw_in[2] - sw_in[1];
                for (integer i=0;i<8;i++)
                    LED[i] <= green_value[i+2];
            end
            2'd3: 
            begin
                blue_value <= blue_value + sw_in[2] - sw_in[1];
                for (integer i=0;i<8;i++)
                    LED[i] <= blue_value[i+2];
            end
            default:
            begin            
                for (integer i=0;i<8;i++)
                    LED[i] <= 0;
            end
            endcase
       end 
    end
    
endmodule
