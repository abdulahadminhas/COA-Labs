module MUX_2to1(a,b,m,out);

input a,b,m;
output reg out;
always @*
begin
if(m ==0)
out = a;
else
out = b;
end
endmodule

module testbench_MUX();
reg x,y,m;
wire o;

MUX_2to1 mux(x,y,m,o);

initial
begin
x=0;y=0;m=0;
#50;
x=0;y=1;m=0;
#50;
x=1;y=0;m=1;
#50;
x=1;y=1;m=1;
#50;

end
endmodule

