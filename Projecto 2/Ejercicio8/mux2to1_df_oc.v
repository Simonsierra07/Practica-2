module mux2to1_df_oc(iA, iB, iSelect, oSalida);
input iA,iB,iSelect;
output oSalida;
assign oSalida = iSelect ? iA : iB;
endmodule