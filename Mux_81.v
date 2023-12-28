`timescale 1ns/1ps
module mux8(a,b,c,out);
input [7:0]a,b;
input c;
output [7:0]out;
genvar j;
generate
begin
for(j=0;j<8;j=j+1)
mux m(a[j],b[j],c,out[j]);
end
endgenerate
endmodule
