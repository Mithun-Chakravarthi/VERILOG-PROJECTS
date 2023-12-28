`timescale 1ns / 1ps
module ControlledIncrementor(
    input A,
    input [7:0] Z,
    output [7:0] Out
    );
	 
wire [7:0]w;
wire [7:0]Cin;

assign w =(A==1'b1)?1:0;

HA H(Z[0],w[0],Out[0],Cin[0]);

genvar j;
generate 
 begin
  for(j=1;j<8;j=j+1)
   begin
   FA F1(Z[j],w[j],Cin[j-1],Out[j],Cin[j]);
   end
 end
endgenerate

endmodule 
