module full_adder(a,b,m,out);

input [3:0] a;
input [3:0] b;
input m;
output reg [4:0] out;
always @*
begin
if(m ==0)
out = a+b;
else
out = a-b;
end
endmodule

module testbench_adder();
reg [3:0] x;
reg [3:0] y;
reg m;
wire [4:0] z;

full_adder as(x,y,m,z);
initial
begin
x=4;
y= 3;
m=0;
#50;

x=5;
y= 2;
m=0;
#50;

x=3;
y= 1;
m=1;
#50;

x=6;
y= 3;
m=1;
#50;

end
endmodule

