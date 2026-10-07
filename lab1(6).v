module one_complement(a,b,c,d,e,f,g,h);
input a,b,c,d;
output e,f,g,h;
assign e=~a;
assign f=~b;
assign g=~c;
assign h=~d;
endmodule

module testbench();
reg l,m,n,o;
wire p,q,r,s;
one_complement uu(l,m,n,o,p,q,r,s);
initial 
begin
l=0; m=0; n=0; o=0;
#50 l=0; m=0; n=0; o=1;
#50 l=0; m=0; n=1; o=0;
#50 l=0; m=0; n=1; o=1;
#50 l=0; m=1; n=0; o=0;
#50 l=0; m=1; n=0; o=1;
#50 l=0; m=1; n=1; o=0;
#50 l=0; m=1; n=1; o=1;
#50 l=1; m=0; n=0; o=0;
#50 l=1; m=0; n=0; o=1;
#50 l=1; m=0; n=1; o=0;
#50 l=1; m=0; n=1; o=1;
#50 l=1; m=1; n=0; o=0;
#50 l=1; m=1; n=0; o=1;
#50 l=1; m=1; n=1; o=0;
#50 l=1; m=1; n=1; o=1;
#50;
end
endmodule

