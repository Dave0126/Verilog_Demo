module three_input_test;
	reg a,b,c;
	wire out;

three_input u1(a,b,c,out);
initial
begin
	a=0;b=0;c=0;
	#10 a=0;b=1;c=0;
	#10 a=1;b=0;c=1;
	#10 a=1;b=1;c=1;
	#10 $finish;
end

initial
	$monitor($time,"a=%b,b=%b,c=%b,out=%b",a,b,c,out);
endmodule
