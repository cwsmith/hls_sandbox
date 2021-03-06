-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity readItems is
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
end;


architecture behav of readItems is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1024_lc_1 : STD_LOGIC_VECTOR (1023 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv128_lc_1 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv10_1F : STD_LOGIC_VECTOR (9 downto 0) := "0000011111";
    constant ap_const_lv32_3FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001111111111";
    constant ap_const_lv11_3FF : STD_LOGIC_VECTOR (10 downto 0) := "01111111111";
    constant ap_const_lv1024_lc_2 : STD_LOGIC_VECTOR (1023 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal adjs_data_V_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal adjs_data_V_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal i_out_stream_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal tmp_fu_136_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_reg_300 : STD_LOGIC_VECTOR (10 downto 0);
    signal sext_cast_fu_144_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_cast_reg_305 : STD_LOGIC_VECTOR (25 downto 0);
    signal i_1_fu_153_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_1_reg_313 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_79_fu_173_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_79_reg_318 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sum_fu_177_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal sum_reg_323 : STD_LOGIC_VECTOR (25 downto 0);
    signal ap_sig_ioackin_m_axi_adjs_data_V_ARREADY : STD_LOGIC;
    signal Lo_assign_fu_192_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal Lo_assign_reg_334 : STD_LOGIC_VECTOR (9 downto 0);
    signal Hi_assign_fu_199_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal Hi_assign_reg_339 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_Val2_s_reg_344 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_80_fu_205_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_80_reg_350 : STD_LOGIC_VECTOR (0 downto 0);
    signal temp_V_fu_296_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal temp_V_reg_357 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal i_reg_125 : STD_LOGIC_VECTOR (10 downto 0);
    signal sum_cast_fu_182_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_reg_ioackin_m_axi_adjs_data_V_ARREADY : STD_LOGIC := '0';
    signal tmp_78_fu_159_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_cast_fu_169_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_81_fu_211_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_82_fu_214_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_84_fu_226_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_86_fu_238_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_83_fu_217_p4 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_85_fu_232_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_87_fu_244_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_89_fu_257_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_90_fu_264_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_88_fu_251_p3 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_91_fu_270_p1 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_92_fu_274_p1 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_93_fu_278_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_94_fu_284_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal p_Result_s_fu_290_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);


begin




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


    ap_reg_ioackin_m_axi_adjs_data_V_ARREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_m_axi_adjs_data_V_ARREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    if ((ap_sig_ioackin_m_axi_adjs_data_V_ARREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_adjs_data_V_ARREADY <= ap_const_logic_0;
                    elsif ((m_axi_adjs_data_V_ARREADY = ap_const_logic_1)) then 
                        ap_reg_ioackin_m_axi_adjs_data_V_ARREADY <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    i_reg_125_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((i_out_stream_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state12))) then 
                i_reg_125 <= i_1_reg_313;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_125 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((m_axi_adjs_data_V_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    Hi_assign_reg_339(9 downto 5) <= Hi_assign_fu_199_p2(9 downto 5);
                    Lo_assign_reg_334(9 downto 5) <= Lo_assign_fu_192_p3(9 downto 5);
                p_Val2_s_reg_344 <= m_axi_adjs_data_V_RDATA;
                tmp_80_reg_350 <= tmp_80_fu_205_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_1_reg_313 <= i_1_fu_153_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    sext_cast_reg_305(24 downto 0) <= sext_cast_fu_144_p1(24 downto 0);
                    tmp_reg_300(10 downto 5) <= tmp_fu_136_p3(10 downto 5);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_148_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                sum_reg_323 <= sum_fu_177_p2;
                tmp_79_reg_318 <= tmp_79_fu_173_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                temp_V_reg_357 <= temp_V_fu_296_p1;
            end if;
        end if;
    end process;
    tmp_reg_300(4 downto 0) <= "00000";
    sext_cast_reg_305(25) <= '0';
    Lo_assign_reg_334(4 downto 0) <= "00000";
    Hi_assign_reg_339(4 downto 0) <= "11111";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, m_axi_adjs_data_V_RVALID, i_out_stream_V_full_n, ap_CS_fsm_state3, ap_CS_fsm_state10, ap_CS_fsm_state12, ap_CS_fsm_state2, exitcond_fu_148_p2, ap_sig_ioackin_m_axi_adjs_data_V_ARREADY)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_fu_148_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_sig_ioackin_m_axi_adjs_data_V_ARREADY = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if (((m_axi_adjs_data_V_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state11;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                if (((i_out_stream_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state12))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state12;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;
    Hi_assign_fu_199_p2 <= (ap_const_lv10_1F or Lo_assign_fu_192_p3);
    Lo_assign_fu_192_p3 <= (tmp_79_reg_318 & ap_const_lv5_0);

    adjs_data_V_blk_n_AR_assign_proc : process(m_axi_adjs_data_V_ARREADY, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            adjs_data_V_blk_n_AR <= m_axi_adjs_data_V_ARREADY;
        else 
            adjs_data_V_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    adjs_data_V_blk_n_R_assign_proc : process(m_axi_adjs_data_V_RVALID, ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            adjs_data_V_blk_n_R <= m_axi_adjs_data_V_RVALID;
        else 
            adjs_data_V_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond_fu_148_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_fu_148_p2 = ap_const_lv1_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond_fu_148_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond_fu_148_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_ioackin_m_axi_adjs_data_V_ARREADY_assign_proc : process(m_axi_adjs_data_V_ARREADY, ap_reg_ioackin_m_axi_adjs_data_V_ARREADY)
    begin
        if ((ap_reg_ioackin_m_axi_adjs_data_V_ARREADY = ap_const_logic_0)) then 
            ap_sig_ioackin_m_axi_adjs_data_V_ARREADY <= m_axi_adjs_data_V_ARREADY;
        else 
            ap_sig_ioackin_m_axi_adjs_data_V_ARREADY <= ap_const_logic_1;
        end if; 
    end process;

    exitcond_fu_148_p2 <= "1" when (i_reg_125 = tmp_reg_300) else "0";
    i_1_fu_153_p2 <= std_logic_vector(unsigned(i_reg_125) + unsigned(ap_const_lv11_1));

    i_out_stream_V_blk_n_assign_proc : process(i_out_stream_V_full_n, ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            i_out_stream_V_blk_n <= i_out_stream_V_full_n;
        else 
            i_out_stream_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    i_out_stream_V_din <= temp_V_reg_357;

    i_out_stream_V_write_assign_proc : process(i_out_stream_V_full_n, ap_CS_fsm_state12)
    begin
        if (((i_out_stream_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state12))) then 
            i_out_stream_V_write <= ap_const_logic_1;
        else 
            i_out_stream_V_write <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_adjs_data_V_ARADDR <= sum_cast_fu_182_p1(32 - 1 downto 0);
    m_axi_adjs_data_V_ARBURST <= ap_const_lv2_0;
    m_axi_adjs_data_V_ARCACHE <= ap_const_lv4_0;
    m_axi_adjs_data_V_ARID <= ap_const_lv1_0;
    m_axi_adjs_data_V_ARLEN <= ap_const_lv32_1;
    m_axi_adjs_data_V_ARLOCK <= ap_const_lv2_0;
    m_axi_adjs_data_V_ARPROT <= ap_const_lv3_0;
    m_axi_adjs_data_V_ARQOS <= ap_const_lv4_0;
    m_axi_adjs_data_V_ARREGION <= ap_const_lv4_0;
    m_axi_adjs_data_V_ARSIZE <= ap_const_lv3_0;
    m_axi_adjs_data_V_ARUSER <= ap_const_lv1_0;

    m_axi_adjs_data_V_ARVALID_assign_proc : process(ap_CS_fsm_state3, ap_reg_ioackin_m_axi_adjs_data_V_ARREADY)
    begin
        if (((ap_reg_ioackin_m_axi_adjs_data_V_ARREADY = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_adjs_data_V_ARVALID <= ap_const_logic_1;
        else 
            m_axi_adjs_data_V_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_adjs_data_V_AWADDR <= ap_const_lv32_0;
    m_axi_adjs_data_V_AWBURST <= ap_const_lv2_0;
    m_axi_adjs_data_V_AWCACHE <= ap_const_lv4_0;
    m_axi_adjs_data_V_AWID <= ap_const_lv1_0;
    m_axi_adjs_data_V_AWLEN <= ap_const_lv32_0;
    m_axi_adjs_data_V_AWLOCK <= ap_const_lv2_0;
    m_axi_adjs_data_V_AWPROT <= ap_const_lv3_0;
    m_axi_adjs_data_V_AWQOS <= ap_const_lv4_0;
    m_axi_adjs_data_V_AWREGION <= ap_const_lv4_0;
    m_axi_adjs_data_V_AWSIZE <= ap_const_lv3_0;
    m_axi_adjs_data_V_AWUSER <= ap_const_lv1_0;
    m_axi_adjs_data_V_AWVALID <= ap_const_logic_0;
    m_axi_adjs_data_V_BREADY <= ap_const_logic_0;

    m_axi_adjs_data_V_RREADY_assign_proc : process(m_axi_adjs_data_V_RVALID, ap_CS_fsm_state10)
    begin
        if (((m_axi_adjs_data_V_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            m_axi_adjs_data_V_RREADY <= ap_const_logic_1;
        else 
            m_axi_adjs_data_V_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_adjs_data_V_WDATA <= ap_const_lv1024_lc_1;
    m_axi_adjs_data_V_WID <= ap_const_lv1_0;
    m_axi_adjs_data_V_WLAST <= ap_const_logic_0;
    m_axi_adjs_data_V_WSTRB <= ap_const_lv128_lc_1;
    m_axi_adjs_data_V_WUSER <= ap_const_lv1_0;
    m_axi_adjs_data_V_WVALID <= ap_const_logic_0;
    p_Result_s_fu_290_p2 <= (tmp_94_fu_284_p2 and tmp_93_fu_278_p2);
    sext_cast_fu_144_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(adjs_data_V_offset),26));
    sum_cast_fu_182_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sum_reg_323),64));
    sum_fu_177_p2 <= std_logic_vector(unsigned(sext_cast_reg_305) + unsigned(tmp_2_cast_fu_169_p1));
    temp_V_fu_296_p1 <= p_Result_s_fu_290_p2(32 - 1 downto 0);
    tmp_2_cast_fu_169_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_78_fu_159_p4),26));
    tmp_78_fu_159_p4 <= i_reg_125(10 downto 5);
    tmp_79_fu_173_p1 <= i_reg_125(5 - 1 downto 0);
    tmp_80_fu_205_p2 <= "1" when (unsigned(Lo_assign_fu_192_p3) > unsigned(Hi_assign_fu_199_p2)) else "0";
    tmp_81_fu_211_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(Lo_assign_reg_334),11));
    tmp_82_fu_214_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(Hi_assign_reg_339),11));
    
    tmp_83_fu_217_p4_proc : process(p_Val2_s_reg_344)
    variable vlo_cpy : STD_LOGIC_VECTOR(1024+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(1024+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(1024 - 1 downto 0);
    variable tmp_83_fu_217_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(1024 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(1024 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(1024 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(10 - 1 downto 0) := ap_const_lv32_3FF(10 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(10 - 1 downto 0) := ap_const_lv32_0(10 - 1 downto 0);
        v0_cpy := p_Val2_s_reg_344;
        if (vlo_cpy(10 - 1 downto 0) > vhi_cpy(10 - 1 downto 0)) then
            vhi_cpy(10-1 downto 0) := std_logic_vector(1024-1-unsigned(ap_const_lv32_0(10-1 downto 0)));
            vlo_cpy(10-1 downto 0) := std_logic_vector(1024-1-unsigned(ap_const_lv32_3FF(10-1 downto 0)));
            for tmp_83_fu_217_p4_i in 0 to 1024-1 loop
                v0_cpy(tmp_83_fu_217_p4_i) := p_Val2_s_reg_344(1024-1-tmp_83_fu_217_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(10-1 downto 0)))));

        section := (others=>'0');
        section(10-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(10-1 downto 0)) - unsigned(vlo_cpy(10-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(1024-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_83_fu_217_p4 <= resvalue(1024-1 downto 0);
    end process;

    tmp_84_fu_226_p2 <= std_logic_vector(unsigned(tmp_81_fu_211_p1) - unsigned(tmp_82_fu_214_p1));
    tmp_85_fu_232_p2 <= (tmp_81_fu_211_p1 xor ap_const_lv11_3FF);
    tmp_86_fu_238_p2 <= std_logic_vector(unsigned(tmp_82_fu_214_p1) - unsigned(tmp_81_fu_211_p1));
    tmp_87_fu_244_p3 <= 
        tmp_84_fu_226_p2 when (tmp_80_reg_350(0) = '1') else 
        tmp_86_fu_238_p2;
    tmp_88_fu_251_p3 <= 
        tmp_83_fu_217_p4 when (tmp_80_reg_350(0) = '1') else 
        p_Val2_s_reg_344;
    tmp_89_fu_257_p3 <= 
        tmp_85_fu_232_p2 when (tmp_80_reg_350(0) = '1') else 
        tmp_81_fu_211_p1;
    tmp_90_fu_264_p2 <= std_logic_vector(unsigned(ap_const_lv11_3FF) - unsigned(tmp_87_fu_244_p3));
    tmp_91_fu_270_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_89_fu_257_p3),1024));
    tmp_92_fu_274_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_90_fu_264_p2),1024));
    tmp_93_fu_278_p2 <= std_logic_vector(shift_right(unsigned(tmp_88_fu_251_p3),to_integer(unsigned('0' & tmp_91_fu_270_p1(31-1 downto 0)))));
    tmp_94_fu_284_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv1024_lc_2),to_integer(unsigned('0' & tmp_92_fu_274_p1(31-1 downto 0)))));
    tmp_fu_136_p3 <= (num & ap_const_lv5_0);
end behav;
