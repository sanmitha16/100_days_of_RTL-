module nor_gate(
 input a,b,
 output y_not,y_or,y_and,y_nand,y_xor,y_xnor);
 wire [12:0]w;
 nor g1(y_not,a,a);
 nor g2(w[0],a,b);
 nor g3 (y_or,w[0],w[0]);//OR GATE
 nor g4 (w[1],a,a);
 nor g5 (w[2],b,b);
 nor g6 (y_and,w[1],w[2]);//AND GATE
 nor g7 (w[3],a,a);
 nor g8 (w[4],b,b);
 nor g9 (w[5],w[3],w[4]);
 nor g10(y_nand,w[5],w[5]);//NAND GATE 
 nor g11(w[6],a,b);
 nor g12(w[7],a,w[6]);
 nor g13(w[8],b,w[6]);
 nor g14(y_xor,w[7],w[8]);//XOR GATE
 nor g15(w[9],a,b);
 nor g16(w[10],a,w[9]);
 nor g17(w[11],b,w[9]);
 nor g18(w[12],w[10],w[11]);
 nor g19(y_xnor,w[12],w[12]);//XNOR GATE 
 endmodule 

