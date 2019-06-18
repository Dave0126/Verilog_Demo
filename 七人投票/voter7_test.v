
module voter7_tb;
	reg [6:0] vote;
	wire  pass;
	voter7 v(pass,vote);
	initial
	begin
	 vote = 7'b0000111;
	 #10 vote = 7'b0001111;
	 #10 vote = 7'b0011111;
#10 vote = 7'b0011111;
#10 vote = 7'b0111111;
#10 vote = 7'b0000011;

	 #10  $finish;
	end
	initial
	 $monitor($time, "pass=%b vote=%b" ,pass,vote);
endmodule