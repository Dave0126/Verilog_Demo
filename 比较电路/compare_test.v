module campare_test;
reg out;
compare u1(a,b,temp,out)
initial
begin
a=00,b=01
#5 m=01;n=01;
#5 m=11;n=10;
#5 m=00;n=00;
#5 $finish;
end
endmodule
