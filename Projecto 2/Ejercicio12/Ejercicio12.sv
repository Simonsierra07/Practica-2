module Ejercicio12(iGray, oDisplay5, oDisplay6, oLED);
input  [3:0] iGray;
output [6:0] oDisplay5;
output [6:0] oDisplay6;
output [3:0] oLED;

wire [3:0] bcd;
wire valid;

// Conversión Gray -> Binario/BCD (cadena de XOR)
assign bcd[3] = iGray[3];
assign bcd[2] = bcd[3] ^ iGray[2];
assign bcd[1] = bcd[2] ^ iGray[1];
assign bcd[0] = bcd[1] ^ iGray[0];

assign valid = (bcd <= 4'd9);   // válido si el resultado es un dígito 0-9

assign oLED = bcd;              // BCD estándar en los LEDs

assign oDisplay5 = !valid ? 7'b1111111 :
                   (bcd==4'd0)?7'b0000001:
                   (bcd==4'd1)?7'b1001111:
                   (bcd==4'd2)?7'b0010010:
                   (bcd==4'd3)?7'b0000110:
                   (bcd==4'd4)?7'b1001100:
                   (bcd==4'd5)?7'b0100100:
                   (bcd==4'd6)?7'b0100000:
                   (bcd==4'd7)?7'b0001111:
                   (bcd==4'd8)?7'b0000000:
                                7'b0001100; // dígito 9

assign oDisplay6 = valid ? 7'b1111111 : 7'b0110000; // 'E' solo si hay error

endmodule