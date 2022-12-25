module status_register_tb();
  
  // reg input variables
  reg [3:0]word_out;
  reg Cout;
  
  // wire output variables
  wire V, Z, S, C;
  
  // Design Instantiation
  status_register instance1(.word_out(word_out), .Cout(Cout), .V(V), .Z(Z), .S(S), .C(C));
  
  // VCD Files
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  // Driving Parameters
  initial
    begin
      for (int i = 0; i < 50; i++) 
          begin
            word_out = $urandom_range (0, 4'b1111);
            Cout     = $urandom_range (0, 1);
            #5;
          end
      $finish;
    end
endmodule  