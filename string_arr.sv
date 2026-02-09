module top;//{
	string strarr1[10:1];
	string strarr2[10:1];

	initial begin//{
		for(int i=1;i<=10;i++) begin
			strarr1[i] = $sformatf("str%0d", i);
		end	
		foreach(strarr2[i]) begin
			strarr2[i] = $sformatf("str%0d", i);
		end
		foreach(strarr1[i])begin
			assert (strarr1[i] == strarr2[i]) $display("Matched at %0d", i);
			else begin 
				$warning("Mismatched at %0d", i);
			end
		end
	end//}
endmodule//}

//Run script for modelsim
/*
vlib work

vlog string_arr.sv

vsim top

run -all
*/
