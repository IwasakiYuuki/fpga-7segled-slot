module turn_slot(input [3:0] in1, input [3:0] in2, input state, input clk, output reg [7:0] gled, output reg rled);

reg [19:0] buff;

always @(posedge clk)
begin
if (buff == 0) begin
    if (state) begin
		if (in1 == in2) begin
			if (gled == 0) begin
				gled <= 1;
			end else begin
				gled <= (gled << 1);
			end
		end else begin
			rled <= 1;
		end
    end else begin
		gled <= 0;
		rled <= 0;
	 end
end
buff <= #1 buff + 1;
end

endmodule
