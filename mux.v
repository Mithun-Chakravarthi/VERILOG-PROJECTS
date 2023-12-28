`timescale 1ns/1ps
module mux(input i0,i1,s,output out);
wire w1,w2;
and(w1,~s,i0);
and(w2,s,i1);
or(out,w1,w2);
endmodule
