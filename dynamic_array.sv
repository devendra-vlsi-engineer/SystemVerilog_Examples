module top;
int intda[];
int intda1[];
int len, x, y, l;

initial begin
	intda = new[5];
	foreach(intda[i]) intda[i] = $urandom_range(20, 40);
	$display("Intda = %p, Size = %0d", intda, intda.size());
	foreach(intda[i]) $display("Intda[%0d] = %p", i, intda[i]);

	intda = new[10](intda);
	$display("Intda = %p, Size = %0d", intda, intda.size());

	intda1 = new[5](intda);
	$display("Intda1 = %p, Size = %0d", intda1, intda1.size());

	intda1.delete();
	$display("Intda1 = %p, Size = %0d", intda1, intda1.size());

	//Insert element at specified loc
	len = intda.size();
	intda1 = new[len+1];
	x = 2; y = 28;
	for(int i=0; i<len; i++) begin:inserting
		if(i<x) intda1[i] = intda[i];
		else if(i==x) intda1[i] = y;
		else intda1[i] = intda[i-1];
	end: inserting
	intda = new[len+1](intda1);
	$display("Inserted %0d at index = %0d\nIntda = %p, Size = %0d",y, x, intda, intda.size());
	
	//Delete an element at specified loc
	len = intda.size();
	intda1 = new[len-1];
	x = 1; y = 27;
	for(int i=0; i<len; i++) begin:deleting
		if(i<x) intda1[i] = intda[i];
		else if(i==x || intda[i]==y) intda1[i] = intda[i+1];
		else intda1[i] = intda[i+1];
	end: deleting
	intda = new[len-1](intda1);
	$display("Deleted %0d at index = %0d\nIntda = %p, Size = %0d",y, x, intda, intda.size());
	
	//Reverse elements of the array
	len = intda.size();
	intda1 = new[len];
	for(int i=0; i<len; i++) begin:Reversing         // intda.reverse(); // a built in method available
		intda1[i] = intda[len-1-i];
	end
	intda = new[len](intda1);
	$display("Reversed dynamic array\nIntda = %p, Size = %0d", intda, intda.size());
	
	// Copying elements from an index to end
	len = intda.size();
	l = 4;
	intda1 = new[l];
	for(int i=0; i<len; i++) begin:copying
		intda1[i] = intda[len-l+i];
	end: copying
	intda = new[l](intda1);
	$display("Copied last %0d elements from old array\nIntda = %p, Size = %0d",l , intda, intda.size());
end
endmodule
