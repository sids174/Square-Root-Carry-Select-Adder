module FullAdder(sout,cout,a,b,cin);

input a,b,cin;
output sout,cout;

assign sout = a ^ b ^ cin;
assign cout = (a & b) | (cin & (a ^ b));

endmodule
