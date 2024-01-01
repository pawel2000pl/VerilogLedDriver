set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

####################################################################################################################
#                                               CLOCK 100MHz                                                       #
####################################################################################################################
set_property -dict { PACKAGE_PIN "N11"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { CLK1 }]     ;                # IO_L13P_T2_MRCC_14            Sch = CLK
create_clock -period 10 -name clk_dev [get_ports CLK1] ;
####################################################################################################################
#                                               FT2232H Signals                                                    #
####################################################################################################################
set_property -dict { PACKAGE_PIN "M16"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { DATA[0] }]  ;               # IO_L7P_T1_D09_14               Sch = FTDI_D0
set_property -dict { PACKAGE_PIN "N16"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { DATA[1] }]  ;               # IO_L7N_T1_D10_14               Sch = FTDI_D1
set_property -dict { PACKAGE_PIN "P15"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { DATA[2] }]  ;               # IO_L8P_T1_D11_14               Sch = FTDI_D2
set_property -dict { PACKAGE_PIN "P16"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { DATA[3] }]  ;               # IO_L8N_T1_D12_14               Sch = FTDI_D3
set_property -dict { PACKAGE_PIN "R15"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { DATA[4] }]  ;               # IO_L9P_T1_DQS_14               Sch = FTDI_D4
set_property -dict { PACKAGE_PIN "R16"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { DATA[5] }]  ;               # IO_L9N_T1_DQS_D13_14           Sch = FTDI_D5
set_property -dict { PACKAGE_PIN "T14"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { DATA[6] }]  ;               # IO_L10P_T1_D14_14              Sch = FTDI_D6
set_property -dict { PACKAGE_PIN "T15"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { DATA[7] }]  ;               # IO_L10N_T1_D15_14              Sch = FTDI_D7

set_property -dict { PACKAGE_PIN "T8"     IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { TXE_N }]    ;               # IO_L21N_T3_DQS_A06_D22_14      Sch = FTDI_TXE_N
set_property -dict { PACKAGE_PIN "T7"     IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { RXE_N }]    ;               # IO_L21P_T3_DQS_14              Sch = FTDI_RXE_N
set_property -dict { PACKAGE_PIN "P14"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { WR_N  }]    ;               # IO_L12N_T1_MRCC_14             Sch = FTDI_WR_N
set_property -dict { PACKAGE_PIN "N12"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { RD_N  }]    ;               # IO_L13N_T2_MRCC_14             Sch = FTDI_RD_N
set_property -dict { PACKAGE_PIN "N14"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { CLKOUT}]    ;               # IO_L12P_T1_MRCC_14             Sch = FTDI_CLKOUT
set_property -dict { PACKAGE_PIN "L15"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { OE_N  }]    ;               # IO_L3P_T0_DQS_PUDC_B_14        Sch = FTDI_OE#
set_property -dict { PACKAGE_PIN "M12"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { SIWUA }]    ;               # IO_L6N_T0_D08_VREF_14          Sch = FTDI_SIWUA

####################################################################################################################
#                                        DDR3       : MT41J128M16XX-125                                            #
#                                        Frequency  : 400 MHz                                                      #
#                                        Data Width : 16                                                           #
####################################################################################################################
set_property -dict { PACKAGE_PIN "G2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[0]}]     ;               # IO_L17P_T2_35                 Sch = DDR3_DQ0
set_property -dict { PACKAGE_PIN "F3"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[1]}]     ;               # IO_L14N_T2_SRCC_35            Sch = DDR3_DQ1
set_property -dict { PACKAGE_PIN "H4"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[2]}]     ;               # IO_L18N_T2_SRCC_35            Sch = DDR3_DQ2
set_property -dict { PACKAGE_PIN "G5"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[3]}]     ;               # IO_L16P_T2_35                 Sch = DDR3_DQ3
set_property -dict { PACKAGE_PIN "G1"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[4]}]     ;               # IO_L17N_T2_35                 Sch = DDR3_DQ4
set_property -dict { PACKAGE_PIN "F4"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[5]}]     ;               # IO_L14P_T2_SRCC_35            Sch = DDR3_DQ5
set_property -dict { PACKAGE_PIN "H5"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[6]}]     ;               # IO_L18P_T2_35                 Sch = DDR3_DQ6
set_property -dict { PACKAGE_PIN "G4"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[7]}]     ;               # IO_L16N_T2_35                 Sch = DDR3_DQ7
set_property -dict { PACKAGE_PIN "H2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[8]}]     ;               # IO_L20P_T3_35                 Sch = DDR3_DQ8
set_property -dict { PACKAGE_PIN "H1"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[9]}]     ;               # IO_L20N_T3_35                 Sch = DDR3_DQ9
set_property -dict { PACKAGE_PIN "K1"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[10]}]    ;               # IO_L22P_T3_35                 Sch = DDR3_DQ10
set_property -dict { PACKAGE_PIN "J1"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[11]}]    ;               # IO_L22N_T3_35                 Sch = DDR3_DQ11
set_property -dict { PACKAGE_PIN "L3"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[12]}]    ;               # IO_L23P_T3_35                 Sch = DDR3_DQ12
set_property -dict { PACKAGE_PIN "L2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[13]}]    ;               # IO_L23N_T3_35                 Sch = DDR3_DQ13
set_property -dict { PACKAGE_PIN "K3"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[14]}]    ;               # IO_L24P_T3_35                 Sch = DDR3_DQ14
set_property -dict { PACKAGE_PIN "K2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dq[15]}]    ;               # IO_L24N_T3_35                 Sch = DDR3_DQ15
set_property -dict { PACKAGE_PIN "C7"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[0]}]   ;               # IO_L5P_T0_AD13P_35            Sch = DDR3_ADDR0
set_property -dict { PACKAGE_PIN "B1"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[1]}]   ;               # IO_L9N_T1_DQS_AD7N_35         Sch = DDR3_ADDR1
set_property -dict { PACKAGE_PIN "C1"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[2]}]   ;               # IO_L9P_T1_DQS_AD7P_35         Sch = DDR3_ADDR2
set_property -dict { PACKAGE_PIN "D6"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[3]}]   ;               # IO_L6P_T0_35                  Sch = DDR3_ADDR3
set_property -dict { PACKAGE_PIN "A3"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[4]}]   ;               # IO_L4N_T0_35                  Sch = DDR3_ADDR4
set_property -dict { PACKAGE_PIN "C6"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[5]}]   ;               # IO_L5N_T0_AD13N_35            Sch = DDR3_ADDR5
set_property -dict { PACKAGE_PIN "A2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[6]}]   ;               # IO_L8N_T1_AD14N_35            Sch = DDR3_ADDR6
set_property -dict { PACKAGE_PIN "B6"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[7]}]   ;               # IO_L2P_T0_AD12P_35            Sch = DDR3_ADDR7
set_property -dict { PACKAGE_PIN "B2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[8]}]   ;               # IO_L8P_T1_AD14P_35            Sch = DDR3_ADDR8
set_property -dict { PACKAGE_PIN "B5"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[9]}]   ;               # IO_L2N_T0_AD12N_35            Sch = DDR3_ADDR9
set_property -dict { PACKAGE_PIN "E2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[10]}]  ;               # IO_L10P_T1_AD15P_35           Sch = DDR3_ADDR10
set_property -dict { PACKAGE_PIN "C2"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[11]}]  ;               # IO_L7N_T1_AD6N_35             Sch = DDR3_ADDR11
set_property -dict { PACKAGE_PIN "C3"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[12]}]  ;               # IO_L7P_T1_AD6P_35             Sch = DDR3_ADDR12
set_property -dict { PACKAGE_PIN "B4"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_addr[13]}]  ;               # IO_L4P_T0_35                  Sch = DDR3_ADDR13
set_property -dict { PACKAGE_PIN "D3"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_ba[0]}]     ;               # IO_L11N_T1_SRCC_35            Sch = DDR3_BA0
set_property -dict { PACKAGE_PIN "E3"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_ba[1]}]     ;               # IO_L11P_T1_SRCC_35            Sch = DDR3_BA1
set_property -dict { PACKAGE_PIN "D1"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_ba[2]}]     ;               # IO_L10N_T1_AD15N_35           Sch = DDR3_BA2
set_property -dict { PACKAGE_PIN "D4"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_ras_n}]     ;               # IO_L12P_T1_MRCC_35            Sch = DDR3_RAS_N
set_property -dict { PACKAGE_PIN "C4"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_cas_n}]     ;               # IO_L12N_T1_MRCC_35            Sch = DDR3_CAS_N
set_property -dict { PACKAGE_PIN "B7"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_we_n}]      ;               # IO_L1P_T0_AD4P_35             Sch = DDR3_WE_N
set_property -dict { PACKAGE_PIN "K5"     IOSTANDARD LVCMOS15   SLEW FAST} [get_ports {ddr3_reset_n}]   ;               # IO_25_35                      Sch = DDR3_RESET_N
set_property -dict { PACKAGE_PIN "D5"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_cke}]       ;               # IO_L6N_T0_VREF_35             Sch = DDR3_CKE
set_property -dict { PACKAGE_PIN "A7"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_odt}]       ;               # IO_L1N_T0_AD4N_35             Sch = DDR3_ODT
set_property -dict { PACKAGE_PIN "E6"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_cs_n}]      ;               # IO_0_35                       Sch = DDR3_CS_N
set_property -dict { PACKAGE_PIN "E5"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dm[0]}]     ;               # IO_L13N_T2_MRCC_35            Sch = DDR3_DM_0
set_property -dict { PACKAGE_PIN "J5"     IOSTANDARD SSTL15     SLEW FAST} [get_ports {ddr3_dm[1]}]     ;               # IO_L19P_T3_35                 Sch = DDR3_DM_1
set_property -dict { PACKAGE_PIN "F2"     IOSTANDARD DIFF_SSTL15 SLEW FAST} [get_ports {ddr3_dqs_p[0]}] ;               # IO_L15P_T2_DQS_35             Sch = DDR3_DQS_0_P
set_property -dict { PACKAGE_PIN "E1"     IOSTANDARD DIFF_SSTL15 SLEW FAST} [get_ports {ddr3_dqs_n[0]}] ;               # IO_L15N_T2_DQS_35             Sch = DDR3_DQS_0_N
set_property -dict { PACKAGE_PIN "J3"     IOSTANDARD DIFF_SSTL15 SLEW FAST} [get_ports {ddr3_dqs_p[1]}] ;               # IO_L21P_T3_DQS_35             Sch = DDR3_DQS_1_P
set_property -dict { PACKAGE_PIN "H3"     IOSTANDARD DIFF_SSTL15 SLEW FAST} [get_ports {ddr3_dqs_n[1]}] ;               # IO_L21N_T3_DQS_35             Sch = DDR3_DQS_1_N
set_property -dict { PACKAGE_PIN "A5"     IOSTANDARD DIFF_SSTL15 SLEW FAST} [get_ports {ddr3_ck_p[0]}]  ;               # IO_L3P_T0_DQS_AD5P_35         Sch = DDR3_CK_P
set_property -dict { PACKAGE_PIN "A4"     IOSTANDARD DIFF_SSTL15 SLEW FAST} [get_ports {ddr3_ck_n[0]}]  ;               # IO_L3N_T0_DQS_AD5N_35         Sch = DDR3_CK_N

####################################################################################################################
#                                              QSPI - FLASH                                                        #
####################################################################################################################
set_property -dict { PACKAGE_PIN "L12"    IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { FLASH_CS_N }]     ;            # IO_L6P_T0_FCS_B_14            Sch = FLASH_CS_N
set_property -dict { PACKAGE_PIN "J13"    IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { FLASH_DQ[0] }]    ;            # IO_L1P_T0_D00_MOSI_14         Sch = FLASH_DQ0
set_property -dict { PACKAGE_PIN "J14"    IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { FLASH_DQ[1] }]    ;            # IO_L1N_T0_D01_DIN_14          Sch = FLASH_DQ1
set_property -dict { PACKAGE_PIN "K15"    IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { FLASH_DQ[2] }]    ;            # IO_L2P_T0_D02_14              Sch = FLASH_DQ2
set_property -dict { PACKAGE_PIN "K16"    IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { FLASH_DQ[3] }]    ;            # IO_L2N_T0_D03_14              Sch = FLASH_DQ3
set_property -dict { PACKAGE_PIN "E8"     IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { FLASH_CLK }]      ;            # CCLK_0                        Sch = FLASH_CLK

####################################################################################################################
#                                               Push Buttons                                                       #
####################################################################################################################
set_property -dict { PACKAGE_PIN "F5"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sw_in[0] }];                     # IO_L13P_T2_MRCC_35            Sch = SW0
set_property -dict { PACKAGE_PIN "J4"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sw_in[1] }];                     # IO_L19N_T3_VREF_35            Sch = SW1
set_property -dict { PACKAGE_PIN "M6"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sw_in[2] }];                     # IO_L19P_T3_A10_D26_14         Sch = SW2
set_property -dict { PACKAGE_PIN "N6"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sw_in[3] }];                     # IO_L19N_T3_A09_D25_VREF_14    Sch = SW3

####################################################################################################################
#                                               LEDs                                                               #
####################################################################################################################
set_property -dict { PACKAGE_PIN "K12"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[0] }];                      # IO_0_14                       Sch = LED0
set_property -dict { PACKAGE_PIN "K13"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[1] }];                      # IO_L5P_T0_D06_14              Sch = LED1
set_property -dict { PACKAGE_PIN "R10"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[2] }];                      # IO_L17P_T2_A14_D30_14         Sch = LED2
set_property -dict { PACKAGE_PIN "R13"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[3] }];                      # IO_L16P_T2_CSI_14             Sch = LED3
set_property -dict { PACKAGE_PIN "T13"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[4] }];                      # IO_L16N_T2_A15_D31_14         Sch = LED4
set_property -dict { PACKAGE_PIN "R12"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[5] }];                      # IO_L15P_T2_DQS_RDWR_B_14      Sch = LED5
set_property -dict { PACKAGE_PIN "T12"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[6] }];                      # IO_L15N_T2_DQS_DOUT_CSO_B_14  Sch = LED6
set_property -dict { PACKAGE_PIN "R11"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[7] }];                      # IO_L17N_T2_A13_D29_14         Sch = LED7

####################################################################################################################
#                                               RGB LED                                                            #
####################################################################################################################
set_property -dict { PACKAGE_PIN "M15"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LEDR }];                        # IO_L3N_T0_DQS_EMCCLK_14       Sch = LED_R
set_property -dict { PACKAGE_PIN "L14"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LEDG }];                        # IO_L4P_T0_D04_14              Sch = LED_G
set_property -dict { PACKAGE_PIN "M14"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LEDB }];                        # IO_L4N_T0_D05_14              Sch = LED_B

###################################################################################################################
#                                               Header P4                                                         #
###################################################################################################################
set_property -dict  { PACKAGE_PIN "E12"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[0]}];                        # IO_L13P_T2_MRCC_15            Sch = GPIO_1_P
set_property -dict  { PACKAGE_PIN "E13"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[1]}];                        # IO_L13N_T2_MRCC_15            Sch = GPIO_1_N
set_property -dict  { PACKAGE_PIN "E16"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[2]}];                        # IO_L17P_T2_A26_15             Sch = GPIO_2_P
set_property -dict  { PACKAGE_PIN "D16"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[3]}];                        # IO_L17N_T2_A25_15             Sch = GPIO_2_N
set_property -dict  { PACKAGE_PIN "F15"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[4]}];                        # IO_L18P_T2_A24_15             Sch = GPIO_3_P
set_property -dict  { PACKAGE_PIN "E15"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[5]}];                        # IO_L18N_T2_A23_15             Sch = GPIO_3_N
set_property -dict  { PACKAGE_PIN "G14"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[6]}];                        # IO_L21P_T3_DQS_15             Sch = GPIO_4_P
set_property -dict  { PACKAGE_PIN "F14"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[7]}];                        # IO_L21N_T3_DQS_A18_15         Sch = GPIO_4_N
set_property -dict  { PACKAGE_PIN "J15"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[8]}];                  `      # IO_L23P_T3_FOE_B_15           Sch = GPIO_5_P
set_property -dict  { PACKAGE_PIN "J16"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[9]}];                        # IO_L23N_T3_FWE_B_15           Sch = GPIO_5_N
set_property -dict  { PACKAGE_PIN "H14"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[10]}];                       # IO_L24P_T3_RS1_15             Sch = GPIO_6_P
set_property -dict  { PACKAGE_PIN "G15"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[11]}];                       # IO_L24N_T3_RS0_15             Sch = GPIO_6_N
set_property -dict  { PACKAGE_PIN "F12"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[12]}];                       # IO_L16P_T2_A28_15             Sch = GPIO_7_P
set_property -dict  { PACKAGE_PIN "F13"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[13]}];                       # IO_L16N_T2_A27_15             Sch = GPIO_7_N
set_property -dict  { PACKAGE_PIN "H12"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[14]}];                       # IO_L20P_T3_A20_15             Sch = GPIO_8_P
set_property -dict  { PACKAGE_PIN "H13"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[15]}];                       # IO_L20N_T3_A19_15             Sch = GPIO_8_N
set_property -dict  { PACKAGE_PIN "H11"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[16]}];                       # IO_L19P_T3_A22_15             Sch = GPIO_9_P
set_property -dict  { PACKAGE_PIN "G12"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[17]}];                       # IO_L19N_T3_A21_VREF_15        Sch = GPIO_9_N
set_property -dict  { PACKAGE_PIN "M5"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[18]}];                       # IO_L6P_T0_34                  Sch = GPIO_10_P
set_property -dict  { PACKAGE_PIN "N4"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[19]}];                       # IO_L6N_T0_VREF_34             Sch = GPIO_10_N
set_property -dict  { PACKAGE_PIN "T4"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[20]}];                       # IO_L9P_T1_DQS_34              Sch = GPIO_11_P
set_property -dict  { PACKAGE_PIN "T3"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[21]}];                       # IO_L9N_T1_DQS_34              Sch = GPIO_11_N
set_property -dict  { PACKAGE_PIN "R3"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[22]}];                       # IO_L8P_T1_34                  Sch = GPIO_12_P
set_property -dict  { PACKAGE_PIN "T2"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[23]}];                       # IO_L8N_T1_34                  Sch = GPIO_12_N
set_property -dict  { PACKAGE_PIN "P4"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[24]}];                       # IO_L5P_T0_34                  Sch = GPIO_13_P
set_property -dict  { PACKAGE_PIN "P3"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[25]}];                       # IO_L5N_T0_34                  Sch = GPIO_13_N
set_property -dict  { PACKAGE_PIN "R2"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[26]}];                       # IO_L7P_T1_34                  Sch = GPIO_14_P
set_property -dict  { PACKAGE_PIN "R1"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[27]}];                       # IO_L7N_T1_34                  Sch = GPIO_14_N
set_property -dict  { PACKAGE_PIN "N3"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[28]}];                       # IO_L3P_T0_DQS_34              Sch = GPIO_15_P
set_property -dict  { PACKAGE_PIN "N2"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[29]}];                       # IO_L3N_T0_DQS_34              Sch = GPIO_15_N
set_property -dict  { PACKAGE_PIN "M2"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[30]}];                       # IO_L2P_T0_34                  Sch = GPIO_16_P
set_property -dict  { PACKAGE_PIN "M1"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[31]}];                       # IO_L2N_T0_34                  Sch = GPIO_16_N
set_property -dict  { PACKAGE_PIN "N1"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[32]}];                       # IO_L4P_T0_34                  Sch = GPIO_17_P
set_property -dict  { PACKAGE_PIN "P1"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[33]}];                       # IO_L4N_T0_34                  Sch = GPIO_17_N
set_property -dict  { PACKAGE_PIN "L4"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[34]}];                       # IO_L1P_T0_34                  Sch = GPIO_18_P
set_property -dict  { PACKAGE_PIN "M4"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P4[35]}];                       # IO_L1N_T0_34                  Sch = GPIO_18_N

###################################################################################################################
#                                              Header P5                                                          #
###################################################################################################################
set_property -dict  { PACKAGE_PIN "D15"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[0]}];                        # IO_L15N_T2_DQS_ADV_B_15       Sch = GPIO_19_N
set_property -dict  { PACKAGE_PIN "D14"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[1]}];                        # IO_L15P_T2_DQS_15             Sch = GPIO_19_P
set_property -dict  { PACKAGE_PIN "B14"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[2]}];                        # IO_L8N_T1_AD10N_15            Sch = GPIO_20_N
set_property -dict  { PACKAGE_PIN "C14"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[3]}];                        # IO_L8P_T1_AD10P_15            Sch = GPIO_20_P
set_property -dict  { PACKAGE_PIN "C13"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[4]}];                        # IO_L12N_T1_MRCC_15            Sch = GPIO_21_N
set_property -dict  { PACKAGE_PIN "D13"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[5]}];                        # IO_L12P_T1_MRCC_15            Sch = GPIO_21_P
set_property -dict  { PACKAGE_PIN "C12"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[6]}];                        # IO_L11N_T1_SRCC_15            Sch = GPIO_22_N
set_property -dict  { PACKAGE_PIN "C11"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[7]}];                        # IO_L11P_T1_SRCC_15            Sch = GPIO_22_P
set_property -dict  { PACKAGE_PIN "G16"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[8]}];                        # IO_L22N_T3_A16_15             Sch = GPIO_23_N
set_property -dict  { PACKAGE_PIN "H16"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[9]}];                        # IO_L22P_T3_A17_15             Sch = GPIO_23_P
set_property -dict  { PACKAGE_PIN "G11"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[10]}];                       # IO_25_15                      Sch = GPIO_35
set_property -dict  { PACKAGE_PIN "D10"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[11]}];                       # IO_0_15                       Sch = GPIO_34
set_property -dict  { PACKAGE_PIN "B16"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[12]}];                       # IO_L10N_T1_AD11N_15           Sch = GPIO_24_N
set_property -dict  { PACKAGE_PIN "C16"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[13]}];                       # IO_L10P_T1_AD11P_15           Sch = GPIO_24_P
set_property -dict  { PACKAGE_PIN "A15"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[14]}];                       # IO_L9N_T1_DQS_AD3N_15         Sch = GPIO_25_N
set_property -dict  { PACKAGE_PIN "B15"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[15]}];                       # IO_L9P_T1_DQS_AD3P_15         Sch = GPIO_25_P
set_property -dict  { PACKAGE_PIN "D11"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[16]}];                       # IO_L14N_T2_SRCC_15            Sch = GPIO_26_N
set_property -dict  { PACKAGE_PIN "E11"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[17]}];                       # IO_L14P_T2_SRCC_15            Sch = GPIO_26_P
set_property -dict  { PACKAGE_PIN "B11"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[18]}];                       # IO_L4N_T0_15                  Sch = GPIO_27_N
set_property -dict  { PACKAGE_PIN "B10"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[19]}];                       # IO_L4P_T0_15                  Sch = GPIO_27_P
set_property -dict  { PACKAGE_PIN "C9"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[20]}];                       # IO_L1N_T0_AD0N_15             Sch = GPIO_28_N
set_property -dict  { PACKAGE_PIN "C8"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[21]}];                       # IO_L1P_T0_AD0P_15             Sch = GPIO_28P
set_property -dict  { PACKAGE_PIN "D9"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[22]}];                       # IO_L6N_T0_VREF_15             Sch = GPIO_29_N
set_property -dict  { PACKAGE_PIN "D8"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[23]}];                       # IO_L6P_T0_15                  Sch = GPIO_29_P
set_property -dict  { PACKAGE_PIN "A14"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[24]}];                       # IO_L7N_T1_AD2N_15             Sch = GPIO_30_N
set_property -dict  { PACKAGE_PIN "A13"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[25]}];                       # IO_L7P_T1_AD2P_15             Sch = GPIO_30_P
set_property -dict  { PACKAGE_PIN "A12"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[26]}];                       # IO_L5N_T0_AD9N_15             Sch = GPIO_31_N
set_property -dict  { PACKAGE_PIN "B12"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[27]}];                       # IO_L5P_T0_AD9P_15             Sch = GPIO_31_P
set_property -dict  { PACKAGE_PIN "A10"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[28]}];                       # IO_L3N_T0_DQS_AD1N_15         Sch = GPIO_32_N
set_property -dict  { PACKAGE_PIN "B9"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[29]}];                       # IO_L3P_T0_DQS_AD1P_15         Sch = GPIO_32_P
set_property -dict  { PACKAGE_PIN "A9"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[30]}];                       # IO_L2N_T0_AD8N_15             Sch = GPIO_33_N
set_property -dict  { PACKAGE_PIN "A8"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[31]}];                       # IO_L2P_T0_AD8P_15             Sch = GPIO_33_P
set_property -dict  { PACKAGE_PIN "P5"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[32]}];                       # IO_L10P_T1_34                 Sch = GPIO_37
set_property -dict  { PACKAGE_PIN "L5"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {P5[33]}];                       # IO_0_34                       Sch = GPIO_36

###################################################################################################################
#                                              GPIO 2X6 CONNECTOR1                                                #
#                                                  Header P7                                                      #
###################################################################################################################
set_property -dict  { PACKAGE_PIN "P10"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN0[0]}];                     # IO_L14P_T2_SRCC_14            Sch = CONN0_D0
set_property -dict  { PACKAGE_PIN "P11"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN0[1]}];                     # IO_L14N_T2_SRCC_14            Sch = CONN0_D1
set_property -dict  { PACKAGE_PIN "T9"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN0[2]}];                     # IO_L22P_T3_A05_D21_14         Sch = CONN0_D2
set_property -dict  { PACKAGE_PIN "T10"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN0[3]}];                     # IO_L22N_T3_A04_D20_14         Sch = CONN0_D3
set_property -dict  { PACKAGE_PIN "R5"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN0[4]}];                     # IO_L23P_T3_A03_D19_14         Sch = CONN0_D4
set_property -dict  { PACKAGE_PIN "T5"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN0[5]}];                     # IO_L23N_T3_A02_D18_14         Sch = CONN0_D5
set_property -dict  { PACKAGE_PIN "R6"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN0[6]}];                     # IO_L24P_T3_A01_D17_14         Sch = CONN0_D6
set_property -dict  { PACKAGE_PIN "R7"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN0[7]}];                     # IO_L24N_T3_A00_D16_14         Sch = CONN0_D7

###################################################################################################################
#                                              GPIO 2X6 CONNECTOR2                                                #
#                                                   Header P10                                                    #
###################################################################################################################

set_property -dict  { PACKAGE_PIN "N13"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN1[0]}];                     # IO_L11P_T1_SRCC_14            Sch = CONN1_D0
set_property -dict  { PACKAGE_PIN "P13"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN1[1]}];                     # IO_L11N_T1_SRCC_14            Sch = CONN1_D1
set_property -dict  { PACKAGE_PIN "L13"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN1[2]}];                     # IO_L5N_T0_D07_14              Sch = CONN1_D2
set_property -dict  { PACKAGE_PIN "M12"   IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN1[3]}];                     # IO_L6N_T0_D08_VREF_14         Sch = CONN1_D3
set_property -dict  { PACKAGE_PIN "N9"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN1[4]}];                     # IO_L18P_T2_A12_D28_14         Sch = CONN1_D4
set_property -dict  { PACKAGE_PIN "P9"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN1[5]}];                     # IO_L18N_T2_A11_D27_14         Sch = CONN1_D5
set_property -dict  { PACKAGE_PIN "P8"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN1[6]}];                     # IO_L20P_T3_A08_D24_14         Sch = CONN1_D6
set_property -dict  { PACKAGE_PIN "R8"    IOSTANDARD LVCMOS33   SLEW FAST } [get_ports {CONN1[7]}];                     # IO_L20N_T3_A07_D23_14         Sch = CONN1_D7

