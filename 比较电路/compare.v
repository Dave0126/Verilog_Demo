module compare
(
input [1:0]a,
input [1:0]b,
parameter [1:0]temp,
output [1:0]out
);

always@(a,b)
begin
 assign temp[0]=a[0]>b[0]?1:0;
 assign temp[1]=a[1]>b[1]?1:0;

case(temp)
2'b00:out=b;
2'b01:out=b;
2'b10:out=a;
2'b11:out=a;
endcase

end
endmodule
