module half_adder(S, C, x, y);
input x, y;
output S, C;
xor (S, x, y);
and (C, x, y);
endmodule

module full_adder(S, C, x, y, z);
input x, y, z;
output S, C;
wire S1, D1, D2;
half_adder HA1 (S1, D1, x, y),
           HA2 (S, D2, S1, z);
or (C, D2, D1);
endmodule

module _4bit_adder(oS, oC4, iA, iB, iC0);
input [3:0] iA, iB;
input iC0;
output [3:0] oS;
output oC4;
wire C1, C2, C3;
full_adder FA0 (oS[0],C1,iA[0],iB[0],iC0),
           FA1 (oS[1],C2,iA[1],iB[1],C1),
           FA2 (oS[2],C3,iA[2],iB[2],C2),
           FA3 (oS[3],oC4,iA[3],iB[3],C3);
endmodule