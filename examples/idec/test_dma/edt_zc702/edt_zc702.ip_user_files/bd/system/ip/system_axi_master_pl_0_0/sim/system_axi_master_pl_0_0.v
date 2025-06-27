// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:axi_master_pl:1.0
// IP Revision: 1910241101

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_axi_master_pl_0_0 (
  s_axi_AXILiteS_AWADDR,
  s_axi_AXILiteS_AWVALID,
  s_axi_AXILiteS_AWREADY,
  s_axi_AXILiteS_WDATA,
  s_axi_AXILiteS_WSTRB,
  s_axi_AXILiteS_WVALID,
  s_axi_AXILiteS_WREADY,
  s_axi_AXILiteS_BRESP,
  s_axi_AXILiteS_BVALID,
  s_axi_AXILiteS_BREADY,
  s_axi_AXILiteS_ARADDR,
  s_axi_AXILiteS_ARVALID,
  s_axi_AXILiteS_ARREADY,
  s_axi_AXILiteS_RDATA,
  s_axi_AXILiteS_RRESP,
  s_axi_AXILiteS_RVALID,
  s_axi_AXILiteS_RREADY,
  ap_clk,
  ap_rst_n,
  m_axi_a_AWADDR,
  m_axi_a_AWLEN,
  m_axi_a_AWSIZE,
  m_axi_a_AWBURST,
  m_axi_a_AWLOCK,
  m_axi_a_AWREGION,
  m_axi_a_AWCACHE,
  m_axi_a_AWPROT,
  m_axi_a_AWQOS,
  m_axi_a_AWVALID,
  m_axi_a_AWREADY,
  m_axi_a_WDATA,
  m_axi_a_WSTRB,
  m_axi_a_WLAST,
  m_axi_a_WVALID,
  m_axi_a_WREADY,
  m_axi_a_BRESP,
  m_axi_a_BVALID,
  m_axi_a_BREADY,
  m_axi_a_ARADDR,
  m_axi_a_ARLEN,
  m_axi_a_ARSIZE,
  m_axi_a_ARBURST,
  m_axi_a_ARLOCK,
  m_axi_a_ARREGION,
  m_axi_a_ARCACHE,
  m_axi_a_ARPROT,
  m_axi_a_ARQOS,
  m_axi_a_ARVALID,
  m_axi_a_ARREADY,
  m_axi_a_RDATA,
  m_axi_a_RRESP,
  m_axi_a_RLAST,
  m_axi_a_RVALID,
  m_axi_a_RREADY,
  BRAM_A_Clk_A,
  BRAM_A_Rst_A,
  BRAM_A_EN_A,
  BRAM_A_WEN_A,
  BRAM_A_Addr_A,
  BRAM_A_Din_A,
  BRAM_A_Dout_A,
  BRAM_B_Clk_A,
  BRAM_B_Rst_A,
  BRAM_B_EN_A,
  BRAM_B_WEN_A,
  BRAM_B_Addr_A,
  BRAM_B_Din_A,
  BRAM_B_Dout_A
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000,\
 ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [5 : 0] s_axi_AXILiteS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID" *)
input wire s_axi_AXILiteS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY" *)
output wire s_axi_AXILiteS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA" *)
input wire [31 : 0] s_axi_AXILiteS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB" *)
input wire [3 : 0] s_axi_AXILiteS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID" *)
input wire s_axi_AXILiteS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY" *)
output wire s_axi_AXILiteS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP" *)
output wire [1 : 0] s_axi_AXILiteS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID" *)
output wire s_axi_AXILiteS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY" *)
input wire s_axi_AXILiteS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR" *)
input wire [5 : 0] s_axi_AXILiteS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID" *)
input wire s_axi_AXILiteS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY" *)
output wire s_axi_AXILiteS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA" *)
output wire [31 : 0] s_axi_AXILiteS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP" *)
output wire [1 : 0] s_axi_AXILiteS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID" *)
output wire s_axi_AXILiteS_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY" *)
input wire s_axi_AXILiteS_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXILiteS:m_axi_a, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, FREQ_TOLERANCE_\
HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWADDR" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_a, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN syste\
m_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire [31 : 0] m_axi_a_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWLEN" *)
output wire [7 : 0] m_axi_a_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWSIZE" *)
output wire [2 : 0] m_axi_a_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWBURST" *)
output wire [1 : 0] m_axi_a_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWLOCK" *)
output wire [1 : 0] m_axi_a_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWREGION" *)
output wire [3 : 0] m_axi_a_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWCACHE" *)
output wire [3 : 0] m_axi_a_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWPROT" *)
output wire [2 : 0] m_axi_a_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWQOS" *)
output wire [3 : 0] m_axi_a_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWVALID" *)
output wire m_axi_a_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a AWREADY" *)
input wire m_axi_a_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a WDATA" *)
output wire [31 : 0] m_axi_a_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a WSTRB" *)
output wire [3 : 0] m_axi_a_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a WLAST" *)
output wire m_axi_a_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a WVALID" *)
output wire m_axi_a_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a WREADY" *)
input wire m_axi_a_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a BRESP" *)
input wire [1 : 0] m_axi_a_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a BVALID" *)
input wire m_axi_a_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a BREADY" *)
output wire m_axi_a_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARADDR" *)
output wire [31 : 0] m_axi_a_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARLEN" *)
output wire [7 : 0] m_axi_a_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARSIZE" *)
output wire [2 : 0] m_axi_a_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARBURST" *)
output wire [1 : 0] m_axi_a_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARLOCK" *)
output wire [1 : 0] m_axi_a_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARREGION" *)
output wire [3 : 0] m_axi_a_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARCACHE" *)
output wire [3 : 0] m_axi_a_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARPROT" *)
output wire [2 : 0] m_axi_a_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARQOS" *)
output wire [3 : 0] m_axi_a_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARVALID" *)
output wire m_axi_a_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a ARREADY" *)
input wire m_axi_a_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a RDATA" *)
input wire [31 : 0] m_axi_a_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a RRESP" *)
input wire [1 : 0] m_axi_a_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a RLAST" *)
input wire m_axi_a_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a RVALID" *)
input wire m_axi_a_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_a RREADY" *)
output wire m_axi_a_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A_PORTA CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_A_PORTA, MEM_WIDTH 32, MEM_SIZE 256, MASTER_TYPE BRAM_CTRL, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} CLK {datatype {name {attribs {resolve_type immed\
iate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attrib\
s {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ADDR {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}}\
 value false}}}} WE {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DIN {datatype {name {attribs {resolve_type immediate de\
pendency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DOUT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {\
attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, MEM_ECC NONE, READ_LATENCY 1" *)
output wire BRAM_A_Clk_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A_PORTA RST" *)
output wire BRAM_A_Rst_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A_PORTA EN" *)
output wire BRAM_A_EN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A_PORTA WE" *)
output wire [3 : 0] BRAM_A_WEN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A_PORTA ADDR" *)
output wire [31 : 0] BRAM_A_Addr_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A_PORTA DIN" *)
output wire [31 : 0] BRAM_A_Din_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A_PORTA DOUT" *)
input wire [31 : 0] BRAM_A_Dout_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_B_PORTA CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_B_PORTA, MEM_WIDTH 32, MEM_SIZE 256, MASTER_TYPE BRAM_CTRL, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} CLK {datatype {name {attribs {resolve_type immed\
iate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attrib\
s {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ADDR {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}}\
 value false}}}} WE {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DIN {datatype {name {attribs {resolve_type immediate de\
pendency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DOUT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {\
attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, MEM_ECC NONE, READ_LATENCY 1" *)
output wire BRAM_B_Clk_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_B_PORTA RST" *)
output wire BRAM_B_Rst_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_B_PORTA EN" *)
output wire BRAM_B_EN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_B_PORTA WE" *)
output wire [3 : 0] BRAM_B_WEN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_B_PORTA ADDR" *)
output wire [31 : 0] BRAM_B_Addr_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_B_PORTA DIN" *)
output wire [31 : 0] BRAM_B_Din_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_B_PORTA DOUT" *)
input wire [31 : 0] BRAM_B_Dout_A;

  axi_master_pl #(
    .C_S_AXI_AXILITES_ADDR_WIDTH(6),
    .C_S_AXI_AXILITES_DATA_WIDTH(32),
    .C_M_AXI_A_ID_WIDTH(1),
    .C_M_AXI_A_ADDR_WIDTH(32),
    .C_M_AXI_A_DATA_WIDTH(32),
    .C_M_AXI_A_AWUSER_WIDTH(1),
    .C_M_AXI_A_ARUSER_WIDTH(1),
    .C_M_AXI_A_WUSER_WIDTH(1),
    .C_M_AXI_A_RUSER_WIDTH(1),
    .C_M_AXI_A_BUSER_WIDTH(1),
    .C_M_AXI_A_USER_VALUE(32'H00000000),
    .C_M_AXI_A_PROT_VALUE(3'B000),
    .C_M_AXI_A_CACHE_VALUE(4'B0011),
    .C_M_AXI_A_TARGET_ADDR(32'H00000000)
  ) inst (
    .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
    .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
    .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
    .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
    .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
    .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),
    .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
    .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),
    .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
    .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
    .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
    .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
    .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
    .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
    .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),
    .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
    .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_a_AWID(),
    .m_axi_a_AWADDR(m_axi_a_AWADDR),
    .m_axi_a_AWLEN(m_axi_a_AWLEN),
    .m_axi_a_AWSIZE(m_axi_a_AWSIZE),
    .m_axi_a_AWBURST(m_axi_a_AWBURST),
    .m_axi_a_AWLOCK(m_axi_a_AWLOCK),
    .m_axi_a_AWREGION(m_axi_a_AWREGION),
    .m_axi_a_AWCACHE(m_axi_a_AWCACHE),
    .m_axi_a_AWPROT(m_axi_a_AWPROT),
    .m_axi_a_AWQOS(m_axi_a_AWQOS),
    .m_axi_a_AWUSER(),
    .m_axi_a_AWVALID(m_axi_a_AWVALID),
    .m_axi_a_AWREADY(m_axi_a_AWREADY),
    .m_axi_a_WID(),
    .m_axi_a_WDATA(m_axi_a_WDATA),
    .m_axi_a_WSTRB(m_axi_a_WSTRB),
    .m_axi_a_WLAST(m_axi_a_WLAST),
    .m_axi_a_WUSER(),
    .m_axi_a_WVALID(m_axi_a_WVALID),
    .m_axi_a_WREADY(m_axi_a_WREADY),
    .m_axi_a_BID(1'B0),
    .m_axi_a_BRESP(m_axi_a_BRESP),
    .m_axi_a_BUSER(1'B0),
    .m_axi_a_BVALID(m_axi_a_BVALID),
    .m_axi_a_BREADY(m_axi_a_BREADY),
    .m_axi_a_ARID(),
    .m_axi_a_ARADDR(m_axi_a_ARADDR),
    .m_axi_a_ARLEN(m_axi_a_ARLEN),
    .m_axi_a_ARSIZE(m_axi_a_ARSIZE),
    .m_axi_a_ARBURST(m_axi_a_ARBURST),
    .m_axi_a_ARLOCK(m_axi_a_ARLOCK),
    .m_axi_a_ARREGION(m_axi_a_ARREGION),
    .m_axi_a_ARCACHE(m_axi_a_ARCACHE),
    .m_axi_a_ARPROT(m_axi_a_ARPROT),
    .m_axi_a_ARQOS(m_axi_a_ARQOS),
    .m_axi_a_ARUSER(),
    .m_axi_a_ARVALID(m_axi_a_ARVALID),
    .m_axi_a_ARREADY(m_axi_a_ARREADY),
    .m_axi_a_RID(1'B0),
    .m_axi_a_RDATA(m_axi_a_RDATA),
    .m_axi_a_RRESP(m_axi_a_RRESP),
    .m_axi_a_RLAST(m_axi_a_RLAST),
    .m_axi_a_RUSER(1'B0),
    .m_axi_a_RVALID(m_axi_a_RVALID),
    .m_axi_a_RREADY(m_axi_a_RREADY),
    .BRAM_A_Clk_A(BRAM_A_Clk_A),
    .BRAM_A_Rst_A(BRAM_A_Rst_A),
    .BRAM_A_EN_A(BRAM_A_EN_A),
    .BRAM_A_WEN_A(BRAM_A_WEN_A),
    .BRAM_A_Addr_A(BRAM_A_Addr_A),
    .BRAM_A_Din_A(BRAM_A_Din_A),
    .BRAM_A_Dout_A(BRAM_A_Dout_A),
    .BRAM_B_Clk_A(BRAM_B_Clk_A),
    .BRAM_B_Rst_A(BRAM_B_Rst_A),
    .BRAM_B_EN_A(BRAM_B_EN_A),
    .BRAM_B_WEN_A(BRAM_B_WEN_A),
    .BRAM_B_Addr_A(BRAM_B_Addr_A),
    .BRAM_B_Din_A(BRAM_B_Din_A),
    .BRAM_B_Dout_A(BRAM_B_Dout_A)
  );
endmodule
