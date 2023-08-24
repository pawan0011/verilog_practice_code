//Write a Verilog module to implement a 16-bit majority function using behavioral description. The module will take as input a 16-bit data, Data and provide a single-bit output, Out, indicating the logic state of the most number of input bits, i.e. if at least 9 out of 16 input signals are at logic 1, the logic state of Out will be 1; otherwise Out will remain at  logic 0. The template of the function will be as follows


module majority16 (Out, Data);

  input [15:0] Data;
    output reg Out;


    integer count =0;
  integer i;
always @* begin
   
    
    for (i = 0; i < 16; i = i + 1) begin
        if (Data[i] == 1'b1) 
            count = count + 1;
        
    end
    if (count >= 9) 
        Out = 1'b1;
     else 
        Out = 1'b0;
   
end

endmodule
