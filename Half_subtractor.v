`timescale 1ns/1ps
module HS(a,b,d,bout);
input a,b;
output d,bout;
assign d=a^b;
assign bout=~a&b;
endmodule 
