module cc_pe_ck3hz(
	input ea0,
	input ea1,
	output pe0,
	output pe1
);
wire nea0,nea1;
not(nea0,ea0);
not(nea1,ea1);

buf(pe1,ea0);

and(pe0,nea0,nea1);



endmodule