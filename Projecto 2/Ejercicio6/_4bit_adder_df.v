module _4bit_adder_df(iA, iB, iCin, oSUM, oCout);
input [3:0] iA, iB;
input iCin;
output [3:0] oSUM;
output oCout;
assign {oCout , oSUM} = iA + iB + iCin;
endmodule