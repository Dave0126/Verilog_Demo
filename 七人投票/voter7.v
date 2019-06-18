
module voter7(pass,vote);
 output reg pass;
 input [6:0] vote;
 reg [2:0] sum;
 integer i;
 always @(vote)
  begin
   sum = 0;
   	 for(i=0;i<=6;i=i+1)
   	 	if(vote[i]) sum = sum+1;
   if(sum[2]) 
	pass = 1;
   else 
	pass = 0;
  end
endmodule