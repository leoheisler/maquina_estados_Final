module reg_3 (
input	pe0,
input   pe1,
input   pe2,
input	clock,
input	reset,
input	set,
input   enable,
input	ini,
output  ea0,
output	ea1,
output	ea2);
wire nini;
not(nini,ini);


    DFFRSE meu_ff_0		(	.q(ea0), 
							.d(pe0), 
							.clk(clock), 
							.reset(nini),
							.set(set), 
							.enable(enable));
    
    DFFRSE meu_ff_1		(	.q(ea1), 
							.d(pe1), 
							.clk(clock), 
							.reset(nini),
							.set(set), 
							.enable(enable));

    DFFRSE meu_ff_2		(	.q(ea2), 
							.d(pe2), 
							.clk(clock), 
							.reset(reset),
							.set(nini), 
							.enable(enable));

endmodule

