// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Tue Jul 29 19:10:07 2025
//
// Verilog Description of module top
//

module top (i_clk, o_LED, o_LED_2) /* synthesis syn_module_defined=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(1[8:11])
    input i_clk;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(2[11:16])
    output o_LED;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(3[12:17])
    output o_LED_2;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(4[9:16])
    
    wire i_clk_c /* synthesis is_clock=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(2[11:16])
    wire clk_100mhz /* synthesis SET_AS_NETWORK=clk_100mhz, is_clock=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(7[7:17])
    
    wire GND_net, VCC_net, o_LED_c_24, o_LED_2_c, pll_lock, n25, 
        n24, n23, n22, n21, n20, n19, n18, n17, n16, n15, 
        n14, n13, n12, n11, n10, n9, n8, n7, n6, n5, n4, 
        n2, n3, n106, n107, n108, n109, n110, n111, n112, 
        n113, n114, n115, n116, n117, n118, n119, n120, n121, 
        n122, n123, n124, n125, n126, n127, n128, n129, n130, 
        n251, n250, n249, n248, n247, n246, n245, n244, n243, 
        n242, n241, n240;
    
    VHI i2 (.Z(VCC_net));
    pll_50_in u_pll (.i_clk_c(i_clk_c), .clk_100mhz(clk_100mhz), .pll_lock(pll_lock), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(10[12] 14[3])
    IB i_clk_pad (.I(i_clk), .O(i_clk_c));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(2[11:16])
    OB o_LED_2_pad (.I(o_LED_2_c), .O(o_LED_2));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(4[9:16])
    OB o_LED_pad (.I(o_LED_c_24), .O(o_LED));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(3[12:17])
    ORCALUT4 pll_lock_I_0_1_lut (.A(pll_lock), .Z(o_LED_2_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(16[19:28])
    defparam pll_lock_I_0_1_lut.init = 16'h5555;
    FD1P3AX r_counter_16__i24 (.D(n106), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(o_LED_c_24)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i24.GSR = "ENABLED";
    FD1P3AX r_counter_16__i0 (.D(n130), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i0.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    FD1P3AX r_counter_16__i23 (.D(n107), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n2)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i23.GSR = "ENABLED";
    FD1P3AX r_counter_16__i22 (.D(n108), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n3)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i22.GSR = "ENABLED";
    FD1P3AX r_counter_16__i21 (.D(n109), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n4)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i21.GSR = "ENABLED";
    FD1P3AX r_counter_16__i20 (.D(n110), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i20.GSR = "ENABLED";
    FD1P3AX r_counter_16__i19 (.D(n111), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n6)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i19.GSR = "ENABLED";
    FD1P3AX r_counter_16__i18 (.D(n112), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i18.GSR = "ENABLED";
    FD1P3AX r_counter_16__i17 (.D(n113), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n8)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i17.GSR = "ENABLED";
    FD1P3AX r_counter_16__i16 (.D(n114), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i16.GSR = "ENABLED";
    FD1P3AX r_counter_16__i15 (.D(n115), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n10)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i15.GSR = "ENABLED";
    FD1P3AX r_counter_16__i14 (.D(n116), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i14.GSR = "ENABLED";
    FD1P3AX r_counter_16__i13 (.D(n117), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i13.GSR = "ENABLED";
    FD1P3AX r_counter_16__i12 (.D(n118), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i12.GSR = "ENABLED";
    FD1P3AX r_counter_16__i11 (.D(n119), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i11.GSR = "ENABLED";
    FD1P3AX r_counter_16__i10 (.D(n120), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i10.GSR = "ENABLED";
    FD1P3AX r_counter_16__i9 (.D(n121), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i9.GSR = "ENABLED";
    FD1P3AX r_counter_16__i8 (.D(n122), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i8.GSR = "ENABLED";
    FD1P3AX r_counter_16__i7 (.D(n123), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i7.GSR = "ENABLED";
    FD1P3AX r_counter_16__i6 (.D(n124), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i6.GSR = "ENABLED";
    FD1P3AX r_counter_16__i5 (.D(n125), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i5.GSR = "ENABLED";
    FD1P3AX r_counter_16__i4 (.D(n126), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i4.GSR = "ENABLED";
    FD1P3AX r_counter_16__i3 (.D(n127), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i3.GSR = "ENABLED";
    FD1P3AX r_counter_16__i2 (.D(n128), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i2.GSR = "ENABLED";
    FD1P3AX r_counter_16__i1 (.D(n129), .SP(pll_lock), .CK(clk_100mhz), 
            .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16__i1.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    CCU2B r_counter_16_add_4_25 (.A0(n2), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(o_LED_c_24), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n251), .S0(n107), .S1(n106));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_25.INIT0 = 16'haaa0;
    defparam r_counter_16_add_4_25.INIT1 = 16'haaa0;
    defparam r_counter_16_add_4_25.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_25.INJECT1_1 = "NO";
    CCU2B r_counter_16_add_4_23 (.A0(n4), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n3), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n250), .COUT(n251), .S0(n109), .S1(n108));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_23.INIT0 = 16'haaa0;
    defparam r_counter_16_add_4_23.INIT1 = 16'haaa0;
    defparam r_counter_16_add_4_23.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_23.INJECT1_1 = "NO";
    CCU2B r_counter_16_add_4_21 (.A0(n6), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n5), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n249), .COUT(n250), .S0(n111), .S1(n110));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_21.INIT0 = 16'haaa0;
    defparam r_counter_16_add_4_21.INIT1 = 16'haaa0;
    defparam r_counter_16_add_4_21.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_21.INJECT1_1 = "NO";
    CCU2B r_counter_16_add_4_19 (.A0(n8), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n7), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n248), .COUT(n249), .S0(n113), .S1(n112));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_19.INIT0 = 16'haaa0;
    defparam r_counter_16_add_4_19.INIT1 = 16'haaa0;
    defparam r_counter_16_add_4_19.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_19.INJECT1_1 = "NO";
    CCU2B r_counter_16_add_4_17 (.A0(n10), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n9), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n247), .COUT(n248), .S0(n115), .S1(n114));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_17.INIT0 = 16'haaa0;
    defparam r_counter_16_add_4_17.INIT1 = 16'haaa0;
    defparam r_counter_16_add_4_17.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_17.INJECT1_1 = "NO";
    CCU2B r_counter_16_add_4_15 (.A0(n12), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n11), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n246), .COUT(n247), .S0(n117), .S1(n116));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_15.INIT0 = 16'haaa0;
    defparam r_counter_16_add_4_15.INIT1 = 16'haaa0;
    defparam r_counter_16_add_4_15.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_15.INJECT1_1 = "NO";
    CCU2B r_counter_16_add_4_13 (.A0(n14), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n13), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n245), .COUT(n246), .S0(n119), .S1(n118));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_13.INIT0 = 16'haaa0;
    defparam r_counter_16_add_4_13.INIT1 = 16'haaa0;
    defparam r_counter_16_add_4_13.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_13.INJECT1_1 = "NO";
    CCU2B r_counter_16_add_4_11 (.A0(n16), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n15), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n244), .COUT(n245), .S0(n121), .S1(n120));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_11.INIT0 = 16'haaa0;
    defparam r_counter_16_add_4_11.INIT1 = 16'haaa0;
    defparam r_counter_16_add_4_11.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_11.INJECT1_1 = "NO";
    CCU2B r_counter_16_add_4_9 (.A0(n18), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n17), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n243), .COUT(n244), .S0(n123), .S1(n122));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_9.INIT0 = 16'haaa0;
    defparam r_counter_16_add_4_9.INIT1 = 16'haaa0;
    defparam r_counter_16_add_4_9.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_9.INJECT1_1 = "NO";
    CCU2B r_counter_16_add_4_7 (.A0(n20), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n19), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n242), .COUT(n243), .S0(n125), .S1(n124));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_7.INIT0 = 16'haaa0;
    defparam r_counter_16_add_4_7.INIT1 = 16'haaa0;
    defparam r_counter_16_add_4_7.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_7.INJECT1_1 = "NO";
    CCU2B r_counter_16_add_4_5 (.A0(n22), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n21), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n241), .COUT(n242), .S0(n127), .S1(n126));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_5.INIT0 = 16'haaa0;
    defparam r_counter_16_add_4_5.INIT1 = 16'haaa0;
    defparam r_counter_16_add_4_5.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_5.INJECT1_1 = "NO";
    CCU2B r_counter_16_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n25), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n240), .S1(n130));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_1.INIT0 = 16'h0000;
    defparam r_counter_16_add_4_1.INIT1 = 16'h555f;
    defparam r_counter_16_add_4_1.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_1.INJECT1_1 = "NO";
    CCU2B r_counter_16_add_4_3 (.A0(n24), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n23), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n240), .COUT(n241), .S0(n129), .S1(n128));   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(22[17:30])
    defparam r_counter_16_add_4_3.INIT0 = 16'haaa0;
    defparam r_counter_16_add_4_3.INIT1 = 16'haaa0;
    defparam r_counter_16_add_4_3.INJECT1_0 = "NO";
    defparam r_counter_16_add_4_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module pll_50_in
//

module pll_50_in (i_clk_c, clk_100mhz, pll_lock, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input i_clk_c;
    output clk_100mhz;
    output pll_lock;
    input GND_net;
    
    wire i_clk_c /* synthesis is_clock=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(2[11:16])
    wire clk_100mhz /* synthesis SET_AS_NETWORK=clk_100mhz, is_clock=1 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(7[7:17])
    
    EPLLD1 PLLInst_0 (.CLKI(i_clk_c), .CLKFB(clk_100mhz), .RST(GND_net), 
           .RSTK(GND_net), .DPAMODE(GND_net), .DRPAI0(GND_net), .DRPAI1(GND_net), 
           .DRPAI2(GND_net), .DRPAI3(GND_net), .DFPAI0(GND_net), .DFPAI1(GND_net), 
           .DFPAI2(GND_net), .DFPAI3(GND_net), .PWD(GND_net), .CLKOP(clk_100mhz), 
           .LOCK(pll_lock)) /* synthesis CLKOK_BYPASS="DISABLED", CLKOS_BYPASS="DISABLED", FREQUENCY_PIN_CLKOP="100.000000", CLKOP_BYPASS="DISABLED", PHASE_CNTL="STATIC", DUTY="8", PHASEADJ="0.0", FREQUENCY_PIN_CLKI="50.000000", CLKOK_DIV="2", CLKOP_DIV="8", CLKFB_DIV="2", CLKI_DIV="1", FIN="50.000000", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=10, LSE_RLINE=14 */ ;   // c:/users/semeghinilab/harvard university dropbox/haley nguyen/rbyb lab/14 lattice files/pid/top.v(10[12] 14[3])
    defparam PLLInst_0.FIN = "50.000000";
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 8;
    defparam PLLInst_0.CLKOK_DIV = 2;
    defparam PLLInst_0.PHASEADJ = "0.0";
    defparam PLLInst_0.DUTY = 8;
    defparam PLLInst_0.PHASE_CNTL = "STATIC";
    defparam PLLInst_0.PLLCAP = "DISABLED";
    defparam PLLInst_0.CLKOP_BYPASS = "DISABLED";
    defparam PLLInst_0.CLKOS_BYPASS = "DISABLED";
    defparam PLLInst_0.CLKOK_BYPASS = "DISABLED";
    defparam PLLInst_0.PLLTYPE = "AUTO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

