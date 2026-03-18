class apb_tx;
//Properties
	rand bit wr_rd;
	rand bit [7:0]addr;
	rand bit [15:0]wdata;
	rand bit [15:0]rdata;
	rand bit [3:0]sel;

//Methods
	// method1 - Setting few constraints for the property type
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
	
	// Method2 - Comparing one Object with another
	function void compare(apb_tx tx);
		if(addr == tx.addr && wdata == tx.wdata && wr_rd == tx.wr_rd) $display("Class fields matched");
		else $display("Class fields mismatched");
	endfunction
	
	// Method3 - Copying one object to another object
	function apb_tx copy(apb_tx tx);
		addr = tx.addr;
		wdata = tx.wdata;
		wr_rd = tx.wr_rd;
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
		$display("\n After copying the \"txn\" from \"txn2\"");
		txn.copy(txn2);
		$display("txn = %p", txn);
		$display("txn2 = %p", txn2);
		txn.compare(txn2);
	end
endmodule
