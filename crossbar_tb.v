`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:52:50 04/18/2022
// Design Name:   mem_ram
// Module Name:   /home/ise/multi/crossbar_tb.v
// Project Name:  multi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mem_ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module crossbar_tb;

	// Inputs
	reg clk;
	reg wren;
	reg [3:0] d11;
	reg [3:0] d12;
	reg [3:0] d13;
	reg [3:0] d14;
	reg [3:0] d15;
	reg [3:0] d16;
	reg [3:0] d17;
	reg [3:0] d18;
	reg [3:0] d21;
	reg [3:0] d22;
	reg [3:0] d23;
	reg [3:0] d24;
	reg [3:0] d25;
	reg [3:0] d26;
	reg [3:0] d27;
	reg [3:0] d28;
	reg [3:0] d31;
	reg [3:0] d32;
	reg [3:0] d33;
	reg [3:0] d34;
	reg [3:0] d35;
	reg [3:0] d36;
	reg [3:0] d37;
	reg [3:0] d38;
	reg [3:0] d41;
	reg [3:0] d42;
	reg [3:0] d43;
	reg [3:0] d44;
	reg [3:0] d45;
	reg [3:0] d46;
	reg [3:0] d47;
	reg [3:0] d48;
	reg [3:0] r1;
	reg [3:0] r2;
	reg [3:0] r3;
	reg [3:0] r4;

	// Outputs
	wire [11:0] w_sum11;
	wire [11:0] w_sum12;
	wire [11:0] w_sum13;
	wire [11:0] w_sum14;
	wire [11:0] w_sum15;
	wire [11:0] w_sum16;
	wire [11:0] w_sum17;
	wire [11:0] w_sum18;

	// Instantiate the Unit Under Test (UUT)
	mem_ram uut (
		.clk(clk), 
		.wren(wren), 
		.d11(d11), 
		.d12(d12), 
		.d13(d13), 
		.d14(d14), 
		.d15(d15), 
		.d16(d16), 
		.d17(d17), 
		.d18(d18), 
		.d21(d21), 
		.d22(d22), 
		.d23(d23), 
		.d24(d24), 
		.d25(d25), 
		.d26(d26), 
		.d27(d27), 
		.d28(d28), 
		.d31(d31), 
		.d32(d32), 
		.d33(d33), 
		.d34(d34), 
		.d35(d35), 
		.d36(d36), 
		.d37(d37), 
		.d38(d38), 
		.d41(d41), 
		.d42(d42), 
		.d43(d43), 
		.d44(d44), 
		.d45(d45), 
		.d46(d46), 
		.d47(d47), 
		.d48(d48), 
		.r1(r1), 
		.r2(r2), 
		.r3(r3), 
		.r4(r4), 
		.w_sum11(w_sum11), 
		.w_sum12(w_sum12), 
		.w_sum13(w_sum13), 
		.w_sum14(w_sum14), 
		.w_sum15(w_sum15), 
		.w_sum16(w_sum16), 
		.w_sum17(w_sum17), 
		.w_sum18(w_sum18)
	);

initial 
     clk = 0;
always 
     #5 clk = ~clk;
 



	initial begin
		// Initialize Inputs
		
		wren = 1;
		d11 = 1;
		d12 = 2;
		d13 = 3;
		d14 = 4;
		d15 = 5;
		d16 = 6;
		d17 = 7;
		d18 = 1;
		d21 = 2;
		d22 = 3;
		d23 = 4;
		d24 = 5;
		d25 = 1;
		d26 = 1;
		d27 = 1;
		d28 = 1;
		d31 = 1;
		d32 = 2;
		d33 = 2;
		d34 = 2;
		d35 = 2;
		d36 = 2;
		d37 = 1;
		d38 = 1;
		d41 = 2;
		d42 = 3;
		d43 = 1;
		d44 = 5;
		d45 = 5;
		d46 = 5;
		d47 = 2;
		d48 = 1;
		r1 = 5;
		r2 = 8;
		r3 = 2;
		r4 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

