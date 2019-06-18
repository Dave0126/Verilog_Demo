module xor_test;
	reg a,b;
	wire out;

 xorgate u1(a,b,out);
	initial
	begin
		a=0;b=0;
		#10 a=0;b=1;
		#10 a=1;b=0;
		#10 a=1;b=1;
		#10 $finish;
	end

	initial
	$monitor($time,"a=%b,b=%b,out=%b",a,b,out);
endmodule
