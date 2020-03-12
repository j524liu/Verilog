
module MUX2(a, b, sel, out);

parameter size = 8;

input[size-1:0] a, b;
input sel;
output[size-1:0] out;

assign out = (!sel) ? a:
					  (sel) ? b:
					  {size{1'bx}};

endmodule
