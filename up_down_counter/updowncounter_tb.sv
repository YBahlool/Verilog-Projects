`timescale 1ns/1ps

module upDownCounterTb();
  reg clk;
  reg reset;
  reg enable;
  reg upDown;
  
  wire [31:0] count;
  
  updowncounter TB (clk,reset, enable, upDown, count);
  
  initial begin
    clk = 0;
    
    forever #5 clk = ~clk;
  end
  
  
  initial begin
    $monitor("The count is %d", count);
    
    reset = 1;
    #10;
    reset = 0;
    
    enable = 1;
    upDown = 1;
    
    #100;
    
    $display("\n COUNTING DOWN \n");
    
    upDown = 0;
    
    #100;
    
    $finish;
  end
  
endmodule
