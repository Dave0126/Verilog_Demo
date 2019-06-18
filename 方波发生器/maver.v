
module waver(clk_gen,m,n);
input[3:0] m,n;
output reg clk_gen;
always@*
	begin
		clk_gen=0;
		#m clk_gen=~clk_gen;
		#n clk_gen=~clk_gen;
	end
endmodule
