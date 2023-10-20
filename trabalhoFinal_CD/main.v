module main (
input ini,
input up,
input reset,
input set,
input enable,
input clock,
output a,
output b,
output c,
output d,
output e,
output f,
output g
);
wire ea0,ea1,ea2,pe0,pe1,pe2;
wire ck_03hz;

ck_3hz meuEnable(.clock(clock),.set(set),.reset(reset),.enable(enable),.ck_3hz(ck_03hz));

reg_3 meuReg(.pe0(pe0),.pe1(pe1),.pe2(pe2), .clock(clock),.reset(reset),.set(set),.enable(ck_03hz),.ea0(ea0),.ea1(ea1),.ea2(ea2),.ini(ini));

cc_saida meuCC_saida(.ea0(ea0),.ea1(ea1),.ea2(ea2),.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g));

cc_pe meuCC_pe(.up(up),.ea0(ea0),.ea1(ea1),.ea2(ea2),.pe0(pe0),.pe1(pe1),.pe2(pe2));

endmodule

