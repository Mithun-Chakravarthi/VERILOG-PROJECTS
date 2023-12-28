`timescale 1ns/1ps
module mux24(a,b,s,out);
input [22:0]a,b;
input s;
output [23:0]out;
genvar i;
generate
begin
for(i=0;i<23;i=i+1)
mux m(a[i],b[i],s,out[i]);
end
endgenerate
assign out[23]=1'b1;
endmodule
