// Shifter Unit

//Functionality: Shifts a 4-bit word input
//Input- 3bit selction word for the type of shift to be performed.
//Output- Shifted 4bit word
//Shifts:
//   Shift Right(3'b001)
//   Shift Left (3'b010)
//   Circular Shift Right (3'b101)
//   Circular shift left  (3'b110)
          
//   No shift ((3'b000),(3'b100),(3'b111))
//   Reset (3'b011)

module shifter_4bit (input [3:0]word,
                     input [2:0]sel,
                     output reg [3:0]word_out);
  
  always @(*)
    begin
      case (sel)
        
        3'b001:                            //Shift Left
          word_out = {1'b0, word[3:1]};
        
        3'b010:                            //Shift Right
          word_out = {word[2:0], 1'b0};
        
        3'b011:                            //Reset
          word_out = 4'b0000;
        
        3'b101:                            //Circular Shift Left
          word_out = {word[0], word[3:1]};
        
        3'b110:                            //Circular Shift Right
          word_out = {word[2:1], word[3]};
        
        3'b000:                            //No Shfit
          word_out = word;
        
        3'b100:                            //No Shift
          word_out = word;
        
        3'b111:                            //No Shift
          word_out = word;
        
      endcase
    end
endmodule
