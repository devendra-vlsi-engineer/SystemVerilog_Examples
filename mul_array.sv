module top;
	reg [3:0][4:0] mul_arr[5:0][2:0];
	initial begin
		foreach(mul_arr[i][j][k])                  // Using foreach to assign values
			mul_arr[i][j][k] = i+j+k;  
		/*for(int i=0; i<6; i++)                   // Using nested for loop to assign values
			for (int j=0; j<3; j++)
				for (int k=0; k<4; k++)
					mul_arr[i][j][k] = i+j+k; */    // assigning a value(can also be "$urandomrange(1, 30)")
		$display("Mul_arr = %p", mul_arr);
	end
endmodule

/*
# Run script to simulate in ModelSim
vlib work
vlog mul_array.sv
vsim top
run -all
*/



