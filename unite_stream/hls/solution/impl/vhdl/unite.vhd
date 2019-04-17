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
generic (
    C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER := 9;
    C_S_AXI_CONTROL_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH/8-1 downto 0);
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_RREADY : IN STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0) );
end;


architecture behav of unite is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "unite,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcku5p-sfvb784-3-e,HLS_INPUT_CLOCK=3.333333,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.635750,HLS_SYN_LAT=69,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=4179,HLS_SYN_LUT=10859,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv10_1F : STD_LOGIC_VECTOR (9 downto 0) := "0000011111";
    constant ap_const_lv32_3FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001111111111";
    constant ap_const_lv11_3FF : STD_LOGIC_VECTOR (10 downto 0) := "01111111111";
    constant ap_const_lv1024_lc_1 : STD_LOGIC_VECTOR (1023 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal adj1_data_V : STD_LOGIC_VECTOR (1023 downto 0);
    signal adj2_data_V : STD_LOGIC_VECTOR (1023 downto 0);
    signal i_assign_reg_102 : STD_LOGIC_VECTOR (5 downto 0);
    signal adj1_data_V_read_reg_247 : STD_LOGIC_VECTOR (1023 downto 0);
    signal exitcond_i_fu_118_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_i_reg_259 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal items1_stream_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal items1_stream_V_full_n : STD_LOGIC;
    signal items1_stream_V_write : STD_LOGIC;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_fu_124_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_11_fu_212_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_11_reg_268 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_14_fu_222_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_14_reg_273 : STD_LOGIC_VECTOR (1023 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal grp_readCompare_fu_113_ap_start : STD_LOGIC;
    signal grp_readCompare_fu_113_ap_done : STD_LOGIC;
    signal grp_readCompare_fu_113_ap_idle : STD_LOGIC;
    signal grp_readCompare_fu_113_ap_ready : STD_LOGIC;
    signal grp_readCompare_fu_113_i_in_stream_V_read : STD_LOGIC;
    signal grp_readCompare_fu_113_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal items1_stream_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal items1_stream_V_empty_n : STD_LOGIC;
    signal items1_stream_V_read : STD_LOGIC;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_fu_130_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal Lo_assign_fu_134_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal Hi_assign_fu_142_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_2_fu_154_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_3_fu_158_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_1_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_171_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_7_fu_183_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_4_fu_162_p4 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_6_fu_177_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_8_fu_189_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_10_fu_204_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_9_fu_197_p3 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_12_fu_218_p1 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_13_fu_228_p1 : STD_LOGIC_VECTOR (1023 downto 0);
    signal tmp_15_fu_231_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal p_Result_s_fu_237_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component readCompare IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        i_in_stream_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        i_in_stream_V_empty_n : IN STD_LOGIC;
        i_in_stream_V_read : OUT STD_LOGIC );
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


    component unite_control_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        adj1_data_V : OUT STD_LOGIC_VECTOR (1023 downto 0);
        adj2_data_V : OUT STD_LOGIC_VECTOR (1023 downto 0) );
    end component;



begin
    unite_control_s_axi_U : component unite_control_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CONTROL_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CONTROL_DATA_WIDTH)
    port map (
        AWVALID => s_axi_control_AWVALID,
        AWREADY => s_axi_control_AWREADY,
        AWADDR => s_axi_control_AWADDR,
        WVALID => s_axi_control_WVALID,
        WREADY => s_axi_control_WREADY,
        WDATA => s_axi_control_WDATA,
        WSTRB => s_axi_control_WSTRB,
        ARVALID => s_axi_control_ARVALID,
        ARREADY => s_axi_control_ARREADY,
        ARADDR => s_axi_control_ARADDR,
        RVALID => s_axi_control_RVALID,
        RREADY => s_axi_control_RREADY,
        RDATA => s_axi_control_RDATA,
        RRESP => s_axi_control_RRESP,
        BVALID => s_axi_control_BVALID,
        BREADY => s_axi_control_BREADY,
        BRESP => s_axi_control_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        adj1_data_V => adj1_data_V,
        adj2_data_V => adj2_data_V);

    grp_readCompare_fu_113 : component readCompare
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_readCompare_fu_113_ap_start,
        ap_done => grp_readCompare_fu_113_ap_done,
        ap_idle => grp_readCompare_fu_113_ap_idle,
        ap_ready => grp_readCompare_fu_113_ap_ready,
        i_in_stream_V_dout => items1_stream_V_dout,
        i_in_stream_V_empty_n => items1_stream_V_empty_n,
        i_in_stream_V_read => grp_readCompare_fu_113_i_in_stream_V_read);

    items1_stream_V_fifo_U : component fifo_w32_d1_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => items1_stream_V_din,
        if_full_n => items1_stream_V_full_n,
        if_write => items1_stream_V_write,
        if_dout => items1_stream_V_dout,
        if_empty_n => items1_stream_V_empty_n,
        if_read => items1_stream_V_read);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_readCompare_fu_113_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_readCompare_fu_113_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    grp_readCompare_fu_113_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_readCompare_fu_113_ap_ready = ap_const_logic_1)) then 
                    grp_readCompare_fu_113_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_assign_reg_102_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_i_fu_118_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                i_assign_reg_102 <= i_fu_124_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_assign_reg_102 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                adj1_data_V_read_reg_247 <= adj1_data_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                exitcond_i_reg_259 <= exitcond_i_fu_118_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_i_fu_118_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    tmp_11_reg_268(10 downto 1) <= tmp_11_fu_212_p2(10 downto 1);
                tmp_14_reg_273 <= tmp_14_fu_222_p2;
            end if;
        end if;
    end process;
    tmp_11_reg_268(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, exitcond_i_fu_118_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, grp_readCompare_fu_113_ap_done, ap_CS_fsm_state5)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((exitcond_i_fu_118_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((exitcond_i_fu_118_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_readCompare_fu_113_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    Hi_assign_fu_142_p2 <= (ap_const_lv10_1F or Lo_assign_fu_134_p3);
    Lo_assign_fu_134_p3 <= (tmp_fu_130_p1 & ap_const_lv5_0);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(exitcond_i_reg_259, items1_stream_V_full_n, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_01001 <= ((exitcond_i_reg_259 = ap_const_lv1_0) and (items1_stream_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(exitcond_i_reg_259, items1_stream_V_full_n, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_11001 <= ((exitcond_i_reg_259 = ap_const_lv1_0) and (items1_stream_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(exitcond_i_reg_259, items1_stream_V_full_n, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_subdone <= ((exitcond_i_reg_259 = ap_const_lv1_0) and (items1_stream_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(exitcond_i_reg_259, items1_stream_V_full_n)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((exitcond_i_reg_259 = ap_const_lv1_0) and (items1_stream_V_full_n = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(exitcond_i_fu_118_p2)
    begin
        if ((exitcond_i_fu_118_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(grp_readCompare_fu_113_ap_done, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_readCompare_fu_113_ap_done = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_readCompare_fu_113_ap_done, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_readCompare_fu_113_ap_done = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    exitcond_i_fu_118_p2 <= "1" when (i_assign_reg_102 = ap_const_lv6_20) else "0";
    grp_readCompare_fu_113_ap_start <= grp_readCompare_fu_113_ap_start_reg;
    i_fu_124_p2 <= std_logic_vector(unsigned(i_assign_reg_102) + unsigned(ap_const_lv6_1));
    items1_stream_V_din <= p_Result_s_fu_237_p2(32 - 1 downto 0);

    items1_stream_V_read_assign_proc : process(grp_readCompare_fu_113_i_in_stream_V_read, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            items1_stream_V_read <= grp_readCompare_fu_113_i_in_stream_V_read;
        else 
            items1_stream_V_read <= ap_const_logic_0;
        end if; 
    end process;


    items1_stream_V_write_assign_proc : process(exitcond_i_reg_259, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond_i_reg_259 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            items1_stream_V_write <= ap_const_logic_1;
        else 
            items1_stream_V_write <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_s_fu_237_p2 <= (tmp_15_fu_231_p2 and tmp_14_reg_273);
    tmp_10_fu_204_p3 <= 
        tmp_6_fu_177_p2 when (tmp_1_fu_148_p2(0) = '1') else 
        tmp_2_fu_154_p1;
    tmp_11_fu_212_p2 <= std_logic_vector(unsigned(ap_const_lv11_3FF) - unsigned(tmp_8_fu_189_p3));
    tmp_12_fu_218_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_10_fu_204_p3),1024));
    tmp_13_fu_228_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_11_reg_268),1024));
    tmp_14_fu_222_p2 <= std_logic_vector(shift_right(unsigned(tmp_9_fu_197_p3),to_integer(unsigned('0' & tmp_12_fu_218_p1(31-1 downto 0)))));
    tmp_15_fu_231_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv1024_lc_1),to_integer(unsigned('0' & tmp_13_fu_228_p1(31-1 downto 0)))));
    tmp_1_fu_148_p2 <= "1" when (unsigned(Lo_assign_fu_134_p3) > unsigned(Hi_assign_fu_142_p2)) else "0";
    tmp_2_fu_154_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(Lo_assign_fu_134_p3),11));
    tmp_3_fu_158_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(Hi_assign_fu_142_p2),11));
    
    tmp_4_fu_162_p4_proc : process(adj1_data_V_read_reg_247)
    variable vlo_cpy : STD_LOGIC_VECTOR(1024+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(1024+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(1024 - 1 downto 0);
    variable tmp_4_fu_162_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(1024 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(1024 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(1024 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(10 - 1 downto 0) := ap_const_lv32_3FF(10 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(10 - 1 downto 0) := ap_const_lv32_0(10 - 1 downto 0);
        v0_cpy := adj1_data_V_read_reg_247;
        if (vlo_cpy(10 - 1 downto 0) > vhi_cpy(10 - 1 downto 0)) then
            vhi_cpy(10-1 downto 0) := std_logic_vector(1024-1-unsigned(ap_const_lv32_0(10-1 downto 0)));
            vlo_cpy(10-1 downto 0) := std_logic_vector(1024-1-unsigned(ap_const_lv32_3FF(10-1 downto 0)));
            for tmp_4_fu_162_p4_i in 0 to 1024-1 loop
                v0_cpy(tmp_4_fu_162_p4_i) := adj1_data_V_read_reg_247(1024-1-tmp_4_fu_162_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(10-1 downto 0)))));

        section := (others=>'0');
        section(10-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(10-1 downto 0)) - unsigned(vlo_cpy(10-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(1024-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_4_fu_162_p4 <= resvalue(1024-1 downto 0);
    end process;

    tmp_5_fu_171_p2 <= std_logic_vector(unsigned(tmp_2_fu_154_p1) - unsigned(tmp_3_fu_158_p1));
    tmp_6_fu_177_p2 <= (tmp_2_fu_154_p1 xor ap_const_lv11_3FF);
    tmp_7_fu_183_p2 <= std_logic_vector(unsigned(tmp_3_fu_158_p1) - unsigned(tmp_2_fu_154_p1));
    tmp_8_fu_189_p3 <= 
        tmp_5_fu_171_p2 when (tmp_1_fu_148_p2(0) = '1') else 
        tmp_7_fu_183_p2;
    tmp_9_fu_197_p3 <= 
        tmp_4_fu_162_p4 when (tmp_1_fu_148_p2(0) = '1') else 
        adj1_data_V_read_reg_247;
    tmp_fu_130_p1 <= i_assign_reg_102(5 - 1 downto 0);
end behav;
