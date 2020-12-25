module simple_counter(input clock, input stop, input reset, output reg [31:0] counter_output, output reg state);

always @(posedge clock, negedge reset)
 begin
	if (~reset) begin
		counter_output <= 0;
   end else if (state==0) begin
		if (counter_output[23+:4] == 4'b1010) begin
			counter_output <= 0;
		end else begin
			counter_output <= #1 counter_output + 1;
		end
	end
 end
 
always @(negedge stop, negedge reset)
 begin
  if (~reset) begin
	state <= 0;
  end else if (~stop) begin
	state <= 1;
  end
 end
endmodule
