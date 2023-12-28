`timescale 1ns/1ps
module adder24(a,b,sum,cout);
input [23:0]a,b;
output [23:0]sum;
output cout;
wire [23:0]cin;
HA h1(a[0],b[0],sum[0],cin[0]);
genvar j;
generate
begin
for(j=1;j<=23;j=j+1)
begin
FA f1(a[j],b[j],cin[j-1],sum[j],cin[j]);
end
end
assign cout=cin[23];
endgenerate
endmodule
