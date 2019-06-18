
module waver_test;
reg[3:0]m,n;
waver u1(clk_gen,m,n);
initial
begin
m=3;n=2;
#5 m=2;n=3;
#5 m=4;n=1;
#5 m=1;n=4;
#5 $finish;
end
endmodule
