/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module turn_util_4 (
    input clk,
    input rst,
    input p,
    output reg [1:0] turn
  );
  
  
  
  always @* begin
    
    case (p)
      1'h0: begin
        turn[0+0-:1] = 1'h1;
        turn[1+0-:1] = 1'h0;
      end
      1'h1: begin
        turn[0+0-:1] = 1'h0;
        turn[1+0-:1] = 1'h1;
      end
      default: begin
        turn = 2'h0;
      end
    endcase
  end
endmodule
