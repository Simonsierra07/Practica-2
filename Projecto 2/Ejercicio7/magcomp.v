module magcomp(iA, iB, oAmenorB, oAmayorB, oAigualB);
input [3:0] iA, iB;
output oAmenorB, oAmayorB, oAigualB;
assign oAmenorB = (iA < iB),
       oAmayorB = (iA > iB),
       oAigualB = (iA == iB);
endmodule