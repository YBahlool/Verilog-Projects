module counter (
    input clk,         // Clock input
    input reset,       // Synchronous reset
  	input [31:0] ratioGreenLt, // Controls the length of the timer for the red and green lights
  	input [31:0] ratioYellowLt, // Controls the length of the timer for the yellow light 
  	input [31:0] ratioRedLt, // Controls the length of the timer for the red light 
  	output reg [31:0] q, // 4-bit counter output
  	output reg greenlt, // Controls the state of the green light
  	output reg yellowlt, // Controls the state of the yellow light
  	output reg redlt // Controls the state of the red light
);
  
  reg [1:0] state; // Controls whether it is green or yellow light (0 = green, 1 = yellow, 2 = red)
  	
    always @(posedge clk) begin
      
      if (reset) begin
            q <= 0;
      		greenlt <= 0;
      		yellowlt <= 0;
      		redlt <= 0;
      		state <= 0;
      end
        else begin
          	
          // Handle state-driven outputs
          case (state)
            0: begin
              greenlt <= 1; yellowlt <= 0; redlt <= 0;
              if (q == ratioGreenLt - 1) begin
                state <= 1; q <= 0;
              end else begin
                q <= q + 1;
              end
            end
            
            1: begin
              greenlt <= 0; yellowlt <= 1; redlt <= 0;
              if (q == ratioYellowLt - 1) begin
                state <= 2; q <= 0;
              end else begin
                q <= q + 1;
              end
            end
            
            2: begin
              greenlt <= 0; yellowlt <= 0; redlt <= 1;
              if (q == ratioRedLt - 1) begin 
                state <= 0; q <= 0;
              end else begin
                q <= q + 1;
              end
            end
            
          endcase

          
        end
      
      
    end
endmodule
