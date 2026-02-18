module top;
mailbox mbox;
int a;
string str;
bit [2:0]bitvec;

	initial begin
		mbox = new();
		mbox.put(10);
		mbox.put("This is a name");
		mbox.put(3'b011);
		//to get
		mbox.get(a);
		mbox.get(str);
		mbox.get(bitvec);
		$display("a = %0d", a);
		$display("String is = %0s", str);
		$display("Bit Vector is = %b", bitvec);
	end
endmodule

/*
#run script to run the code in the ModelSim Tool

vlib work
vlog string_reversal.sv
vsim top
run -all
*/
