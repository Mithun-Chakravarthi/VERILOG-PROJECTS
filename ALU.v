module alu(a,b,sel,out,cout);
input [7:0]a,b;
input [3:0]sel;
output reg [7:0]out;
output reg cout;
always@(sel,a,b)
begin
case(sel)
0: {cout,out}=a+b;
1:out=a-b;
2:out= a*b;
3:out= a/b;
4:out= a<<1 ;
5:out=a>>1;
6:out={a[6:0],a[7]};
7:out={a[0],a[7:1]};
8:out= a&b ;
9:out= a^b ;
10:out=    ~(a^b)    ;
11:out=      a&b     ;
12:out=      ~(a&b)     ;
13:out=       a|b    ;
14:out=        ~(a|b)   ;
15:out=(a==b)?1:0;
default:out=a+b;
endcase
end
endmodule

 `timescale 1ns / 1ps  

module tb_alu;
//Inputs
 reg[7:0] a,b;
 reg[3:0] sel;

//Outputs
 wire[7:0] out;
 wire cout;
 // Verilog code for ALU
 integer i;
 alu test_unit(a,b,sel,out,cout
        );
    initial begin
    // hold reset state for 100 ns.
      a = 8'h0A;
      b = 4'h02;
      sel = 4'h0;
      
      for (i=0;i<=15;i=i+1)
      begin
       sel = sel + 8'h01;
       #10;
      end
      
      a = 8'hF6;
      b = 8'h0A;
      
    end
endmodule