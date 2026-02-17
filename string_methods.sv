//String Methods - Examples
module top;
  string name, c, d, e, h;
  int a, f, g;
  byte b;
  
  initial begin
    name = "This is the string";
    $display("\n\nInput string: %s", name);
    $display("\nHere are the string methods:");
    
    a = name.len();
    $display("Length of the string: %0dchars", a);
    
    b = name.getc(4);
    $display("4th place char of the string: ASCII: %0d, Char: '%c'", b, b);
    
    name.putc(4," ");
    $display("after putc, the string: %s", name);
    
    d = name.toupper();
    $display("Uppercase string: %s", d);
    
    e = name.tolower();
    $display("Lowercase string: %s", e);
    
    f = name.compare(e);
    $display("Comparion of string: %0d", f);
    
    g = name.icompare(e);
    $display("ICompare of string: %0d", g);
    
    h = name.substr(5,6);
    $display("Sub-string: \"%s\"", h);
  end
endmodule


/*
#run script file to run in ModelSim
vlib work
vlog string_methods.sv
vsim top
run -all
*/
