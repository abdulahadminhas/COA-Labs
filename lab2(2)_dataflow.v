module decoder(a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);

input a,b,c;
output d0,d1,d2,d3,d4,d5,d6,d7;

assign d0 = ~a&~b&~c;
assign d1 = ~a&~b&c;
assign d2 = ~a&b&~c;
assign d3 = ~a&b&c;
assign d4 = a&~b&~c;
assign d5 = a&~b&c;
assign d6 = a&b&~c;
assign d7 = a&b&c;

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

