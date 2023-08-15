// half subtractor
module HS(Diff0,Bout0,a,b);
output Diff0,Bout0;
input a,b;
wire t;
xor D(Diff0,a,b);
not (t,a); 
and B( Bout0,t,b);
endmodule

// write the test bech for Full subtractor
module TB_FS ();
reg X,Y,Bin;
wire Diff1,Bout1;
 FS m2(Diff1,Bout1,X,Y,Bin);


initial
begin
 X = 1'b0;Y = 1'b0;Bin= 1'b0;
 #100;
X = 1'b0;Y = 1'b0;Bin= 1'b1;
 #100;
X = 1'b0;Y = 1'b1;Bin= 1'b0;
 #100;
X = 1'b0;Y = 1'b1;Bin= 1'b1;
 #100;
X = 1'b1;Y = 1'b0;Bin= 1'b0;
 #100;
X = 1'b1;Y = 1'b0;Bin= 1'b1;
 #100;
X = 1'b1;Y = 1'b1;Bin= 1'b0;
 #100;
X = 1'b1;Y = 1'b1;Bin= 1'b1;
 #100;
end 
endmodule    
// full subtractor

module FS (Diff1,Bout1,A,B,Bin);
output Diff1,Bout1;
input A,B,Bin;
wire w1, w2,w3;
HS m1 ( w1,w2,A,B);  // instantiate half subtractor module
HS m2 ( Diff1,w3,w1,Bin);
or (Bout1,w3,w2);
endmodule
// two 3bit subtractor
module _3bit_sub(D[2:0], Bout,A[2:0],B[2:0],Bin);
output D[2:0], Bout;
input A[2:0],B[2:0],Bin;
wire B0,B1;
 FS m1 ( D[0],B0,A[0],B[0],Bin);
  FS m2 ( D[1],B1,A[1],B[1],B0);
    FS m3 ( D[2],Bout,A[2],B[2],B1);
endmodule
//  test bench for  two 3bit subtractor
// module TB_3bit_sub();
// reg A[2:0],B[2:0],Bin;
// wire D[2:0], Bout;
// _3bit_sub  m1 (D[2:0], Bout,A[2:0],B[2:0],Bin);
//   initial
//      begin
//   A[2:0] = 3'b000; B[2:0] = 3'b000; Bin= 1'b0;
//   #200;
//       end
//endmodule

