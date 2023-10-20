module cc_saida (
input  ea0,
input  ea1,
input  ea2,
output a,
output b, 
output c,
output d,
output e,
output f,
output g);

wire nea0,nea1,nea2;
not(nea0,ea0);
not(nea1,ea1);
not(nea2,ea2);

wire g_0,g_1;
buf(g_0,ea2);
buf(g_1,ea0);
or(g,g_0,g_1);

wire f_0,f_1;
and(f_0,ea2,ea1);
and(f_1,ea2,ea0);
or(f,f_0,f_1);

wire e_0;
and(e_0,nea2,ea0);
buf(e,e_0);

wire d_0,d_1;
and(d_0,nea1,nea0);
and(d_1,ea1,ea0);
or(d,d_0,d_1);

wire c_0,c_1;
buf(c_0,ea2);
buf(c_1,nea0);
or(c,c_0,c_1);

or(b,nea2,nea1,nea0);

wire a_0,a_1;
and(a_0,nea1,nea0);
and(a_1,ea1,ea0);
or(a,a_0,a_1);
endmodule

