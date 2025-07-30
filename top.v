module top (
    input i_clk,
    output o_LED,
	output o_LED_2
);

	wire clk_100mhz;
	wire pll_lock;
	
	pll_50_in u_pll (
		.CLK(i_clk),
		.CLKOP(clk_100mhz),
		.LOCK(pll_lock)
	);
	
	assign o_LED_2 = ~pll_lock;
	
    reg [24:0] r_counter = 0;

    always @(posedge clk_100mhz) begin
		if (pll_lock) begin
			r_counter <= r_counter + 1;
		end
	end

    assign o_LED = r_counter[24];  // Taps MSB to divide clock by ~2^25
endmodule
