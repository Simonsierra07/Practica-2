module mux2to1_df_if(iA,iB,iSelect,oSalida);
input iA,iB,iSelect;
output oSalida;
reg oSalida;
always @ (iSelect or iA or iB)
if (iSelect == 1)
oSalida = iA;
else
oSalida = iB;
endmodule