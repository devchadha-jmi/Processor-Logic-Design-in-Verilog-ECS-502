// Memory Size: 4(word size) x 8(words)
// Two Port Memory: Drives data to A and B

module Dual_Port_Memory_4x8(input [3:0] data_a,
                            input [3:0] data_b,
                            input [2:0] addr_a,
                            input [2:0] addr_b,
                            input we_a,
                            input we_b,
                            input clk,
                            output reg [3:0] q_a,
                            output reg [3:0] q_b);
  
  reg [3:0] ram [2:0];
  // word size = 4
  // memory depth = 8
  
  always @ (posedge clk)
    begin
      if(we_a)
        ram[addr_a] <= data_a;
      else
        q_a <= ram[addr_a]; 
    end
  
  always @ (posedge clk)
    begin
      if(we_b)
        ram[addr_b] <= data_b;
      else
        q_b <= ram[addr_b]; 
    end
  
endmodule
  