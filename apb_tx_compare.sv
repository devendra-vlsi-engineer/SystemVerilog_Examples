class apb_tx;
//Properties
	rand bit wr_rd;
	rand bit [7:0]addr;
	rand bit [15:0]wdata;
	rand bit [15:0]rdata;
	rand bit [3:0]sel;

//Methods
	/*constraint sel_c{
		sel inside {4'b0010, 4'b1100, 4'b1110};
	}
	constraint sel1_c{
		sel inside {4'b0000};
	}
*/
	constraint sel_c{
      $onehot0(sel) == 1;
	}

	function void compare(apb_tx tx);
		if(addr == tx.addr && wdata == tx.wdata && wr_rd == tx.wr_rd) $display("Class fields matched");
		else $display("Class fields mismatched");
	endfunction

endclass

module top;
	apb_tx txn = new();
	apb_tx txn2 = new();
	initial begin	
		//txn = new();
		//txn.addr = 8'h123;
      assert(txn.randomize());
      assert(txn2.randomize());
		$display("txn = %p", txn);
		$display("txn2 = %p", txn2);
		txn.compare(txn2);
	end
endmodule
