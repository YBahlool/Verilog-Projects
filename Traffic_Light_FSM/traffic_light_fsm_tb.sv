`timescale 1ns/1ps

module testTrafficLight();
  reg clk;
  reg reset;
  reg [31:0] ratioGreen;
  reg [31:0] ratioYellow;
  reg [31:0] ratioRed;
  
  wire [31:0] q;
  wire greenlt, yellowlt, redlt;
  
  counter FL (clk, reset, ratioGreen, ratioYellow, ratioRed, q, greenlt, yellowlt, redlt);
  
  initial begin 
    clk = 0;
    
    forever #5 clk = ~clk;
  end
  
  
  initial begin
    $monitor("Time=%0t | q=%0d | G=%b Y=%b R=%b", $time, q, greenlt, yellowlt, redlt);

    
    reset = 1;
    ratioGreen = 4;
    ratioYellow = 2;
    ratioRed = 4;
    
    #10 reset = 0;
    
    #100;
    
    $finish;
  end
  
  
endmodule
