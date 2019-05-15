-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity unite is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    m_axi_u_adjs_data_V_AWVALID : OUT STD_LOGIC;
    m_axi_u_adjs_data_V_AWREADY : IN STD_LOGIC;
    m_axi_u_adjs_data_V_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_u_adjs_data_V_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_u_adjs_data_V_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_u_adjs_data_V_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_u_adjs_data_V_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_u_adjs_data_V_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_u_adjs_data_V_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_u_adjs_data_V_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_u_adjs_data_V_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_u_adjs_data_V_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_u_adjs_data_V_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_u_adjs_data_V_WVALID : OUT STD_LOGIC;
    m_axi_u_adjs_data_V_WREADY : IN STD_LOGIC;
    m_axi_u_adjs_data_V_WDATA : OUT STD_LOGIC_VECTOR (1023 downto 0);
    m_axi_u_adjs_data_V_WSTRB : OUT STD_LOGIC_VECTOR (127 downto 0);
    m_axi_u_adjs_data_V_WLAST : OUT STD_LOGIC;
    m_axi_u_adjs_data_V_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_u_adjs_data_V_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_u_adjs_data_V_ARVALID : OUT STD_LOGIC;
    m_axi_u_adjs_data_V_ARREADY : IN STD_LOGIC;
    m_axi_u_adjs_data_V_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_u_adjs_data_V_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_u_adjs_data_V_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_u_adjs_data_V_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_u_adjs_data_V_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_u_adjs_data_V_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_u_adjs_data_V_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_u_adjs_data_V_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_u_adjs_data_V_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_u_adjs_data_V_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_u_adjs_data_V_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_u_adjs_data_V_RVALID : IN STD_LOGIC;
    m_axi_u_adjs_data_V_RREADY : OUT STD_LOGIC;
    m_axi_u_adjs_data_V_RDATA : IN STD_LOGIC_VECTOR (1023 downto 0);
    m_axi_u_adjs_data_V_RLAST : IN STD_LOGIC;
    m_axi_u_adjs_data_V_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_u_adjs_data_V_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_u_adjs_data_V_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_u_adjs_data_V_BVALID : IN STD_LOGIC;
    m_axi_u_adjs_data_V_BREADY : OUT STD_LOGIC;
    m_axi_u_adjs_data_V_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_u_adjs_data_V_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_u_adjs_data_V_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    u_adjs_data_V_offset : IN STD_LOGIC_VECTOR (24 downto 0) );
end;


architecture behav of unite is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (12 downto 0) := "0000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (12 downto 0) := "0000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (12 downto 0) := "0000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (12 downto 0) := "0000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (12 downto 0) := "0000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (12 downto 0) := "0000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (12 downto 0) := "0001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (12 downto 0) := "0010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (12 downto 0) := "0100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (12 downto 0) := "1000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1024_lc_1 : STD_LOGIC_VECTOR (1023 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv128_lc_1 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv1024_lc_4 : STD_LOGIC_VECTOR (1023 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111";
    constant ap_const_lv1024_lc_2 : STD_LOGIC_VECTOR (1023 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_start : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal num : STD_LOGIC_VECTOR (5 downto 0);
    signal num_read_reg_269 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_1_fu_155_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_1_reg_281 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_readItems_fu_144_ap_idle : STD_LOGIC;
    signal grp_readItems_fu_144_ap_ready : STD_LOGIC;
    signal grp_readItems_fu_144_ap_done : STD_LOGIC;
    signal i_fu_167_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_reg_289 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal pipe_stream_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal pipe_stream_V_empty_n : STD_LOGIC;
    signal pipe_stream_V_read : STD_LOGIC;
    signal exitcond_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3 : BOOLEAN;
    signal tmp_77_reg_294 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_68_fu_173_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_68_reg_300 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_8_i_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_i_reg_305 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal loc_V_fu_207_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal loc_V_reg_310 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_1_fu_257_p3 : STD_LOGIC_VECTOR (1023 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_writeResult_fu_138_ap_return : STD_LOGIC_VECTOR (1023 downto 0);
    signal grp_readItems_fu_144_ap_start : STD_LOGIC;
    signal grp_readItems_fu_144_m_axi_adjs_data_V_AWVALID : STD_LOGIC;
    signal grp_readItems_fu_144_m_axi_adjs_data_V_AWADDR : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_AWID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_AWLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_AWSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_AWBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_AWLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_AWCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_AWPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_AWQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_AWREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_AWUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_WVALID : STD_LOGIC;
    signal grp_readItems_fu_144_m_axi_adjs_data_V_WDATA : STD_LOGIC_VECTOR (1023 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_WSTRB : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_WLAST : STD_LOGIC;
    signal grp_readItems_fu_144_m_axi_adjs_data_V_WID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_WUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_ARVALID : STD_LOGIC;
    signal grp_readItems_fu_144_m_axi_adjs_data_V_ARADDR : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_ARID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_ARLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_ARSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_ARBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_ARLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_ARCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_ARPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_ARQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_ARREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_ARUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_readItems_fu_144_m_axi_adjs_data_V_RREADY : STD_LOGIC;
    signal grp_readItems_fu_144_m_axi_adjs_data_V_BREADY : STD_LOGIC;
    signal grp_readItems_fu_144_i_out_stream_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_readItems_fu_144_i_out_stream_V_write : STD_LOGIC;
    signal p_Val2_s_reg_115 : STD_LOGIC_VECTOR (1023 downto 0);
    signal i_i_reg_127 : STD_LOGIC_VECTOR (10 downto 0);
    signal grp_readItems_fu_144_ap_start_reg : STD_LOGIC := '0';
    signal pipe_stream_V_full_n : STD_LOGIC;
    signal pipe_stream_V_write : STD_LOGIC;
    signal tmp_fu_182_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_64_fu_185_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_65_fu_193_p1 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_66_fu_197_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal temp_V_fu_203_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_69_fu_213_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_70_fu_220_p1 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_71_fu_224_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_72_fu_230_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_74_fu_242_p1 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_73_fu_236_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_75_fu_245_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal p_Result_s_fu_251_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_ready : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_return : STD_LOGIC_VECTOR (1023 downto 0);

    component writeResult IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        cnt_data_V : IN STD_LOGIC_VECTOR (1023 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (1023 downto 0) );
    end component;


    component readItems IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        num : IN STD_LOGIC_VECTOR (5 downto 0);
        m_axi_adjs_data_V_AWVALID : OUT STD_LOGIC;
        m_axi_adjs_data_V_AWREADY : IN STD_LOGIC;
        m_axi_adjs_data_V_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_adjs_data_V_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_adjs_data_V_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_adjs_data_V_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_adjs_data_V_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_adjs_data_V_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_adjs_data_V_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_adjs_data_V_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_adjs_data_V_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_adjs_data_V_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_adjs_data_V_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_adjs_data_V_WVALID : OUT STD_LOGIC;
        m_axi_adjs_data_V_WREADY : IN STD_LOGIC;
        m_axi_adjs_data_V_WDATA : OUT STD_LOGIC_VECTOR (1023 downto 0);
        m_axi_adjs_data_V_WSTRB : OUT STD_LOGIC_VECTOR (127 downto 0);
        m_axi_adjs_data_V_WLAST : OUT STD_LOGIC;
        m_axi_adjs_data_V_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_adjs_data_V_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_adjs_data_V_ARVALID : OUT STD_LOGIC;
        m_axi_adjs_data_V_ARREADY : IN STD_LOGIC;
        m_axi_adjs_data_V_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_adjs_data_V_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_adjs_data_V_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_adjs_data_V_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_adjs_data_V_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_adjs_data_V_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_adjs_data_V_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_adjs_data_V_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_adjs_data_V_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_adjs_data_V_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_adjs_data_V_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_adjs_data_V_RVALID : IN STD_LOGIC;
        m_axi_adjs_data_V_RREADY : OUT STD_LOGIC;
        m_axi_adjs_data_V_RDATA : IN STD_LOGIC_VECTOR (1023 downto 0);
        m_axi_adjs_data_V_RLAST : IN STD_LOGIC;
        m_axi_adjs_data_V_RID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_adjs_data_V_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_adjs_data_V_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_adjs_data_V_BVALID : IN STD_LOGIC;
        m_axi_adjs_data_V_BREADY : OUT STD_LOGIC;
        m_axi_adjs_data_V_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_adjs_data_V_BID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_adjs_data_V_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        adjs_data_V_offset : IN STD_LOGIC_VECTOR (24 downto 0);
        i_out_stream_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        i_out_stream_V_full_n : IN STD_LOGIC;
        i_out_stream_V_write : OUT STD_LOGIC );
    end component;


    component fifo_w32_d1_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    grp_readItems_fu_144 : component readItems
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_readItems_fu_144_ap_start,
        ap_done => grp_readItems_fu_144_ap_done,
        ap_idle => grp_readItems_fu_144_ap_idle,
        ap_ready => grp_readItems_fu_144_ap_ready,
        num => num_read_reg_269,
        m_axi_adjs_data_V_AWVALID => grp_readItems_fu_144_m_axi_adjs_data_V_AWVALID,
        m_axi_adjs_data_V_AWREADY => ap_const_logic_0,
        m_axi_adjs_data_V_AWADDR => grp_readItems_fu_144_m_axi_adjs_data_V_AWADDR,
        m_axi_adjs_data_V_AWID => grp_readItems_fu_144_m_axi_adjs_data_V_AWID,
        m_axi_adjs_data_V_AWLEN => grp_readItems_fu_144_m_axi_adjs_data_V_AWLEN,
        m_axi_adjs_data_V_AWSIZE => grp_readItems_fu_144_m_axi_adjs_data_V_AWSIZE,
        m_axi_adjs_data_V_AWBURST => grp_readItems_fu_144_m_axi_adjs_data_V_AWBURST,
        m_axi_adjs_data_V_AWLOCK => grp_readItems_fu_144_m_axi_adjs_data_V_AWLOCK,
        m_axi_adjs_data_V_AWCACHE => grp_readItems_fu_144_m_axi_adjs_data_V_AWCACHE,
        m_axi_adjs_data_V_AWPROT => grp_readItems_fu_144_m_axi_adjs_data_V_AWPROT,
        m_axi_adjs_data_V_AWQOS => grp_readItems_fu_144_m_axi_adjs_data_V_AWQOS,
        m_axi_adjs_data_V_AWREGION => grp_readItems_fu_144_m_axi_adjs_data_V_AWREGION,
        m_axi_adjs_data_V_AWUSER => grp_readItems_fu_144_m_axi_adjs_data_V_AWUSER,
        m_axi_adjs_data_V_WVALID => grp_readItems_fu_144_m_axi_adjs_data_V_WVALID,
        m_axi_adjs_data_V_WREADY => ap_const_logic_0,
        m_axi_adjs_data_V_WDATA => grp_readItems_fu_144_m_axi_adjs_data_V_WDATA,
        m_axi_adjs_data_V_WSTRB => grp_readItems_fu_144_m_axi_adjs_data_V_WSTRB,
        m_axi_adjs_data_V_WLAST => grp_readItems_fu_144_m_axi_adjs_data_V_WLAST,
        m_axi_adjs_data_V_WID => grp_readItems_fu_144_m_axi_adjs_data_V_WID,
        m_axi_adjs_data_V_WUSER => grp_readItems_fu_144_m_axi_adjs_data_V_WUSER,
        m_axi_adjs_data_V_ARVALID => grp_readItems_fu_144_m_axi_adjs_data_V_ARVALID,
        m_axi_adjs_data_V_ARREADY => m_axi_u_adjs_data_V_ARREADY,
        m_axi_adjs_data_V_ARADDR => grp_readItems_fu_144_m_axi_adjs_data_V_ARADDR,
        m_axi_adjs_data_V_ARID => grp_readItems_fu_144_m_axi_adjs_data_V_ARID,
        m_axi_adjs_data_V_ARLEN => grp_readItems_fu_144_m_axi_adjs_data_V_ARLEN,
        m_axi_adjs_data_V_ARSIZE => grp_readItems_fu_144_m_axi_adjs_data_V_ARSIZE,
        m_axi_adjs_data_V_ARBURST => grp_readItems_fu_144_m_axi_adjs_data_V_ARBURST,
        m_axi_adjs_data_V_ARLOCK => grp_readItems_fu_144_m_axi_adjs_data_V_ARLOCK,
        m_axi_adjs_data_V_ARCACHE => grp_readItems_fu_144_m_axi_adjs_data_V_ARCACHE,
        m_axi_adjs_data_V_ARPROT => grp_readItems_fu_144_m_axi_adjs_data_V_ARPROT,
        m_axi_adjs_data_V_ARQOS => grp_readItems_fu_144_m_axi_adjs_data_V_ARQOS,
        m_axi_adjs_data_V_ARREGION => grp_readItems_fu_144_m_axi_adjs_data_V_ARREGION,
        m_axi_adjs_data_V_ARUSER => grp_readItems_fu_144_m_axi_adjs_data_V_ARUSER,
        m_axi_adjs_data_V_RVALID => m_axi_u_adjs_data_V_RVALID,
        m_axi_adjs_data_V_RREADY => grp_readItems_fu_144_m_axi_adjs_data_V_RREADY,
        m_axi_adjs_data_V_RDATA => m_axi_u_adjs_data_V_RDATA,
        m_axi_adjs_data_V_RLAST => m_axi_u_adjs_data_V_RLAST,
        m_axi_adjs_data_V_RID => m_axi_u_adjs_data_V_RID,
        m_axi_adjs_data_V_RUSER => m_axi_u_adjs_data_V_RUSER,
        m_axi_adjs_data_V_RRESP => m_axi_u_adjs_data_V_RRESP,
        m_axi_adjs_data_V_BVALID => ap_const_logic_0,
        m_axi_adjs_data_V_BREADY => grp_readItems_fu_144_m_axi_adjs_data_V_BREADY,
        m_axi_adjs_data_V_BRESP => ap_const_lv2_0,
        m_axi_adjs_data_V_BID => ap_const_lv1_0,
        m_axi_adjs_data_V_BUSER => ap_const_lv1_0,
        adjs_data_V_offset => u_adjs_data_V_offset,
        i_out_stream_V_din => grp_readItems_fu_144_i_out_stream_V_din,
        i_out_stream_V_full_n => pipe_stream_V_full_n,
        i_out_stream_V_write => grp_readItems_fu_144_i_out_stream_V_write);

    pipe_stream_V_fifo_U : component fifo_w32_d1_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => grp_readItems_fu_144_i_out_stream_V_din,
        if_full_n => pipe_stream_V_full_n,
        if_write => pipe_stream_V_write,
        if_dout => pipe_stream_V_dout,
        if_empty_n => pipe_stream_V_empty_n,
        if_read => pipe_stream_V_read);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_readItems_fu_144_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_readItems_fu_144_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_readItems_fu_144_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_readItems_fu_144_ap_ready = ap_const_logic_1)) then 
                    grp_readItems_fu_144_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_i_reg_127_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i_i_reg_127 <= i_reg_289;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_readItems_fu_144_ap_done = ap_const_logic_1))) then 
                i_i_reg_127 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    p_Val2_s_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                p_Val2_s_reg_115 <= p_Result_1_fu_257_p3;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_readItems_fu_144_ap_done = ap_const_logic_1))) then 
                p_Val2_s_reg_115 <= ap_const_lv1024_lc_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_fu_162_p2 = ap_const_lv1_0) and (pipe_stream_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                i_reg_289 <= i_fu_167_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                loc_V_reg_310 <= loc_V_fu_207_p2;
                tmp_8_i_reg_305 <= tmp_8_i_fu_177_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_fu_162_p2 = ap_const_lv1_0) and (pipe_stream_V_empty_n = ap_const_logic_0))) and (exitcond_fu_162_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                tmp_68_reg_300 <= tmp_68_fu_173_p1;
                tmp_77_reg_294 <= pipe_stream_V_dout;
            end if;
        end if;
    end process;
    num_read_reg_269(5 downto 0) <= "000000";
    tmp_1_reg_281(10 downto 0) <= "00000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, grp_readItems_fu_144_ap_done, ap_CS_fsm_state3, pipe_stream_V_empty_n, exitcond_fu_162_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_readItems_fu_144_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if ((not(((exitcond_fu_162_p2 = ap_const_lv1_0) and (pipe_stream_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond_fu_162_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                elsif ((not(((exitcond_fu_162_p2 = ap_const_lv1_0) and (pipe_stream_V_empty_n = ap_const_logic_0))) and (exitcond_fu_162_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_block_state3_assign_proc : process(pipe_stream_V_empty_n, exitcond_fu_162_p2)
    begin
                ap_block_state3 <= ((exitcond_fu_162_p2 = ap_const_lv1_0) and (pipe_stream_V_empty_n = ap_const_logic_0));
    end process;

    ap_start <= ap_const_logic_1;
    exitcond_fu_162_p2 <= "1" when (i_i_reg_127 = tmp_1_reg_281) else "0";
    grp_readItems_fu_144_ap_start <= grp_readItems_fu_144_ap_start_reg;
    i_fu_167_p2 <= std_logic_vector(unsigned(i_i_reg_127) + unsigned(ap_const_lv11_1));
    loc_V_fu_207_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(temp_V_fu_203_p1));
    m_axi_u_adjs_data_V_ARADDR <= grp_readItems_fu_144_m_axi_adjs_data_V_ARADDR;
    m_axi_u_adjs_data_V_ARBURST <= grp_readItems_fu_144_m_axi_adjs_data_V_ARBURST;
    m_axi_u_adjs_data_V_ARCACHE <= grp_readItems_fu_144_m_axi_adjs_data_V_ARCACHE;
    m_axi_u_adjs_data_V_ARID <= grp_readItems_fu_144_m_axi_adjs_data_V_ARID;
    m_axi_u_adjs_data_V_ARLEN <= grp_readItems_fu_144_m_axi_adjs_data_V_ARLEN;
    m_axi_u_adjs_data_V_ARLOCK <= grp_readItems_fu_144_m_axi_adjs_data_V_ARLOCK;
    m_axi_u_adjs_data_V_ARPROT <= grp_readItems_fu_144_m_axi_adjs_data_V_ARPROT;
    m_axi_u_adjs_data_V_ARQOS <= grp_readItems_fu_144_m_axi_adjs_data_V_ARQOS;
    m_axi_u_adjs_data_V_ARREGION <= grp_readItems_fu_144_m_axi_adjs_data_V_ARREGION;
    m_axi_u_adjs_data_V_ARSIZE <= grp_readItems_fu_144_m_axi_adjs_data_V_ARSIZE;
    m_axi_u_adjs_data_V_ARUSER <= grp_readItems_fu_144_m_axi_adjs_data_V_ARUSER;

    m_axi_u_adjs_data_V_ARVALID_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, grp_readItems_fu_144_m_axi_adjs_data_V_ARVALID)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_u_adjs_data_V_ARVALID <= grp_readItems_fu_144_m_axi_adjs_data_V_ARVALID;
        else 
            m_axi_u_adjs_data_V_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_u_adjs_data_V_AWADDR <= ap_const_lv32_0;
    m_axi_u_adjs_data_V_AWBURST <= ap_const_lv2_0;
    m_axi_u_adjs_data_V_AWCACHE <= ap_const_lv4_0;
    m_axi_u_adjs_data_V_AWID <= ap_const_lv1_0;
    m_axi_u_adjs_data_V_AWLEN <= ap_const_lv32_0;
    m_axi_u_adjs_data_V_AWLOCK <= ap_const_lv2_0;
    m_axi_u_adjs_data_V_AWPROT <= ap_const_lv3_0;
    m_axi_u_adjs_data_V_AWQOS <= ap_const_lv4_0;
    m_axi_u_adjs_data_V_AWREGION <= ap_const_lv4_0;
    m_axi_u_adjs_data_V_AWSIZE <= ap_const_lv3_0;
    m_axi_u_adjs_data_V_AWUSER <= ap_const_lv1_0;
    m_axi_u_adjs_data_V_AWVALID <= ap_const_logic_0;
    m_axi_u_adjs_data_V_BREADY <= ap_const_logic_0;

    m_axi_u_adjs_data_V_RREADY_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, grp_readItems_fu_144_m_axi_adjs_data_V_RREADY)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_u_adjs_data_V_RREADY <= grp_readItems_fu_144_m_axi_adjs_data_V_RREADY;
        else 
            m_axi_u_adjs_data_V_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_u_adjs_data_V_WDATA <= ap_const_lv1024_lc_1;
    m_axi_u_adjs_data_V_WID <= ap_const_lv1_0;
    m_axi_u_adjs_data_V_WLAST <= ap_const_logic_0;
    m_axi_u_adjs_data_V_WSTRB <= ap_const_lv128_lc_1;
    m_axi_u_adjs_data_V_WUSER <= ap_const_lv1_0;
    m_axi_u_adjs_data_V_WVALID <= ap_const_logic_0;
    num <= ap_const_lv6_0;
    p_Result_1_fu_257_p3 <= 
        p_Val2_s_reg_115 when (tmp_8_i_reg_305(0) = '1') else 
        p_Result_s_fu_251_p2;
    p_Result_s_fu_251_p2 <= (tmp_75_fu_245_p2 or tmp_73_fu_236_p2);

    pipe_stream_V_read_assign_proc : process(ap_CS_fsm_state3, pipe_stream_V_empty_n, exitcond_fu_162_p2)
    begin
        if ((not(((exitcond_fu_162_p2 = ap_const_lv1_0) and (pipe_stream_V_empty_n = ap_const_logic_0))) and (exitcond_fu_162_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            pipe_stream_V_read <= ap_const_logic_1;
        else 
            pipe_stream_V_read <= ap_const_logic_0;
        end if; 
    end process;


    pipe_stream_V_write_assign_proc : process(ap_CS_fsm_state2, grp_readItems_fu_144_i_out_stream_V_write)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            pipe_stream_V_write <= grp_readItems_fu_144_i_out_stream_V_write;
        else 
            pipe_stream_V_write <= ap_const_logic_0;
        end if; 
    end process;

    temp_V_fu_203_p1 <= tmp_66_fu_197_p2(32 - 1 downto 0);
    tmp_1_fu_155_p3 <= (num_read_reg_269 & ap_const_lv5_0);
    tmp_64_fu_185_p3 <= (tmp_fu_182_p1 & ap_const_lv5_0);
    tmp_65_fu_193_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_64_fu_185_p3),1024));
    tmp_66_fu_197_p2 <= std_logic_vector(shift_right(unsigned(p_Val2_s_reg_115),to_integer(unsigned('0' & tmp_65_fu_193_p1(31-1 downto 0)))));
    tmp_68_fu_173_p1 <= pipe_stream_V_dout(5 - 1 downto 0);
    tmp_69_fu_213_p3 <= (tmp_68_reg_300 & ap_const_lv5_0);
    tmp_70_fu_220_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_69_fu_213_p3),1024));
    tmp_71_fu_224_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv1024_lc_4),to_integer(unsigned('0' & tmp_70_fu_220_p1(31-1 downto 0)))));
    tmp_72_fu_230_p2 <= (tmp_71_fu_224_p2 xor ap_const_lv1024_lc_2);
    tmp_73_fu_236_p2 <= (tmp_72_fu_230_p2 and p_Val2_s_reg_115);
    tmp_74_fu_242_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(loc_V_reg_310),1024));
    tmp_75_fu_245_p2 <= std_logic_vector(shift_left(unsigned(tmp_74_fu_242_p1),to_integer(unsigned('0' & tmp_70_fu_220_p1(31-1 downto 0)))));
    tmp_8_i_fu_177_p2 <= "1" when (tmp_77_reg_294 = ap_const_lv32_FFFFFFFF) else "0";
    tmp_fu_182_p1 <= tmp_77_reg_294(5 - 1 downto 0);
end behav;
