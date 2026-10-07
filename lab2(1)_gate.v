module half_adder(a,b,z,s,c,S,c2,C);

input a,b,z;
output s,c,S,c2,C;

xor sum1(s,a,b); 
and carry1(c,a,b);

xor sum2(S,s,z);
and carry(c2,s,z);
or carry2(C,c,c2);
endmodule

module testbench();
reg x,y,z;
wire A,B,C,D,E;
half_adder HA(x,y,z,A,B,C,D,E);

initial
begin
x=0; y=0; z=0;
#50 x=0; y=0; z=1;
#50 x=0; y=1; z=0;
#50 x=0; y=1; z=1;
#50 x=1; y=0; z=0;
#50 x=1; y=0; z=1;
#50 x=1; y=1; z=0;
#50 x=1; y=1; z=1;
#50;
end 
endmodule

