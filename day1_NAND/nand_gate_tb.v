module nand_gate_tb; 
reg a,b; 
wire y_not, y_and, y_or, y_nor, y_xor, y_xnor; 

nand_gate dut (
	.a(a),
	.b(b),
	.y_not(y_not),
	.y_or(y_or),
	.y_and(y_and),
	.y_nor(y_nor),
	.y_xor(y_xor),
	.y_xnor(y_xnor));
	
initial 
begin 
a= 0; b= 0;
#10 a = 0; b = 1;
#10 a = 1; b = 0;
#10 a = 1; b = 1; 
#50 $finish; 
end 

initial 
begin 
$dumpfile("nand.vcd");
$dumpvars;
end 

initial begin
    $monitor("t=%0t a=%b b=%b | NOT=%b AND=%b OR=%b NOR=%b XOR=%b XNOR=%b",
             $time, a, b, y_not, y_and, y_or, y_nor, y_xor, y_xnor);
end

endmodule 
