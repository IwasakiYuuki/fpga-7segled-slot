module counter(input SW, input CLK, output reg [3:0] COUNT);

always @(posedge CLK)
 begin
	if (SW == 1'b0)
      COUNT <= COUNT + 4'h1;
 end
endmodule