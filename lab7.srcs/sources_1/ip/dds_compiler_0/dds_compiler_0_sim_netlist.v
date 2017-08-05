// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Sat Aug  5 05:33:00 2017
// Host        : DESKTOP-0GTVITU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/projects/class/fpga/labs/lab7/lab7.srcs/sources_1/ip/dds_compiler_0/dds_compiler_0_sim_netlist.v
// Design      : dds_compiler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_13,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module dds_compiler_0
   (aclk,
    s_axis_phase_tvalid,
    s_axis_phase_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TVALID" *) input s_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TDATA" *) input [7:0]s_axis_phase_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [15:0]m_axis_data_tdata;

  wire aclk;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [7:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [7:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [7:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [7:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "8" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "0" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "10" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "8" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_compiler_0_dds_compiler_v6_0_13 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[7:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[7:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[7:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_U0_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_U0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule

(* C_ACCUMULATOR_WIDTH = "8" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "0" *) 
(* C_HAS_PHASEGEN = "0" *) (* C_HAS_PHASE_OUT = "0" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "1" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "2" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "16" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "1" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "0" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "10" *) 
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "8" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "dds_compiler_v6_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module dds_compiler_0_dds_compiler_v6_0_13
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [7:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [15:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [0:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [7:0]debug_axi_pinc_in;
  output [7:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [7:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire aclk;
  wire event_s_phase_tlast_missing;
  wire [9:0]\^m_axis_data_tdata ;
  wire m_axis_data_tvalid;
  wire [7:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_config_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [7:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [7:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [7:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [14:9]NLW_i_synth_m_axis_data_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[7] = \<const0> ;
  assign debug_axi_pinc_in[6] = \<const0> ;
  assign debug_axi_pinc_in[5] = \<const0> ;
  assign debug_axi_pinc_in[4] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[7] = \<const0> ;
  assign debug_axi_poff_in[6] = \<const0> ;
  assign debug_axi_poff_in[5] = \<const0> ;
  assign debug_axi_poff_in[4] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[7] = \<const0> ;
  assign debug_phase[6] = \<const0> ;
  assign debug_phase[5] = \<const0> ;
  assign debug_phase[4] = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tdata[15] = \^m_axis_data_tdata [9];
  assign m_axis_data_tdata[14] = \^m_axis_data_tdata [9];
  assign m_axis_data_tdata[13] = \^m_axis_data_tdata [9];
  assign m_axis_data_tdata[12] = \^m_axis_data_tdata [9];
  assign m_axis_data_tdata[11] = \^m_axis_data_tdata [9];
  assign m_axis_data_tdata[10] = \^m_axis_data_tdata [9];
  assign m_axis_data_tdata[9:0] = \^m_axis_data_tdata [9:0];
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_phase_tdata[0] = \<const0> ;
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign m_axis_phase_tvalid = \<const0> ;
  assign s_axis_config_tready = \<const0> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ACCUMULATOR_WIDTH = "8" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "0" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "10" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "8" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_compiler_0_dds_compiler_v6_0_13_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[7:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[7:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[7:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(event_s_phase_tlast_missing),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata({\^m_axis_data_tdata [9],NLW_i_synth_m_axis_data_tdata_UNCONNECTED[14:9],\^m_axis_data_tdata [8:0]}),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_i_synth_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_i_synth_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
TvtROpMaL0roOEiaTPPT4e5ER2Ano/2IHL04+lqpHIOhml7R99jfOiKc+8n39dhWyMrL9iYdiswb
RLtUPexkEg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MoNeIm5zXlcK6vCWZG4JoC8J0DfK0StuXObGlmRG73BGxVD6jsKoxkOnL4oOgb86LUy5HhoE+kEs
bDZr+ycOTTNcQtASTjXy15ERW+Eef/oyTaN/K6ymUtU1TYZOvbv3HQ1ru1AdwnaMWANvopqb7JbX
rd9tDL2u0oM/3rzQvTI=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Emm30NBOUyBb85ubeWM1z/RHe1w2/2MZseQLJuAwAwvLNnMgZVVQf6+IQPiWX3S/rVi6pgYzu5hJ
VJVYTysTNqafPBdpXdKFmjLp6DJ0lIPEAuc4i8Tyq0tImFbZwsHbZXav6+rqKqD4t0FJrbtSecns
uVs65JY4k+d7e/C+r5Q=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Tq7bslAbb0X/m/qKbZMPqkV1cnoSeoQNJlBMUIv0dUQdS0rhCvMSHltY+6hAC7fl8t4wWslEx9It
VSDLszVDR+BezhCsvgA7fqoFb/Cz0ERu67YA3IGPC7Tdjo0Gc2AIPqoxc4y/kLUc0YUqBdy+6f7M
knhffqD3iV1G/87RTM5KZnCQ7UyMpByDJXTJqSU8vjewM0z0+C11DYrHfXCPYT+KlhCIaR/cNpy1
kNUuHUSgsS2wDP7nZu0zanzcxrR3P+T/8/vWoptfezwsCIuC/72xvaO1U2arD89DXkoDLIQ2Q0VZ
hQzQWU/U7deibHHBMpKy1R1pIWXRD6/R7/IQKA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lwQggcP1KhGEom/t13hx9HFFHfk9JCocFP9fu7x6DpsxQj46vD1yfwamy+saiGWvPQRNN2yzSN1/
86rvv7o/Uxwkp4qQ/eaRO+nlInsOh1TrGkpvNdqR4R2fooFM06QOj8JTMFD75aOAV0WeXDkydomf
xzyHxoZkFRdE9wJkVYxZTcYpfwLMzpwWoGxcIz89xPeVLDGwPvEUfHfwxWHSP/wkg5DXj5j6uqYg
u+bcbOHgZPkf5JN9JkPEMPrLrQbCSYuZfcBVkTHWQ5dm0AWb36DwJqzN14BZwcMdh7QnVsA9hSHh
ofCVW1BCuvYhVkfmFEGx/FUhfimRh7nDMcOkwA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aP2VOS4n48LuE3oNxGlcexBtKWwcJ/16g4KxzeNnilOKiTYF+tptAquAlS97Xrb0YSnua5Zo+htQ
pNjpXhpg5MDG0YVhNyAmRlWWgOmgWUGshrGHwoPhJkaCqTi6VPFXjUruu7p5UdzSXBBnaCm0ctoV
dxvf2SVsSpyLXoPdCNfb/u1ROxdAMzBp/bEZ5Rc8m3lRyTqj3B3JOkktmT0eWxERviASB0buZlQh
Wxc860aiKwbeXzGIUmwtIdIOhcrW/hzzAqMpi0eJ3rpd3uGl90sTkWgAaTwpCnq8qJO9ZG8HOS43
5ZvY+wmotkWyu1ewXRN84PDvKdhA0ojiZnCpmg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
YJyAHb0/2gkEzIJuAZWao7EWfpCQM2SlALt+BprPQR+apeZlrkYFpUdeyMCYtIV7av7PaQ5E4bxt
trgcDO3tPlhcnywW/4j5iZMhIW2jkSsAZf4lr5kKgZ1068OWwo+TohqOLqMpMkl0zqFz7OnSzE88
dIohO4RK+Vqxeru5MiWROjaI58HhPAOvniHBpaZ6tV8BfyGsq/8Wap2RC5D6X1oxmiKKw9K5bU3d
UEkAy2GcoHRgTSop6qkv6UaYcHtFMZ9NtsYc1KW6hKhtdC5fEGPKBypuQQywhRwNdnar7NkvWLeX
WhPYwopRy9Cy8dTz7OLZ2rwMdaShzIgQL1Lh5w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
3bFzv+95yoJJB/1z06I8MI43mLmZHclS8eULsp/KDWr7gFOtoAkzE7iq7HGE7TPpMsrgjquI1FxN
qUFh6lhnn46HKTMKf1beZGH1LenKzMFO/ovVucDr0K7jdqpchtnOKIBR0o2mccCqAIji+OhK1Hzk
1woQaZ4A8BQe5RBMkcI7FBkZqGbJC5wBqydKW1qwA+6vTulsjqXLxXP8laB9tQQ4prPSt/qbBhb3
wU4djcTghvMb+veQvNlpuVseJxP/D3XT6GuFnS8fmNAs3Hs19AzgaEVHAI9dbm7MCT++X9hnC8un
JFZIVRblaB3az44Xi8N+300ZP3VjvHPBpE8s7A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24320)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
