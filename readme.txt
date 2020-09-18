vcs -sverilog -timescale=1ns/1ps -debug_access+classdbg +vpi  -CFLAGS -DVCS -full64 -cpp g++-4.8 -cc gcc-4.8 -LDFLAGS -Wl,-no-as-needed  -f file.f -fsdb
./simv
verdi top_tb.v  -sv -ssf top_tb.fsdb  -nologo

/*_this is for the beginner of the verdi_*/
/*_to use verdi must generate the .fsdb by using _*/
initial
begin
$fsdbDumpfile("top_tb.fsdb");//to generate the top_tb.fsdb file
$fsdbDumpvars(0);
end
and  add -fsdb in command