module comparator_2bit(a,b,eq,gt,lt);

input [1:0] a,b;
output reg eq,gt,lt;
always @*
begin
    if(a==b)
    begin
        eq=1;
        gt=0;
        lt=0;
    end
    else if(a>b)
    begin
        eq=0;
        gt=1;
        lt=0;
    end
    else
    begin
        eq=0;
        gt=0;
        lt=1;
    end
end
endmodule

module testbench_comparator();

reg [1:0] a,b;
wire eq,gt,lt;
comparator_2bit comp(a,b,eq,gt,lt);

initial
begin
a=2'b00; b=2'b00;
#50;
a=2'b00; b=2'b01;
#50;
a=2'b00; b=2'b10;
#50;
a=2'b00; b=2'b11;
#50;
a=2'b01; b=2'b00;
#50;
a=2'b01; b=2'b01;
#50;
a=2'b01; b=2'b10;
#50;
a=2'b01; b=2'b11;
#50;
a=2'b10; b=2'b00;
#50;
a=2'b10; b=2'b01;
#50;
a=2'b10; b=2'b10;
#50;
a=2'b10; b=2'b11;
#50;
a=2'b11; b=2'b00;
#50;
a=2'b11; b=2'b01;
#50;
a=2'b11; b=2'b10;
#50;
a=2'b11; b=2'b11;
#50;

end
endmodule

