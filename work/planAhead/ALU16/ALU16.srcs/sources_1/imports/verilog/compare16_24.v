/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module compare16_24 (
    input [3:0] alufn,
    input z,
    input v,
    input n,
    output reg [15:0] cmp
  );
  
  
  
  reg lt;
  
  reg eq;
  
  reg le;
  
  always @* begin
    cmp = 16'h0000;
    eq = z;
    lt = (n ^ v);
    le = eq | lt;
    
    case (alufn[1+1-:2])
      2'h1: begin
        cmp[0+0-:1] = eq;
      end
      2'h2: begin
        cmp[0+0-:1] = lt;
      end
      2'h3: begin
        cmp[0+0-:1] = le;
      end
      default: begin
        cmp[0+0-:1] = 1'h0;
      end
    endcase
  end
endmodule
