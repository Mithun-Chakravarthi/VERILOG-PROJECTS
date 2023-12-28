`timescale 1ns/1ps
module subtractor_8bit(a,b,d,bout);
input [7:0]a,b;
output [7:0]d;
output bout;
wire [7:0]w;
HS h1(a[0],b[0],d[0],w[0]);
FS f1(a[1],b[1],w[0],d[1],w[1]);
FS f2(a[2],b[2],w[1],d[2],w[2]);
FS f3(a[3],b[3],w[2],d[3],w[3]);
FS f4(a[4],b[4],w[3],d[4],w[4]);
FS f5(a[5],b[5],w[4],d[5],w[5]);
FS f6(a[6],b[6],w[5],d[6],w[6]);
FS f7(a[7],b[7],w[6],d[7],w[7]);
assign bout=w[7];
endmodule



