class apb_tx;
	rand bit wr_rd;
	rand bit [7:0]addr;
	rand bit [15:0]wdata;
	rand bit [15:0]rdata;
	rand bit [3:0]sel;

	constraint sel_c{
		sel inside {4'b0010, 4'b1100, 4'b1110};
	}
	constraint sel1_c{
		sel inside {4'b0000};
	}
endclass

module top;
	apb_tx txn;
	initial begin	
		txn = new();
		txn.addr = 8'h123;
		assert(txn.randomize());
		$display("txn = %p", txn);
	end
endmodule
