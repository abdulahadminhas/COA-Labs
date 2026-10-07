module LogicGates(a,b,and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out);
input a;
input b;
output and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out;
assign and_out = a&b;
assign or_out = a|b;
assign not_out = ~a;
assign nand_out = ~(a&b);
assign nor_out = ~(a|b);
assign xor_out = a^b;
assign xnor_out = ~(a^b);
endmodule
module testbench();
reg  x;
reg y;
wire and_outt,or_outt,not_outt,nand_outt,nor_outt,xor_outt,xnor_outt;
LogicGates uut(x,y,and_outt,or_outt,not_outt,nand_outt,nor_outt,xor_outt,xnor_outt);
initial
begin
x=0; y=0;
#50 x=0;y=1;
#50 x=1;y=0;
#50 x=1;y=1;
end
endmodule

