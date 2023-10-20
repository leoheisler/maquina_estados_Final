module ck_3hz(
	input clock,
	input set,
	input reset,
	input enable,
	output ck_3hz
);
wire ea0,ea1,pe0,pe1;

reg_2 meuReg2(.set(set),.reset(reset),.ea0(ea0),.ea1(ea1),.pe0(pe0),.pe1(pe1),.clock(clock),.enable(enable));

cc_pe_ck3hz meuCCPE(.ea0(ea0),.ea1(ea1),.pe0(pe0),.pe1(pe1));

cc_saida_ck3hz meuCCSAIDA(.ea0(ea0),.ea1(ea1),.out(ck_3hz));
endmodule