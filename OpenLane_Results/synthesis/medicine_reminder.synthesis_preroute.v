module medicine_reminder (ack,
    buzzer,
    clk,
    done,
    led,
    missed_alert,
    reminder_alert,
    reminder_due,
    rst,
    VPWR,
    VGND);
 input ack;
 output buzzer;
 input clk;
 output done;
 output led;
 output missed_alert;
 output reminder_alert;
 input reminder_due;
 input rst;
 input VPWR;
 input VGND;

 sky130_fd_sc_hd__or3b_4 _106_ (.A(\state[1] ),
    .B(net1),
    .C_N(\state[0] ),
    .X(_068_));
 sky130_fd_sc_hd__inv_2 _107_ (.A(_068_),
    .Y(_069_));
 sky130_fd_sc_hd__a21oi_1 _108_ (.A1(\counter[1] ),
    .A2(\counter[0] ),
    .B1(\counter[2] ),
    .Y(_070_));
 sky130_fd_sc_hd__or3b_1 _109_ (.A(\counter[4] ),
    .B(\counter[3] ),
    .C_N(_070_),
    .X(_071_));
 sky130_fd_sc_hd__or4_4 _110_ (.A(\counter[17] ),
    .B(\counter[16] ),
    .C(\counter[15] ),
    .D(\counter[14] ),
    .X(_072_));
 sky130_fd_sc_hd__or3_1 _111_ (.A(\counter[9] ),
    .B(\counter[8] ),
    .C(\counter[7] ),
    .X(_073_));
 sky130_fd_sc_hd__or4_4 _112_ (.A(\counter[21] ),
    .B(\counter[20] ),
    .C(\counter[19] ),
    .D(\counter[18] ),
    .X(_074_));
 sky130_fd_sc_hd__or4_4 _113_ (.A(\counter[31] ),
    .B(\counter[30] ),
    .C(\counter[29] ),
    .D(\counter[26] ),
    .X(_075_));
 sky130_fd_sc_hd__or4_4 _114_ (.A(_072_),
    .B(_073_),
    .C(_074_),
    .D(_075_),
    .X(_076_));
 sky130_fd_sc_hd__or4_4 _115_ (.A(\counter[13] ),
    .B(\counter[12] ),
    .C(\counter[11] ),
    .D(\counter[10] ),
    .X(_077_));
 sky130_fd_sc_hd__or4_4 _116_ (.A(\counter[25] ),
    .B(\counter[24] ),
    .C(\counter[23] ),
    .D(\counter[22] ),
    .X(_078_));
 sky130_fd_sc_hd__or2_1 _117_ (.A(\counter[28] ),
    .B(\counter[27] ),
    .X(_079_));
 sky130_fd_sc_hd__or4_4 _118_ (.A(_068_),
    .B(_077_),
    .C(_078_),
    .D(_079_),
    .X(_080_));
 sky130_fd_sc_hd__a311o_1 _119_ (.A1(\counter[6] ),
    .A2(\counter[5] ),
    .A3(_071_),
    .B1(_076_),
    .C1(_080_),
    .X(_081_));
 sky130_fd_sc_hd__buf_2 _120_ (.A(_081_),
    .X(_082_));
 sky130_fd_sc_hd__or2_1 _121_ (.A(\state[1] ),
    .B(\state[0] ),
    .X(_083_));
 sky130_fd_sc_hd__or2_1 _122_ (.A(net2),
    .B(_083_),
    .X(_084_));
 sky130_fd_sc_hd__nor2b_2 _123_ (.A(\state[0] ),
    .B_N(\state[1] ),
    .Y(net7));
 sky130_fd_sc_hd__nor2b_4 _124_ (.A(net1),
    .B_N(net7),
    .Y(_085_));
 sky130_fd_sc_hd__a31o_1 _125_ (.A1(_069_),
    .A2(_082_),
    .A3(_084_),
    .B1(_085_),
    .X(_067_));
 sky130_fd_sc_hd__buf_4 _126_ (.A(net3),
    .X(_086_));
 sky130_fd_sc_hd__inv_2 _127_ (.A(_086_),
    .Y(_032_));
 sky130_fd_sc_hd__inv_2 _128_ (.A(net2),
    .Y(_087_));
 sky130_fd_sc_hd__o31ai_1 _129_ (.A1(_087_),
    .A2(_085_),
    .A3(_083_),
    .B1(_082_),
    .Y(_066_));
 sky130_fd_sc_hd__inv_2 _130_ (.A(_086_),
    .Y(_031_));
 sky130_fd_sc_hd__buf_2 _131_ (.A(_085_),
    .X(_088_));
 sky130_fd_sc_hd__and2_1 _132_ (.A(\counter[31] ),
    .B(_088_),
    .X(_065_));
 sky130_fd_sc_hd__inv_2 _133_ (.A(_086_),
    .Y(_030_));
 sky130_fd_sc_hd__and2_1 _134_ (.A(\counter[30] ),
    .B(_088_),
    .X(_064_));
 sky130_fd_sc_hd__inv_2 _135_ (.A(_086_),
    .Y(_029_));
 sky130_fd_sc_hd__and2_1 _136_ (.A(\counter[29] ),
    .B(_088_),
    .X(_063_));
 sky130_fd_sc_hd__inv_2 _137_ (.A(_086_),
    .Y(_028_));
 sky130_fd_sc_hd__and2_1 _138_ (.A(\counter[28] ),
    .B(_088_),
    .X(_062_));
 sky130_fd_sc_hd__inv_2 _139_ (.A(_086_),
    .Y(_027_));
 sky130_fd_sc_hd__clkbuf_2 _140_ (.A(_085_),
    .X(_089_));
 sky130_fd_sc_hd__and2_1 _141_ (.A(\counter[27] ),
    .B(_089_),
    .X(_061_));
 sky130_fd_sc_hd__inv_2 _142_ (.A(_086_),
    .Y(_026_));
 sky130_fd_sc_hd__and2_1 _143_ (.A(\counter[26] ),
    .B(_089_),
    .X(_060_));
 sky130_fd_sc_hd__inv_2 _144_ (.A(_086_),
    .Y(_025_));
 sky130_fd_sc_hd__and2_1 _145_ (.A(\counter[25] ),
    .B(_089_),
    .X(_059_));
 sky130_fd_sc_hd__inv_2 _146_ (.A(_086_),
    .Y(_024_));
 sky130_fd_sc_hd__and2_1 _147_ (.A(\counter[24] ),
    .B(_089_),
    .X(_058_));
 sky130_fd_sc_hd__inv_2 _148_ (.A(_086_),
    .Y(_023_));
 sky130_fd_sc_hd__and2_1 _149_ (.A(\counter[23] ),
    .B(_089_),
    .X(_057_));
 sky130_fd_sc_hd__buf_4 _150_ (.A(net3),
    .X(_090_));
 sky130_fd_sc_hd__inv_2 _151_ (.A(_090_),
    .Y(_022_));
 sky130_fd_sc_hd__and2_1 _152_ (.A(\counter[22] ),
    .B(_089_),
    .X(_056_));
 sky130_fd_sc_hd__inv_2 _153_ (.A(_090_),
    .Y(_021_));
 sky130_fd_sc_hd__and2_1 _154_ (.A(\counter[21] ),
    .B(_089_),
    .X(_055_));
 sky130_fd_sc_hd__inv_2 _155_ (.A(_090_),
    .Y(_020_));
 sky130_fd_sc_hd__and2_1 _156_ (.A(\counter[20] ),
    .B(_089_),
    .X(_054_));
 sky130_fd_sc_hd__inv_2 _157_ (.A(_090_),
    .Y(_019_));
 sky130_fd_sc_hd__and2_1 _158_ (.A(\counter[19] ),
    .B(_089_),
    .X(_053_));
 sky130_fd_sc_hd__inv_2 _159_ (.A(_090_),
    .Y(_018_));
 sky130_fd_sc_hd__and2_1 _160_ (.A(\counter[18] ),
    .B(_089_),
    .X(_052_));
 sky130_fd_sc_hd__inv_2 _161_ (.A(_090_),
    .Y(_017_));
 sky130_fd_sc_hd__clkbuf_2 _162_ (.A(_085_),
    .X(_091_));
 sky130_fd_sc_hd__and2_1 _163_ (.A(\counter[17] ),
    .B(_091_),
    .X(_051_));
 sky130_fd_sc_hd__inv_2 _164_ (.A(_090_),
    .Y(_016_));
 sky130_fd_sc_hd__and2_1 _165_ (.A(\counter[16] ),
    .B(_091_),
    .X(_050_));
 sky130_fd_sc_hd__inv_2 _166_ (.A(_090_),
    .Y(_015_));
 sky130_fd_sc_hd__and2_1 _167_ (.A(\counter[15] ),
    .B(_091_),
    .X(_049_));
 sky130_fd_sc_hd__inv_2 _168_ (.A(_090_),
    .Y(_014_));
 sky130_fd_sc_hd__and2_1 _169_ (.A(\counter[14] ),
    .B(_091_),
    .X(_048_));
 sky130_fd_sc_hd__inv_2 _170_ (.A(_090_),
    .Y(_013_));
 sky130_fd_sc_hd__and2_1 _171_ (.A(\counter[13] ),
    .B(_091_),
    .X(_047_));
 sky130_fd_sc_hd__buf_6 _172_ (.A(net3),
    .X(_092_));
 sky130_fd_sc_hd__inv_2 _173_ (.A(_092_),
    .Y(_012_));
 sky130_fd_sc_hd__and2_1 _174_ (.A(\counter[12] ),
    .B(_091_),
    .X(_046_));
 sky130_fd_sc_hd__inv_2 _175_ (.A(_092_),
    .Y(_011_));
 sky130_fd_sc_hd__and2_1 _176_ (.A(\counter[11] ),
    .B(_091_),
    .X(_045_));
 sky130_fd_sc_hd__inv_2 _177_ (.A(_092_),
    .Y(_010_));
 sky130_fd_sc_hd__and2_1 _178_ (.A(\counter[10] ),
    .B(_091_),
    .X(_044_));
 sky130_fd_sc_hd__inv_2 _179_ (.A(_092_),
    .Y(_009_));
 sky130_fd_sc_hd__and2_1 _180_ (.A(\counter[9] ),
    .B(_091_),
    .X(_043_));
 sky130_fd_sc_hd__inv_2 _181_ (.A(_092_),
    .Y(_008_));
 sky130_fd_sc_hd__and2_1 _182_ (.A(\counter[8] ),
    .B(_091_),
    .X(_042_));
 sky130_fd_sc_hd__inv_2 _183_ (.A(_092_),
    .Y(_007_));
 sky130_fd_sc_hd__and2_1 _184_ (.A(\counter[7] ),
    .B(_085_),
    .X(_041_));
 sky130_fd_sc_hd__inv_2 _185_ (.A(_092_),
    .Y(_006_));
 sky130_fd_sc_hd__or3b_1 _186_ (.A(\state[0] ),
    .B(net1),
    .C_N(\state[1] ),
    .X(_093_));
 sky130_fd_sc_hd__and4_1 _187_ (.A(\counter[3] ),
    .B(\counter[2] ),
    .C(\counter[1] ),
    .D(\counter[0] ),
    .X(_094_));
 sky130_fd_sc_hd__and3_1 _188_ (.A(\counter[5] ),
    .B(\counter[4] ),
    .C(_094_),
    .X(_095_));
 sky130_fd_sc_hd__a21oi_1 _189_ (.A1(_093_),
    .A2(_095_),
    .B1(\counter[6] ),
    .Y(_096_));
 sky130_fd_sc_hd__a21oi_1 _190_ (.A1(_093_),
    .A2(_082_),
    .B1(_096_),
    .Y(_040_));
 sky130_fd_sc_hd__inv_2 _191_ (.A(_092_),
    .Y(_005_));
 sky130_fd_sc_hd__a21oi_1 _192_ (.A1(\counter[4] ),
    .A2(_094_),
    .B1(\counter[5] ),
    .Y(_097_));
 sky130_fd_sc_hd__nand2_1 _193_ (.A(\counter[5] ),
    .B(_088_),
    .Y(_098_));
 sky130_fd_sc_hd__o31ai_1 _194_ (.A1(_082_),
    .A2(_095_),
    .A3(_097_),
    .B1(_098_),
    .Y(_039_));
 sky130_fd_sc_hd__inv_2 _195_ (.A(_092_),
    .Y(_004_));
 sky130_fd_sc_hd__xnor2_1 _196_ (.A(\counter[4] ),
    .B(_094_),
    .Y(_099_));
 sky130_fd_sc_hd__o2bb2ai_1 _197_ (.A1_N(\counter[4] ),
    .A2_N(_088_),
    .B1(_082_),
    .B2(_099_),
    .Y(_038_));
 sky130_fd_sc_hd__inv_2 _198_ (.A(_092_),
    .Y(_003_));
 sky130_fd_sc_hd__and3_1 _199_ (.A(\counter[2] ),
    .B(\counter[1] ),
    .C(\counter[0] ),
    .X(_100_));
 sky130_fd_sc_hd__nor2_1 _200_ (.A(\counter[3] ),
    .B(_100_),
    .Y(_101_));
 sky130_fd_sc_hd__nand2_1 _201_ (.A(\counter[3] ),
    .B(_088_),
    .Y(_102_));
 sky130_fd_sc_hd__o31ai_1 _202_ (.A1(_082_),
    .A2(_094_),
    .A3(_101_),
    .B1(_102_),
    .Y(_037_));
 sky130_fd_sc_hd__inv_2 _203_ (.A(net3),
    .Y(_002_));
 sky130_fd_sc_hd__nand2_1 _204_ (.A(\counter[2] ),
    .B(_088_),
    .Y(_103_));
 sky130_fd_sc_hd__o31ai_1 _205_ (.A1(_070_),
    .A2(_082_),
    .A3(_100_),
    .B1(_103_),
    .Y(_036_));
 sky130_fd_sc_hd__inv_2 _206_ (.A(net3),
    .Y(_001_));
 sky130_fd_sc_hd__xnor2_1 _207_ (.A(\counter[1] ),
    .B(\counter[0] ),
    .Y(_104_));
 sky130_fd_sc_hd__o2bb2ai_1 _208_ (.A1_N(\counter[1] ),
    .A2_N(_088_),
    .B1(_082_),
    .B2(_104_),
    .Y(_035_));
 sky130_fd_sc_hd__inv_2 _209_ (.A(net3),
    .Y(_000_));
 sky130_fd_sc_hd__nand2_1 _210_ (.A(\counter[0] ),
    .B(_088_),
    .Y(_105_));
 sky130_fd_sc_hd__o21ai_1 _211_ (.A1(\counter[0] ),
    .A2(_082_),
    .B1(_105_),
    .Y(_034_));
 sky130_fd_sc_hd__nor2b_2 _212_ (.A(\state[1] ),
    .B_N(\state[0] ),
    .Y(net8));
 sky130_fd_sc_hd__or2_2 _213_ (.A(net7),
    .B(net8),
    .X(net4));
 sky130_fd_sc_hd__and2_1 _214_ (.A(net1),
    .B(net4),
    .X(net5));
 sky130_fd_sc_hd__inv_2 _215_ (.A(net3),
    .Y(_033_));
 sky130_fd_sc_hd__clkbuf_1 _216_ (.A(net4),
    .X(net6));
 sky130_fd_sc_hd__dfrtp_4 _217_ (.D(_034_),
    .Q(\counter[0] ),
    .RESET_B(_000_),
    .CLK(clknet_2_2_0_clk));
 sky130_fd_sc_hd__dfrtp_4 _218_ (.D(_035_),
    .Q(\counter[1] ),
    .RESET_B(_001_),
    .CLK(clknet_2_2_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _219_ (.D(_036_),
    .Q(\counter[2] ),
    .RESET_B(_002_),
    .CLK(clknet_2_3_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _220_ (.D(_037_),
    .Q(\counter[3] ),
    .RESET_B(_003_),
    .CLK(clknet_2_3_0_clk));
 sky130_fd_sc_hd__dfrtp_4 _221_ (.D(_038_),
    .Q(\counter[4] ),
    .RESET_B(_004_),
    .CLK(clknet_2_3_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _222_ (.D(_039_),
    .Q(\counter[5] ),
    .RESET_B(_005_),
    .CLK(clknet_2_3_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _223_ (.D(_040_),
    .Q(\counter[6] ),
    .RESET_B(_006_),
    .CLK(clknet_2_3_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _224_ (.D(_041_),
    .Q(\counter[7] ),
    .RESET_B(_007_),
    .CLK(clknet_2_3_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _225_ (.D(_042_),
    .Q(\counter[8] ),
    .RESET_B(_008_),
    .CLK(clknet_2_3_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _226_ (.D(_043_),
    .Q(\counter[9] ),
    .RESET_B(_009_),
    .CLK(clknet_2_3_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _227_ (.D(_044_),
    .Q(\counter[10] ),
    .RESET_B(_010_),
    .CLK(clknet_2_1_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _228_ (.D(_045_),
    .Q(\counter[11] ),
    .RESET_B(_011_),
    .CLK(clknet_2_1_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _229_ (.D(_046_),
    .Q(\counter[12] ),
    .RESET_B(_012_),
    .CLK(clknet_2_1_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _230_ (.D(_047_),
    .Q(\counter[13] ),
    .RESET_B(_013_),
    .CLK(clknet_2_1_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _231_ (.D(_048_),
    .Q(\counter[14] ),
    .RESET_B(_014_),
    .CLK(clknet_2_1_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _232_ (.D(_049_),
    .Q(\counter[15] ),
    .RESET_B(_015_),
    .CLK(clknet_2_1_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _233_ (.D(_050_),
    .Q(\counter[16] ),
    .RESET_B(_016_),
    .CLK(clknet_2_1_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _234_ (.D(_051_),
    .Q(\counter[17] ),
    .RESET_B(_017_),
    .CLK(clknet_2_1_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _235_ (.D(_052_),
    .Q(\counter[18] ),
    .RESET_B(_018_),
    .CLK(clknet_2_0_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _236_ (.D(_053_),
    .Q(\counter[19] ),
    .RESET_B(_019_),
    .CLK(clknet_2_0_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _237_ (.D(_054_),
    .Q(\counter[20] ),
    .RESET_B(_020_),
    .CLK(clknet_2_0_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _238_ (.D(_055_),
    .Q(\counter[21] ),
    .RESET_B(_021_),
    .CLK(clknet_2_0_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _239_ (.D(_056_),
    .Q(\counter[22] ),
    .RESET_B(_022_),
    .CLK(clknet_2_0_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _240_ (.D(_057_),
    .Q(\counter[23] ),
    .RESET_B(_023_),
    .CLK(clknet_2_0_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _241_ (.D(_058_),
    .Q(\counter[24] ),
    .RESET_B(_024_),
    .CLK(clknet_2_0_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _242_ (.D(_059_),
    .Q(\counter[25] ),
    .RESET_B(_025_),
    .CLK(clknet_2_0_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _243_ (.D(_060_),
    .Q(\counter[26] ),
    .RESET_B(_026_),
    .CLK(clknet_2_0_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _244_ (.D(_061_),
    .Q(\counter[27] ),
    .RESET_B(_027_),
    .CLK(clknet_2_0_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _245_ (.D(_062_),
    .Q(\counter[28] ),
    .RESET_B(_028_),
    .CLK(clknet_2_0_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _246_ (.D(_063_),
    .Q(\counter[29] ),
    .RESET_B(_029_),
    .CLK(clknet_2_2_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _247_ (.D(_064_),
    .Q(\counter[30] ),
    .RESET_B(_030_),
    .CLK(clknet_2_2_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _248_ (.D(_065_),
    .Q(\counter[31] ),
    .RESET_B(_031_),
    .CLK(clknet_2_2_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _249_ (.D(_066_),
    .Q(\state[0] ),
    .RESET_B(_032_),
    .CLK(clknet_2_2_0_clk));
 sky130_fd_sc_hd__dfrtp_1 _250_ (.D(_067_),
    .Q(\state[1] ),
    .RESET_B(_033_),
    .CLK(clknet_2_2_0_clk));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_125 ();
 sky130_fd_sc_hd__clkbuf_2 input1 (.A(ack),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(reminder_due),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_4 input3 (.A(rst),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_2 output4 (.A(net4),
    .X(buzzer));
 sky130_fd_sc_hd__clkbuf_2 output5 (.A(net5),
    .X(done));
 sky130_fd_sc_hd__clkbuf_2 output6 (.A(net6),
    .X(led));
 sky130_fd_sc_hd__clkbuf_2 output7 (.A(net7),
    .X(missed_alert));
 sky130_fd_sc_hd__clkbuf_2 output8 (.A(net8),
    .X(reminder_alert));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_1_0_0_clk (.A(clknet_0_clk),
    .X(clknet_1_0_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_1_1_0_clk (.A(clknet_0_clk),
    .X(clknet_1_1_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_2_0_0_clk (.A(clknet_1_0_0_clk),
    .X(clknet_2_0_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_2_1_0_clk (.A(clknet_1_0_0_clk),
    .X(clknet_2_1_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_2_2_0_clk (.A(clknet_1_1_0_clk),
    .X(clknet_2_2_0_clk));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_2_3_0_clk (.A(clknet_1_1_0_clk),
    .X(clknet_2_3_0_clk));
 sky130_fd_sc_hd__decap_12 FILLER_0_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_26 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_59 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_67 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_79 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_88 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_100 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_112 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_117 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_129 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_146 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_154 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_22 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_73 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_77 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_89 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_110 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_127 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_131 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_143 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_155 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_91 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_112 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_134 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_142 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_156 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_9 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_110 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_115 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_153 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_22 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_28 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_30 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_39 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_50 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_68 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_74 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_85 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_87 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_106 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_139 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_156 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_23 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_42 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_66 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_72 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_84 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_96 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_108 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_121 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_127 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_134 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_146 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_154 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_30 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_42 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_51 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_63 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_74 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_87 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_99 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_123 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_135 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_156 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_37 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_74 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_87 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_94 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_106 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_115 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_127 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_139 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_151 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_87 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_94 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_120 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_131 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_137 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_144 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_151 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_16 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_44 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_83 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_90 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_101 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_110 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_121 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_127 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_151 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_68 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_78 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_87 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_121 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_134 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_142 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_144 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_151 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_31 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_37 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_74 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_86 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_94 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_111 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_115 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_122 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_130 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_151 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_11 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_28 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_42 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_60 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_64 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_87 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_99 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_107 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_112 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_124 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_136 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_142 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_156 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_18 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_31 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_47 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_51 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_66 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_87 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_96 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_108 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_115 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_127 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_132 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_140 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_147 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_155 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_30 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_45 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_49 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_69 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_87 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_98 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_104 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_116 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_142 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_144 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_151 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_38 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_75 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_83 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_95 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_148 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_156 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_13 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_22 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_28 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_66 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_87 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_111 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_153 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_7 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_28 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_56 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_58 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_66 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_90 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_110 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_115 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_127 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_150 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_156 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_30 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_45 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_99 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_106 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_118 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_130 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_142 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_144 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_151 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_31 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_35 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_47 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_55 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_58 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_70 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_90 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_94 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_106 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_115 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_127 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_139 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_151 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_38 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_45 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_64 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_107 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_114 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_126 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_142 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_156 ();
 sky130_fd_sc_hd__decap_12 FILLER_21_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_21_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_23 ();
 sky130_fd_sc_hd__decap_8 FILLER_21_49 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_71 ();
 sky130_fd_sc_hd__decap_8 FILLER_21_78 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_86 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_95 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_101 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_108 ();
 sky130_fd_sc_hd__decap_12 FILLER_21_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_131 ();
 sky130_fd_sc_hd__decap_12 FILLER_21_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_147 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_153 ();
 sky130_fd_sc_hd__decap_12 FILLER_22_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_41 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_87 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_95 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_104 ();
 sky130_fd_sc_hd__decap_6 FILLER_22_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_139 ();
 sky130_fd_sc_hd__decap_12 FILLER_22_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_156 ();
 sky130_fd_sc_hd__decap_12 FILLER_23_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_39 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_47 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_68 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_72 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_93 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_115 ();
 sky130_fd_sc_hd__decap_12 FILLER_23_122 ();
 sky130_fd_sc_hd__decap_12 FILLER_23_134 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_146 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_154 ();
 sky130_fd_sc_hd__decap_12 FILLER_24_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_24_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_24_37 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_65 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_73 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_87 ();
 sky130_fd_sc_hd__decap_6 FILLER_24_94 ();
 sky130_fd_sc_hd__decap_12 FILLER_24_123 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_135 ();
 sky130_fd_sc_hd__decap_12 FILLER_24_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_156 ();
 sky130_fd_sc_hd__decap_12 FILLER_25_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_25_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_25_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_25_39 ();
 sky130_fd_sc_hd__decap_6 FILLER_25_51 ();
 sky130_fd_sc_hd__decap_12 FILLER_25_58 ();
 sky130_fd_sc_hd__decap_12 FILLER_25_70 ();
 sky130_fd_sc_hd__decap_12 FILLER_25_82 ();
 sky130_fd_sc_hd__decap_12 FILLER_25_94 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_106 ();
 sky130_fd_sc_hd__decap_12 FILLER_25_115 ();
 sky130_fd_sc_hd__decap_12 FILLER_25_127 ();
 sky130_fd_sc_hd__decap_12 FILLER_25_139 ();
 sky130_fd_sc_hd__decap_6 FILLER_25_151 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_26_11 ();
 sky130_fd_sc_hd__decap_6 FILLER_26_23 ();
 sky130_fd_sc_hd__decap_12 FILLER_26_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_26_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_59 ();
 sky130_fd_sc_hd__decap_12 FILLER_26_69 ();
 sky130_fd_sc_hd__decap_6 FILLER_26_81 ();
 sky130_fd_sc_hd__decap_12 FILLER_26_88 ();
 sky130_fd_sc_hd__decap_12 FILLER_26_100 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_112 ();
 sky130_fd_sc_hd__decap_12 FILLER_26_117 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_129 ();
 sky130_fd_sc_hd__decap_8 FILLER_26_137 ();
 sky130_fd_sc_hd__decap_8 FILLER_26_146 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_154 ();
endmodule
