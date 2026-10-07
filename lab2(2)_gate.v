
module decoder(a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);

input a,b,c;
output d0,d1,d2,d3,d4,d5,d6,d7;

wire A,B,C;
not not1(A,a);
not not2(B,b);
not not3(C,c);

wire D0,D1,D2,D3,D4,D5,D6,D7;
and dd0(D0,A,B);
and ddd0(d0,D0,C);
and dd1(D1,A,B);
and ddd1(d1,D1,c);
and dd2(D2,A,b);
and ddd2(d2,D2,C);
and dd3(D3,A,b);
and ddd3(d3,D3,c);
and dd4(D4,a,B);
and ddd4(d4,D4,C);
and dd5(D5,a,B);
and ddd5(d5,D5,c);
and dd6(D6,a,b);
and ddd6(d6,D6,C);
and dd7(D7,a,b);
and ddd7(d7,D7,c);

endmodule

module testbench_decode();

reg x,y,z;
wire a,b,c,d,e,f,g,h;

decoder dec(x,y,z,a,b,c,d,e,f,g,h);

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
endmodule;
