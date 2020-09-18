module tst(
input clk,
input s,
output a
);
/*_____tst module use ez register____*/
reg a_reg1;
reg a_reg2;
always@(posedge clk)
begin
	a_reg2=a_reg1;//property  a_reg1 |=> a_reg2 endproperty
	a_reg1=s;
	
end

assign a=(~a_reg2)&&a_reg1;//check the rising of the input s
endmodule
