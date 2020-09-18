
module top_tb;
reg clk;
reg s;
wire a;
tst t1(.clk(clk),.a(a),.s(s));//tst module instance
initial
begin
$fsdbDumpfile("top_tb.fsdb");//to generate the top_tb.fsdb file
$fsdbDumpvars(0);
end


initial
begin
clk=0;s=0;//
fork
begin repeat(20) #5 clk=~clk;end//generate the clk
begin
#5 s=0;
#10 s=1;//raising of input s
#40 s=0;
end
join
$display("Running testbench"); 
end
  
endmodule
