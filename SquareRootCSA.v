module SquareRootCSA(sout,in1,in2,c0);

input [31:0]in1,in2;
input c0;
output [32:0]sout;

wire [7:0]cout;

wire [1:0]s20;
wire [1:0]s21;
wire [1:0]c20;
wire [1:0]c21;

wire [2:0]s30;
wire [2:0]s31;
wire [2:0]c30;
wire [2:0]c31;

wire [3:0]s40;
wire [3:0]s41;
wire [3:0]c40;
wire [3:0]c41;

wire [4:0]s50;
wire [4:0]s51;
wire [4:0]c50;
wire [4:0]c51;

wire [5:0]s60;
wire [5:0]s61;
wire [5:0]c60;
wire [5:0]c61;

wire [6:0]s70;
wire [6:0]s71;
wire [6:0]c70;
wire [6:0]c71;

wire [2:0]s80;
wire [2:0]s81;
wire [2:0]c80;
wire [2:0]c81;


//Block 1
FullAdder M1(sout[0],cout[0],in1[0],in2[0],c0); //S0
FullAdder M2(sout[1],cout[1],in1[1],in2[1],cout[0]); //S1

//Block 2
FullAdder M3(s20[0],c20[0],in1[2],in2[2],1'b0);
FullAdder M4(s20[1],c20[1],in1[3],in2[3],c20[0]);

FullAdder M5(s21[0],c21[0],in1[2],in2[2],1'b1);
FullAdder M6(s21[1],c21[1],in1[3],in2[3],c21[0]);

assign sout[2] = cout[1] ? s21[0] : s20[0];  //S2
assign sout[3] = cout[1] ? s21[1] : s20[1];  //S3

assign cout[2] = cout[1] ? c21[1] : c20[1];

//Block 3
FullAdder M7(s30[0],c30[0],in1[4],in2[4],1'b0);
FullAdder M8(s30[1],c30[1],in1[5],in2[5],c30[0]);
FullAdder M9(s30[2],c30[2],in1[6],in2[6],c30[1]);
 
FullAdder M10(s31[0],c31[0],in1[4],in2[4],1'b1);
FullAdder M11(s31[1],c31[1],in1[5],in2[5],c31[0]);
FullAdder M12(s31[2],c31[2],in1[6],in2[6],c31[1]);

assign sout[4] = cout[2] ? s31[0] : s30[0];  //S4
assign sout[5] = cout[2] ? s31[1] : s30[1];  //S5
assign sout[6] = cout[2] ? s31[2] : s30[2]; //S6

assign cout[3] = cout[2] ? c31[2] : c30[2]; 

//Block 4
FullAdder M13(s40[0],c40[0],in1[7],in2[7],1'b0);
FullAdder M14(s40[1],c40[1],in1[8],in2[8],c40[0]);
FullAdder M15(s40[2],c40[2],in1[9],in2[9],c40[1]);
FullAdder M16(s40[3],c40[3],in1[10],in2[10],c40[2]);

FullAdder M17(s41[0],c41[0],in1[7],in2[7],1'b1);
FullAdder M18(s41[1],c41[1],in1[8],in2[8],c41[0]);
FullAdder M19(s41[2],c41[2],in1[9],in2[9],c41[1]);
FullAdder M20(s41[3],c41[3],in1[10],in2[10],c41[2]);

assign sout[7] = cout[3] ? s41[0] : s40[0];  //S7
assign sout[8] = cout[3] ? s41[1] : s40[1];  //S8
assign sout[9] = cout[3] ? s41[2] : s40[2]; //S9
assign sout[10] = cout[3] ? s41[3] : s40[3]; //S10

assign cout[4] = cout[3] ? c41[3] : c40[3]; 

//Block 5
FullAdder M21(s50[0],c50[0],in1[11],in2[11],1'b0);
FullAdder M22(s50[1],c50[1],in1[12],in2[12],c50[0]);
FullAdder M23(s50[2],c50[2],in1[13],in2[13],c50[1]);
FullAdder M24(s50[3],c50[3],in1[14],in2[14],c50[2]);
FullAdder M25(s50[4],c50[4],in1[15],in2[15],c50[3]);

FullAdder M26(s51[0],c51[0],in1[11],in2[11],1'b1);
FullAdder M27(s51[1],c51[1],in1[12],in2[12],c51[0]);
FullAdder M28(s51[2],c51[2],in1[13],in2[13],c51[1]);
FullAdder M29(s51[3],c51[3],in1[14],in2[14],c51[2]);
FullAdder M30(s51[4],c51[4],in1[15],in2[15],c51[3]);

assign sout[11] = cout[4] ? s51[0] : s50[0];  //S11
assign sout[12] = cout[4] ? s51[1] : s50[1];  //S12
assign sout[13] = cout[4] ? s51[2] : s50[2]; //S13
assign sout[14] = cout[4] ? s51[3] : s50[3]; //S14
assign sout[15] = cout[4] ? s51[4] : s50[4]; //S15

assign cout[5] = cout[4] ? c51[4] : c50[4]; 

//Block 6 
FullAdder M31(s60[0],c60[0],in1[16],in2[16],1'b0);
FullAdder M32(s60[1],c60[1],in1[17],in2[17],c60[0]);
FullAdder M33(s60[2],c60[2],in1[18],in2[18],c60[1]);
FullAdder M34(s60[3],c60[3],in1[19],in2[19],c60[2]);
FullAdder M35(s60[4],c60[4],in1[20],in2[20],c60[3]);
FullAdder M36(s60[5],c60[5],in1[21],in2[21],c60[4]);

FullAdder M37(s61[0],c61[0],in1[16],in2[16],1'b1);
FullAdder M38(s61[1],c61[1],in1[17],in2[17],c61[0]);
FullAdder M39(s61[2],c61[2],in1[18],in2[18],c61[1]);
FullAdder M40(s61[3],c61[3],in1[19],in2[19],c61[2]);
FullAdder M41(s61[4],c61[4],in1[20],in2[20],c61[3]);
FullAdder M42(s61[5],c61[5],in1[21],in2[21],c61[4]);

assign sout[16] = cout[5] ? s61[0] : s60[0];  //S16
assign sout[17] = cout[5] ? s61[1] : s60[1];  //S17
assign sout[18] = cout[5] ? s61[2] : s60[2]; //S18
assign sout[19] = cout[5] ? s61[3] : s60[3]; //S19
assign sout[20] = cout[5] ? s61[4] : s60[4]; //S20
assign sout[21] = cout[5] ? s61[5] : s60[5]; //S21

assign cout[6] = cout[5] ? c61[5] : c60[5]; 

//Block 7
FullAdder M43(s70[0],c70[0],in1[22],in2[22],1'b0);
FullAdder M44(s70[1],c70[1],in1[23],in2[23],c70[0]);
FullAdder M45(s70[2],c70[2],in1[24],in2[24],c70[1]);
FullAdder M46(s70[3],c70[3],in1[25],in2[25],c70[2]);
FullAdder M47(s70[4],c70[4],in1[26],in2[26],c70[3]);
FullAdder M48(s70[5],c70[5],in1[27],in2[27],c70[4]);
FullAdder M49(s70[6],c70[6],in1[28],in2[28],c70[5]);

FullAdder M50(s71[0],c71[0],in1[22],in2[22],1'b1);
FullAdder M51(s71[1],c71[1],in1[23],in2[23],c71[0]);
FullAdder M52(s71[2],c71[2],in1[24],in2[24],c71[1]);
FullAdder M53(s71[3],c71[3],in1[25],in2[25],c71[2]);
FullAdder M54(s71[4],c71[4],in1[26],in2[26],c71[3]);
FullAdder M55(s71[5],c71[5],in1[27],in2[27],c71[4]);
FullAdder M56(s71[6],c71[6],in1[28],in2[28],c71[5]);

assign sout[22] = cout[6] ? s71[0] : s70[0];  //S22
assign sout[23] = cout[6] ? s71[1] : s70[1];  //S23
assign sout[24] = cout[6] ? s71[2] : s70[2]; //S24
assign sout[25] = cout[6] ? s71[3] : s70[3]; //S25
assign sout[26] = cout[6] ? s71[4] : s70[4]; //S26
assign sout[27] = cout[6] ? s71[5] : s70[5]; //S27
assign sout[28] = cout[6] ? s71[6] : s70[6]; //S28

assign cout[7] = cout[6] ? c71[6] : c70[6]; 

//Block 8
FullAdder M57(s80[0],c80[0],in1[29],in2[29],1'b0);
FullAdder M58(s80[1],c80[1],in1[30],in2[30],c80[0]);
FullAdder M59(s80[2],c80[2],in1[31],in2[31],c80[1]);

FullAdder M60(s81[0],c81[0],in1[29],in2[29],1'b1);
FullAdder M61(s81[1],c81[1],in1[30],in2[30],c81[0]);
FullAdder M62(s81[2],c81[2],in1[31],in2[31],c81[1]);

assign sout[29] = cout[7] ? s81[0] : s80[0];  //S29
assign sout[30] = cout[7] ? s81[1] : s80[1];  //S30
assign sout[31] = cout[7] ? s81[2] : s80[2]; //S31

assign sout[32] = cout[7] ? c81[2] : c80[2]; //S32

endmodule
