module LFSR(clk, reset);
  input clk,reset;
  output [2:0] Q;
  reg  [2:0] Q;
  always@(posedge clk or posedge reset) begin
    if(reset)
      Q = 3'b110;
    else
      Q[0] <= Q[0] ^ Q[2];
      Q[1] <= Q[0];
      Q[2] <= Q[1];
  end
endmodule
