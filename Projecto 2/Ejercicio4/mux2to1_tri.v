module mux2to1_tri(iA, iB, iSelector, oSalida);
input iA, iB, iSelector;
output oSalida;
tri oSalida;
bufif1 (oSalida, iA, iSelector);
bufif0 (oSalida, iB, iSelector);
endmodule