// Status Register
// Functionality: Status Register has 4 registers that represent the current status of the input and output words using which the ongoing micro-operation can be guessed
// 4 registers: V Z S C
// V: Overflow
// Z: Zero
// S: Sign
// C: Carry

module status_register(input [3:0]word_out,
                       input Cout,
                       output V,
                       output Z,
                       output S,
                       output C);
  
  assign C = Cout;
  assign S = word_out[3];
  assign Z = ~(word_out[3] | word_out[2] | word_out[1] | word_out[0]);
  assign V = word_out[3] ~^ Cout;
  
endmodule