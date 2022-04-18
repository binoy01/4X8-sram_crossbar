`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:22:00 04/17/2022 
// Design Name: 
// Module Name:    mem_ram 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mem_ram (input clk, wren, 
                //input [1:0] address,
                input [3:0] d11,input [3:0] d12,input [3:0] d13,input [3:0] d14,input [3:0] d15,input [3:0] d16,input [3:0] d17,input [3:0]d18,
					 input [3:0] d21,input [3:0] d22,input [3:0] d23,input [3:0] d24,input [3:0] d25,input [3:0] d26,input [3:0] d27,input [3:0]d28,
					 input [3:0] d31,input [3:0] d32,input [3:0] d33,input [3:0] d34,input [3:0] d35,input [3:0] d36,input [3:0] d37,input [3:0]d38,
					 input [3:0] d41,input [3:0] d42,input [3:0] d43,input [3:0] d44,input [3:0] d45,input [3:0] d46,input [3:0] d47,input [3:0]d48,
					 
					 
					 input [3:0] r1,input [3:0] r2,
					 input [3:0] r3,input [3:0] r4,
					 //output [31:0] q,
					 output [11:0] w_sum11,
					 output [11:0] w_sum12,
					 output [11:0] w_sum13,
					 output [11:0] w_sum14,
					 output [11:0] w_sum15,
					 output [11:0] w_sum16,
					 output [11:0] w_sum17,
					 output [11:0] w_sum18
					 );

  reg [31:0] mem [3:0]; // a 32 bit wide 4 word RAM block.
  
  wire [8:0] p11, p21,p31,p41;
  wire [8:0] p12, p22,p32,p42;
  wire [8:0] p13, p23,p33,p43;
  wire [8:0] p14, p24,p34,p44;
  wire [8:0] p15, p25,p35,p45;
  wire [8:0] p16, p26,p36,p46;
  wire [8:0] p17, p27,p37,p47;
  wire [8:0] p18, p28,p38,p48;
  
  
  
  
wire [9:0] s11,s12,s13,s14,s15,s16,s17,s18;
wire [10:0] s21,s22,s23,s24,s25,s26,s27,s28;
wire [11:0] s31,s32,s33,s34,s35,s36,s37,s38;

  always @(posedge clk) 
      begin
            if (wren)
                mem[0][31-:4]<=d11;
					 mem[0][27-:4] <=d12;
					 mem[0][23-:4]<=d13;
					 mem[0][19-:4]<=d14;
					 mem[0][15-:4]<=d15;
					 mem[0][11-:4]<=d16;
					 mem[0][7-:4]<=d17;
					 mem[0][3-:4]<=d18;
					 
					 mem[1][31-:4]<=d21;
					 mem[1][27-:4] <=d22;
					 mem[1][23-:4]<=d23;
					 mem[1][19-:4]<=d24;
					 mem[1][15-:4]<=d25;
					 mem[1][11-:4]<=d26;
					 mem[1][7-:4]<=d27;
					 mem[1][3-:4]<=d28;
					 
					 mem[2][31-:4]<=d31;
					 mem[2][27-:4] <=d32;
					 mem[2][23-:4]<=d33;
					 mem[2][19-:4]<=d34;
					 mem[2][15-:4]<=d35;
					 mem[2][11-:4]<=d36;
					 mem[2][7-:4]<=d37;
					 mem[2][3-:4]<=d38;
					 
					 
					 mem[3][31-:4]<=d41;
					 mem[3][27-:4] <=d42;
					 mem[3][23-:4]<=d43;
					 mem[3][19-:4]<=d44;
					 mem[3][15-:4]<=d45;
					 mem[3][11-:4]<=d46;
					 mem[3][7-:4]<=d47;
					 mem[3][3-:4]<=d48;
					 
					 
					 
		end		 
					 
					 

   //assign q = mem[address];
  
   
  

	
  
  
  //wire s11, s21,s31;
  //wire s12, s22,s32;
  //wire s13, s23,s33;
  //wire s14, s24,s34;
  //wire s15, s25,s35;
  //wire s16, s26,s36;
  //wire s17, s27,s37;
  //wire s18, s28,s38;
  
  
  




  
 
 

 //weighted sum for first column
	 
generate
   
   mult m11(.a(r1),
				.b(mem[0][31-:4]),
				.c(p11) 
				);
				
	mult m21(
	         .a(r2),
				.b(mem[1][31-:4]),
				.c(p21)
	 
	         );		

   mult m31(
	         .a(r3),
				.b(mem[2][31-:4]),
				.c(p31)
	 
	         );		

   mult m41(
	         .a(r4),
				.b(mem[3][31-:4]), 
				.c(p41)
	 
	         );	
  



  ad add11 ( 
            .a1(p11),
				.b1(p21),
				.c1(s11)


           );  
			  
  ad2 add21 (
            .b2(s11),
				.a2(p31),
				.c2(s21)
  
          );
			 
  ad3 add31 (
             .b3(s21),
				 .a3(p41),
				 .c3(s31)
             
				 );
	 

//weighted sum for second column


    mult m12(.a(r1),
				.b(mem[0][27-:4]),
				.c(p12)
				);
				
	mult m22(
	         .a(r2),
				.b(mem[1][27-:4]),
				.c(p22)
	 
	         );		

   mult m32(
	         .a(r3),
				.b(mem[2][27-:4]),
				.c(p32)
	 
	         );		

   mult m42(
	         .a(r4),
				.b(mem[3][27-:4]), 
				.c(p42)
	 
	         );	


  ad add12 ( 
            .a1(p12),
				.b1(p22),
				.c1(s12)


           );  
			  
  ad2 add22 (
            .b2(s12),
				.a2(p32),
				.c2(s22)
  
          );
			 
  ad3 add32 (
             .b3(s22),
				 .a3(p42),
				 .c3(s32)
             
				 );
	
	 
//weighted sum for third column


   mult m13(.a(r1),
				.b(mem[0][23-:4]),
				.c(p13)
				);
				
	mult m23(
	         .a(r2),
				.b(mem[1][23-:4]),
				.c(p23)
	 
	         );		

   mult m33(
	         .a(r3),
				.b(mem[2][23-:4]),
				.c(p33)
	 
	         );		

   mult m43(
	         .a(r4),
				.b(mem[3][23-:4]), 
				.c(p43)
	 
	         );	
 

  ad add13 ( 
            .a1(p13),
				.b1(p23),
				.c1(s13)


           );  
			  
  ad2 add23 (
            .b2(s13),
				.a2(p33),
				.c2(s23)
  
          );
			 
  ad3 add33 (
             .b3(s23),
				 .a3(p43),
				 .c3(s33)
             
				 );

		 
				 
 //weighted sum for fourth column
 
 
  mult m14(.a(r1),
				.b(mem[0][19-:4]),
				.c(p14)
				);
				
	mult m24(
	         .a(r2),
				.b(mem[1][19-:4]),
				.c(p24)
	 
	         );		

   mult m34(
	         .a(r3),
				.b(mem[2][19-:4]),
				.c(p34)
	 
	         );		

   mult m44(
	         .a(r4),
				.b(mem[3][19-:4]), 
				.c(p44)
	 
	         );	


  ad add14 ( 
            .a1(p14),
				.b1(p24),
				.c1(s14)


           );  
			  
  ad2 add24 (
            .b2(s14),
				.a2(p34),
				.c2(s24)
  
          );
			 
  ad3 add34 (
             .b3(s24),
				 .a3(p44),
				 .c3(s34)
             
				 );
	

 
//weighted sum for fifth column



  mult m15(.a(r1),
				.b(mem[0][15-:4]),
				.c(p15)
				);
				
	mult m25(
	         .a(r2),
				.b(mem[1][15-:4]),
				.c(p25)
	 
	         );		

   mult m35(
	         .a(r3),
				.b(mem[2][15-:4]),
				.c(p35)
	 
	         );		

   mult m45(
	         .a(r4),
				.b(mem[3][15-:4]), 
				.c(p45)
	 
	         );	
 
  ad add15 ( 
            .a1(p15),
				.b1(p25),
				.c1(s15)


           );  
			  
  ad2 add25 (
            .b2(s15),
				.a2(p35),
				.c2(s25)
  
          );
			 
  ad3 add35 (
             .b3(s25),
				 .a3(p45),
				 .c3(s35)
             
				 );



// weighted sum for sixth column



   mult m16(.a(r1),
				.b(mem[0][11-:4]),
				.c(p16)
				);
				
	mult m26(
	         .a(r2),
				.b(mem[1][11-:4]),
				.c(p26)
	 
	         );		

   mult m36(
	         .a(r3),
				.b(mem[2][11-:4]),
				.c(p36)
	 
	         );		

   mult m46(
	         .a(r4),
				.b(mem[3][11-:4]), 
				.c(p46)
	 
	         );	


  ad add16 ( 
            .a1(p16),
				.b1(p26),
				.c1(s16)


           );  
			  
  ad2 add26 (
            .b2(s16),
				.a2(p36),
				.c2(s26)
  
          );
			 
  ad3 add36 (
             .b3(s26),
				 .a3(p46),
				 .c3(s36)
             
				 );


//weighted sum for seventh column


   mult m17(.a(r1),
				.b(mem[0][7-:4]),
				.c(p17)
				);
				
	mult m27(
	         .a(r2),
				.b(mem[1][7-:4]),
				.c(p27)
	 
	         );		

   mult m37(
	         .a(r3),
				.b(mem[2][7-:4]),
				.c(p37)
	 
	         );		

   mult m47(
	         .a(r4),
				.b(mem[3][7-:4]), 
				.c(p47)
	 
	         );	


  ad add17 ( 
            .a1(p17),
				.b1(p27),
				.c1(s17)


           );  
			  
  ad2 add27 (
            .b2(s17),
				.a2(p37),
				.c2(s27)
  
          );
			 
  ad3 add37 (
             .b3(s27),
				 .a3(p47),
				 .c3(s37)
             
				 );

//weighted sum for eighth column


  mult m18(.a(r1),
				.b(mem[0][3-:4]),
				.c(p18)
				);
				
	mult m28(
	         .a(r2),
				.b(mem[1][3-:4]),
				.c(p28)
	 
	         );		

   mult m38(
	         .a(r3),
				.b(mem[2][3-:4]),
				.c(p38)
	 
	         );		

   mult m48(
	         .a(r4),
				.b(mem[3][3-:4]), 
				.c(p48)
	 
	         );	

  ad add18 ( 
            .a1(p18),
				.b1(p28),
				.c1(s18)


           );  
			  
  ad2 add28 (
            .b2(s18),
				.a2(p38),
				.c2(s28)
  
          );
			 
  ad3 add38 (
             .b3(s28),
				 .a3(p48),
				 .c3(s38)
             
				 );


assign w_sum11 =s31;
assign w_sum12 =s32;
assign w_sum13 =s33;
assign w_sum14 =s34;
assign w_sum15 =s35;
assign w_sum16 =s36;
assign w_sum17 =s37;
assign w_sum18 =s38;


endgenerate


endmodule
