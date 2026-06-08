module nand_gate (
	input a,b,
	output y_not, y_and, y_or, y_nor, y_xor, y_xnor);
	
//NOT Gate 
assign y_not = ~(a&a);

//AND Gate 
wire n1; 
assign n1 = ~(a&b);
assign y_and = ~(n1&n1); 

//OR Gate 
wire n2,n3; 
assign n2 = ~(a&a);
assign n3 = ~(b&b);
assign y_or = ~(n2 & n3) ;

//NOR Gate 
assign y_nor = ~(y_or); 

//XOR Gate 
wire n4,n5,n6;
assign n4 = ~(a&b);
assign n5 = ~(a&n4);
assign n6 = ~(b&n4);
assign y_xor = ~(n5&n6);

//XNOR Gate 
assign y_xnor = ~(y_xor); 

endmodule




