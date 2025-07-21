module updowncounter (
  input clk,         // Clock input
  input reset,       // Synchronous reset
  input enable, // 0 = counting disabled, 1 = counting enabled
  input upDown, // 1 = count up, 0 = count down
  output reg [31:0] count // The counter for the final number
  
);
  
  
  always @(posedge clk) begin
    if (reset) begin
      count <= 0;
    end
    
    else begin
      if (enable == 1) begin
        if(upDown == 1) begin
          count <= count + 1; // Counts up by 1 every clock cycle
        end
        else begin
          count <= count - 1;
        end
      end
    end
  end
endmodule
