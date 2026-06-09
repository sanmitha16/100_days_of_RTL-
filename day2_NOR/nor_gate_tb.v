

module nor_gate_tb();
reg a , b;
wire y_not,y_and,y_or,y_nand,y_xor,y_xnor;
nor_gate dut(a,b,y_not,y_or,y_and,y_nand,y_xor,y_xnor);
initial begin 
a=0;b=0;
#10;
$display("a=%d,b=%d,y_not=%b,y_and=%b,y_or=%b,y_nand=%b,y_xor=%b,y_xnor=%b",a,b,y_not,y_and,y_or,y_nand,y_xor,y_xnor);
a=0;b=1;
#10;
$display("a=%d,b=%d,y_not=%b,y_and=%b,y_or=%b,y_nand=%b,y_xor=%b,y_xnor=%b",a,b,y_not,y_and,y_or,y_nand,y_xor,y_xnor);
a=1;b=0;
#10;
$display("a=%d,b=%d,y_not=%b,y_and=%b,y_or=%b,y_nand=%b,y_xor=%b,y_xnor=%b",a,b,y_not,y_and,y_or,y_nand,y_xor,y_xnor);
a=1;b=1;
#10;
$display("a=%d,b=%d,y_not=%b,y_and=%b,y_or=%b,y_nand=%b,y_xor=%b,y_xnor=%b",a,b,y_not,y_and,y_or,y_nand,y_xor,y_xnor);
#10;
$finish();
end

initial begin 
$dumpfile("nor.vcd");
$dumpvars; 
end

endmodule
