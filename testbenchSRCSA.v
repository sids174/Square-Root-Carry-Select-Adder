module testbenchSRCSA();

reg [31:0]A[0:9999];
reg [31:0]B[0:9999];
reg Cin[0:9999];
reg [32:0]S[0:9999];

wire [32:0]sout;
reg [31:0]in1;
reg [31:0]in2;
reg c0;

reg [32:0]Scheck;

SquareRootCSA dut(.sout(sout),.in1(in1),.in2(in2),.c0(c0));

integer i;

initial
begin
$readmemh("inputA.txt",A);
$readmemh("inputB.txt",B);
$readmemh("inputCin.txt",Cin);
$readmemh("inputApB.txt",S);

end

initial
begin

for(i=0;i<10000;i=i+1)
begin

#100 in1 <= A[i]; in2 <= B[i]; c0 <= Cin[i];Scheck <= S[i];
if(sout != Scheck)
$display("Error! Correct Output: %h | Incorrect Output: %h ",Scheck,sout);
else
$display("Correct! %d + %d + %d = %d",in1,in2,c0,sout);

end

end
endmodule
