//Testbench

module shifter_4bit_tb();
  
 // testbench variables
  reg [3:0]word;
  reg [2:0]sel;
  
 // Output variable is also takn as reg type
  reg [3:0]word_out;
  
 // Design instantiation
  shifter_4bit instance1(.word(word),
                .sel(sel),
                .word_out(word_out));
  
  // VCD File
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  // Driving Parameters
  initial
    begin
      for (int i = 0; i < 25; i++) 
          begin
            word  = $urandom_range (0, 3'b111);
            sel   = $urandom_range (0, 3'b111);
      		#5;
    	end
    $finish;
   end

endmodule