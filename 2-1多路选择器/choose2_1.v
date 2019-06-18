module choose2_1(a,b,c,out);
	input a,b,c;
	output out;
	reg out;
	
	always@(c or a or b)
	begin
		if (!c) out=a;
		else out=b;
	end
endmodule
