module led_7seg_decoder_1(input [3:0] bcd, output reg [6:0] seven_seg);

always @(*)
case(bcd)
	4'b0000:seven_seg = 7'b1000000;
	4'b0001:seven_seg = 7'b1111001;
	4'b0010:seven_seg = 7'b0100100;
	4'b0011:seven_seg = 7'b0110000;
	4'b0100:seven_seg = 7'b0011001;
	4'b0101:seven_seg = 7'b0010010;
	4'b0110:seven_seg = 7'b0000010;
	4'b0111:seven_seg = 7'b1011000;
	4'b1000:seven_seg = 7'b0000000;
	4'b1001:seven_seg = 7'b0010000;
endcase
endmodule