module half_adder_test;
	reg a,b;
	wire s,c;

half_adder u1(a,b,s,c);
	initial
	begin
		a=0;b=0;
		#10 a=0;b=1;
		#10 a=1;b=0;
		#10 a=1;b=1;
		#10 $finish;
	end

	initial
	$monitor($time,"a=%b,b=%b,s=%b,c=%b",a,b,s,c);
endmodule
