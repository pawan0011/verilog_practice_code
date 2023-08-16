module demux1to2 (out, in, sel);
  input in,sel;
  output[1:0]out;
  wire t1;
  not(t1,sel);
  and A1 ( out[1],t1,in);
  and A2 ( out[0],sel,in);
endmodule
