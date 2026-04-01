class eth_pkt;
	// Properties;
	local bit [55:0]PRE;
	local bit [7:0]SFD;
	rand bit [47:0]DA;
	rand bit [47:0]SA;
	rand bit [15:0]LEN;
	rand bit [7:0]PAYLOAD[$];
	bit [31:0]CRC;

	// Methods;
	function new();	
		PRE = {28{2'b10}};
		SFD = 8'b1010_1011;
	endfunction
	
	function void print(string name="eth_pkt");
		$display("\nPrinting the values of the %s", name);
		$display("\tpreamble = %0b", PRE);
		$display("\tSFD = %0b", SFD);
		$display("\tDA = %0h", DA);
		$display("\tSA = %0h", SA);
		$display("\tLength = %0b", LEN);
		$display("\tPayload = %0p", PAYLOAD);
		$display("\tCRC = %0h", CRC);
	endfunction

	function void set_PRE(bit[55:0] PRE_T);
		PRE = PRE_T;
		$display("Preamble got updated to %0h", PRE_T);
	endfunction

	//Constraints;
	constraint xyz_c {
		LEN inside {[42:1500]};
		PAYLOAD.size() == LEN;
	};

endclass

module top;
	eth_pkt pkt = new();
	initial begin
		pkt.print("Packet with new");
		pkt.randomize();
		pkt.print("Packet after randomization");
		pkt.set_PRE(100);
		$display("Packet = %0p", pkt);
	end
endmodule
