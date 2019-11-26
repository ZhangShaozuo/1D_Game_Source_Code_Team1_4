/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shift16_21 (
    input [3:0] alufn,
    input [15:0] a,
    input [4:0] b,
    output reg [15:0] shift
  );
  
  
  
  always @* begin
    
    case ({alufn[1+0-:1], alufn[0+0-:1]})
      2'h0: begin
        shift = a << b;
      end
      2'h1: begin
        shift = a >> b;
      end
      2'h3: begin
        shift = $signed(a) >>> b;
      end
      default: begin
        shift = a;
      end
    endcase
  end
endmodule
