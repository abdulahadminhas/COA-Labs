
module Logic_circuit(a,b,c);
input a,b;
output c;
wire A1;
not  a1(A1,a);
wire B1;
not b1(B1,b);
wire and1;
and c1(and1,A1,b);
wire and2;
and d1(and2,B1,a);
or e1(c,and1,and2);

endmodule;

module testbench();
reg x;
reg y;
wire z;

Logic_circuit uut(x,y,z);
initial
begin
x=0;y=0;
#50 x=0;y=1;
#50 x=1;y=0;
#50 x=1;y=1;
end
endmodule;
