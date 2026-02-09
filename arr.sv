module top;//{
	reg [15:0] wordarr1[10];
	reg [15:0] wordarr2[10];

	initial begin//{
		for(int i=0;i<10;i++) begin//{
			wordarr1[i] = $urandom_range(10, 30);
		end //}
		foreach(wordarr2[i]) begin
			wordarr2[i] = $urandom_range(10, 30);
		end
		foreach(wordarr1[i])begin
			if (wordarr1[i] == wordarr2[i]) $display("Matched");
			else $display("Mismatched");
		end
	end//}
endmodule//}
