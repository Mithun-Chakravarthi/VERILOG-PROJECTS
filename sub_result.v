`timescale 1ns/1ps
module sub_result(a,b,out,b1);
input [7:0]a,b;
output [7:0]out;
output b1;
wire [7:0]d;
wire [7:0]d1;
subtractor_8bit s(a,b,d,b1);
Complement2s c(d,d1);
assign out=(b==1'b1)?d1:d;
endmodule