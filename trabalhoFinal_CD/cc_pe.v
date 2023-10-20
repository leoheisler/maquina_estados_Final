module cc_pe (
input	ea0,
input	ea1,
input	ea2,
input   up,
output  pe0,
output	pe1,
output  pe2);

wire nea0, nea1, nea2,nup;
not(nea0,ea0);
not(nea1,ea1);
not(nea2,ea2);
not(nup,up);

wire pe2_0,pe2_1,pe2_2,pe2_3;
and(pe2_0, up,nea0);
and(pe2_1,nup,ea1,ea0);
and(pe2_2,ea2,nea0);   
and(pe2_3,up,nea1);
or(pe2,pe2_0,pe2_1,pe2_2,pe2_3);

wire pe1_0,pe1_1,pe1_2;
and(pe1_0,up,ea0);
buf(pe1_1,nea1);
and(pe1_2,nup,nea2);
or(pe1,pe1_0,pe1_1,pe1_2);

wire pe0_0, pe0_1, pe0_2,pe0_3,pe0_4,pe0_5;
and(pe0_0,nea2,nea0);
and(pe0_1,up,ea2,ea1,ea0);
and(pe0_2,nup,ea1,nea0);
and(pe0_3,up,nea1,nea0);
and(pe0_4,nup,nea2);
or(pe0_5, pe0_0,pe0_1,pe0_2);
or(pe0,pe0_3,pe0_4,pe0_5);
endmodule

