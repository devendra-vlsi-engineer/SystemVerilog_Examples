module top;
string name = "Verilog";
string name1;
byte c;
	initial begin
		name1 = name;
		for(int i = 0; i<name.len(); i++) begin
			c = name.getc(i);
			name1.putc(name.len()-1-i, c);
		end
		$display("\nReversed string is \"%s\":", name1);
	end
endmodule

/*
#run script to run the code in the ModelSim Tool

vlib work
vlog string_reversal.sv
vsim top
run -all
*/
