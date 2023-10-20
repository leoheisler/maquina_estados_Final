module reg_2 (
input	pe0,
input   pe1,
input	clock,
input	reset,
input	set,
input   enable,
output  ea0,
output	ea1);

wire neble,true;
not(neble,enable);
or(true,neble,enable);

    DFFRSE meu_ff_0		(	.q(ea0), 
							.d(pe0), 
							.clk(clock), 
							.reset(reset),
							.set(set), 
							.enable(true));
    
    DFFRSE meu_ff_1		(	.q(ea1), 
							.d(pe1), 
							.clk(clock), 
							.reset(reset),
							.set(set), 
							.enable(true));


endmodule