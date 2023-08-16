module jk_ms_ff (Q, Qb, J, K, Clk, Set, Rst);
  input J, K, Clk, Set, Rst;
  output  Q, Qb;
   wire t1,t2,t3,t4,t5,t6,t7;
 
      not n1 (t7,Clk);
      nand N1 (t1,J,Clk,Qb);
      nand N2 (t2,K,Clk,Q);
      nand N3 (t3,t4,t1);
      nand N4 (t4,t3,t2);
      nand N5 (t5,t3,t7);
      nand N6 (t6,t4,t7);
      nand N7 (Q,t5,Qb,Set);
      nand N8 (Qb,t6,Q,Rst);
      
endmodule
