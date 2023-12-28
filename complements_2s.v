
`timescale 1ns / 1ps
module Complement2s(
    input [7:0] A,
    output [7:0] Out
    );
	 
wire [7:0]w;
genvar j;

 generate
  begin
   for(j=0;j<8;j=j+1)
    begin
     mux M(1'b1,1'b0,A[j],w[j]);
    end
  end
endgenerate

wire [7:0]c;
halfadder H1(w[0],1'b1,Out[0],c[0]);

genvar i;

	generate
		begin
			for(i=1;i<8;i=i+1)
			  begin
			    fulladder F1(w[i],1'b0,c[i-1],Out[i],c[i]);
			  end
		end
	endgenerate
	
endmodule

module test();
 reg [7:0]A;
 wire [7:0]Out;
 Complement2s c1(A,Out);

initial
begin
A=8'b10101010; 
 #50 $stop;
end
endmodule