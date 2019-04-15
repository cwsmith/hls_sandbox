// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _readCompare_HH_
#define _readCompare_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct readCompare : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<1024> > adj2_data_V;
    sc_in< sc_lv<32> > i_in_stream_V_dout;
    sc_in< sc_logic > i_in_stream_V_empty_n;
    sc_out< sc_logic > i_in_stream_V_read;
    sc_out< sc_lv<32> > i_out_stream_V_din;
    sc_in< sc_logic > i_out_stream_V_full_n;
    sc_out< sc_logic > i_out_stream_V_write;


    // Module declarations
    readCompare(sc_module_name name);
    SC_HAS_PROCESS(readCompare);

    ~readCompare();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > i_in_stream_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > i_out_stream_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > tmp_8_reg_765;
    sc_signal< sc_lv<1> > tmp_8_1_reg_769;
    sc_signal< sc_lv<1> > tmp_8_2_reg_773;
    sc_signal< sc_lv<1> > tmp_8_3_reg_777;
    sc_signal< sc_lv<1> > tmp_8_4_reg_781;
    sc_signal< sc_lv<1> > tmp_8_5_reg_785;
    sc_signal< sc_lv<1> > tmp_8_6_reg_789;
    sc_signal< sc_lv<1> > tmp_8_7_reg_793;
    sc_signal< sc_lv<1> > tmp_8_8_reg_797;
    sc_signal< sc_lv<1> > tmp_8_9_reg_801;
    sc_signal< sc_lv<1> > tmp_8_s_reg_805;
    sc_signal< sc_lv<1> > tmp_8_10_reg_809;
    sc_signal< sc_lv<1> > tmp_8_11_reg_813;
    sc_signal< sc_lv<1> > tmp_8_12_reg_817;
    sc_signal< sc_lv<1> > tmp_8_13_reg_821;
    sc_signal< sc_lv<1> > tmp_8_14_reg_825;
    sc_signal< sc_lv<1> > tmp_8_15_reg_829;
    sc_signal< sc_lv<1> > tmp_8_16_reg_833;
    sc_signal< sc_lv<1> > tmp_8_17_reg_837;
    sc_signal< sc_lv<1> > tmp_8_18_reg_841;
    sc_signal< sc_lv<1> > tmp_8_19_reg_845;
    sc_signal< sc_lv<1> > tmp_8_20_reg_849;
    sc_signal< sc_lv<1> > tmp_8_21_reg_853;
    sc_signal< sc_lv<1> > tmp_8_22_reg_857;
    sc_signal< sc_lv<1> > tmp_8_23_reg_861;
    sc_signal< sc_lv<1> > tmp_8_24_reg_865;
    sc_signal< sc_lv<1> > tmp_8_25_reg_869;
    sc_signal< sc_lv<1> > tmp_8_26_reg_873;
    sc_signal< sc_lv<1> > tmp_8_27_reg_877;
    sc_signal< sc_lv<1> > tmp_8_28_reg_881;
    sc_signal< sc_lv<1> > tmp_8_29_reg_885;
    sc_signal< sc_lv<1> > tmp_8_30_reg_889;
    sc_signal< sc_lv<6> > i_reg_218;
    sc_signal< sc_lv<1> > exitcond_fu_229_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_predicate_op115_write_state4;
    sc_signal< bool > ap_predicate_op117_write_state4;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<6> > i_1_fu_235_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > tmp_1_reg_760;
    sc_signal< sc_lv<1> > tmp_8_fu_244_p2;
    sc_signal< sc_lv<1> > tmp_8_1_fu_259_p2;
    sc_signal< sc_lv<1> > tmp_8_2_fu_274_p2;
    sc_signal< sc_lv<1> > tmp_8_3_fu_289_p2;
    sc_signal< sc_lv<1> > tmp_8_4_fu_304_p2;
    sc_signal< sc_lv<1> > tmp_8_5_fu_319_p2;
    sc_signal< sc_lv<1> > tmp_8_6_fu_334_p2;
    sc_signal< sc_lv<1> > tmp_8_7_fu_349_p2;
    sc_signal< sc_lv<1> > tmp_8_8_fu_364_p2;
    sc_signal< sc_lv<1> > tmp_8_9_fu_379_p2;
    sc_signal< sc_lv<1> > tmp_8_s_fu_394_p2;
    sc_signal< sc_lv<1> > tmp_8_10_fu_409_p2;
    sc_signal< sc_lv<1> > tmp_8_11_fu_424_p2;
    sc_signal< sc_lv<1> > tmp_8_12_fu_439_p2;
    sc_signal< sc_lv<1> > tmp_8_13_fu_454_p2;
    sc_signal< sc_lv<1> > tmp_8_14_fu_469_p2;
    sc_signal< sc_lv<1> > tmp_8_15_fu_484_p2;
    sc_signal< sc_lv<1> > tmp_8_16_fu_499_p2;
    sc_signal< sc_lv<1> > tmp_8_17_fu_514_p2;
    sc_signal< sc_lv<1> > tmp_8_18_fu_529_p2;
    sc_signal< sc_lv<1> > tmp_8_19_fu_544_p2;
    sc_signal< sc_lv<1> > tmp_8_20_fu_559_p2;
    sc_signal< sc_lv<1> > tmp_8_21_fu_574_p2;
    sc_signal< sc_lv<1> > tmp_8_22_fu_589_p2;
    sc_signal< sc_lv<1> > tmp_8_23_fu_604_p2;
    sc_signal< sc_lv<1> > tmp_8_24_fu_619_p2;
    sc_signal< sc_lv<1> > tmp_8_25_fu_634_p2;
    sc_signal< sc_lv<1> > tmp_8_26_fu_649_p2;
    sc_signal< sc_lv<1> > tmp_8_27_fu_664_p2;
    sc_signal< sc_lv<1> > tmp_8_28_fu_679_p2;
    sc_signal< sc_lv<1> > tmp_8_29_fu_694_p2;
    sc_signal< sc_lv<1> > tmp_8_30_fu_709_p2;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > tmp_fu_241_p1;
    sc_signal< sc_lv<32> > p_Result_1_fu_250_p4;
    sc_signal< sc_lv<32> > p_Result_2_fu_265_p4;
    sc_signal< sc_lv<32> > p_Result_3_fu_280_p4;
    sc_signal< sc_lv<32> > p_Result_4_fu_295_p4;
    sc_signal< sc_lv<32> > p_Result_5_fu_310_p4;
    sc_signal< sc_lv<32> > p_Result_6_fu_325_p4;
    sc_signal< sc_lv<32> > p_Result_7_fu_340_p4;
    sc_signal< sc_lv<32> > p_Result_8_fu_355_p4;
    sc_signal< sc_lv<32> > p_Result_9_fu_370_p4;
    sc_signal< sc_lv<32> > p_Result_s_fu_385_p4;
    sc_signal< sc_lv<32> > p_Result_10_fu_400_p4;
    sc_signal< sc_lv<32> > p_Result_11_fu_415_p4;
    sc_signal< sc_lv<32> > p_Result_12_fu_430_p4;
    sc_signal< sc_lv<32> > p_Result_13_fu_445_p4;
    sc_signal< sc_lv<32> > p_Result_14_fu_460_p4;
    sc_signal< sc_lv<32> > p_Result_15_fu_475_p4;
    sc_signal< sc_lv<32> > p_Result_16_fu_490_p4;
    sc_signal< sc_lv<32> > p_Result_17_fu_505_p4;
    sc_signal< sc_lv<32> > p_Result_18_fu_520_p4;
    sc_signal< sc_lv<32> > p_Result_19_fu_535_p4;
    sc_signal< sc_lv<32> > p_Result_20_fu_550_p4;
    sc_signal< sc_lv<32> > p_Result_21_fu_565_p4;
    sc_signal< sc_lv<32> > p_Result_22_fu_580_p4;
    sc_signal< sc_lv<32> > p_Result_23_fu_595_p4;
    sc_signal< sc_lv<32> > p_Result_24_fu_610_p4;
    sc_signal< sc_lv<32> > p_Result_25_fu_625_p4;
    sc_signal< sc_lv<32> > p_Result_26_fu_640_p4;
    sc_signal< sc_lv<32> > p_Result_27_fu_655_p4;
    sc_signal< sc_lv<32> > p_Result_28_fu_670_p4;
    sc_signal< sc_lv<32> > p_Result_29_fu_685_p4;
    sc_signal< sc_lv<32> > p_Result_30_fu_700_p4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state5;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_5F;
    static const sc_lv<32> ap_const_lv32_60;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<32> ap_const_lv32_80;
    static const sc_lv<32> ap_const_lv32_9F;
    static const sc_lv<32> ap_const_lv32_A0;
    static const sc_lv<32> ap_const_lv32_BF;
    static const sc_lv<32> ap_const_lv32_C0;
    static const sc_lv<32> ap_const_lv32_DF;
    static const sc_lv<32> ap_const_lv32_E0;
    static const sc_lv<32> ap_const_lv32_FF;
    static const sc_lv<32> ap_const_lv32_100;
    static const sc_lv<32> ap_const_lv32_11F;
    static const sc_lv<32> ap_const_lv32_120;
    static const sc_lv<32> ap_const_lv32_13F;
    static const sc_lv<32> ap_const_lv32_140;
    static const sc_lv<32> ap_const_lv32_15F;
    static const sc_lv<32> ap_const_lv32_160;
    static const sc_lv<32> ap_const_lv32_17F;
    static const sc_lv<32> ap_const_lv32_180;
    static const sc_lv<32> ap_const_lv32_19F;
    static const sc_lv<32> ap_const_lv32_1A0;
    static const sc_lv<32> ap_const_lv32_1BF;
    static const sc_lv<32> ap_const_lv32_1C0;
    static const sc_lv<32> ap_const_lv32_1DF;
    static const sc_lv<32> ap_const_lv32_1E0;
    static const sc_lv<32> ap_const_lv32_1FF;
    static const sc_lv<32> ap_const_lv32_200;
    static const sc_lv<32> ap_const_lv32_21F;
    static const sc_lv<32> ap_const_lv32_220;
    static const sc_lv<32> ap_const_lv32_23F;
    static const sc_lv<32> ap_const_lv32_240;
    static const sc_lv<32> ap_const_lv32_25F;
    static const sc_lv<32> ap_const_lv32_260;
    static const sc_lv<32> ap_const_lv32_27F;
    static const sc_lv<32> ap_const_lv32_280;
    static const sc_lv<32> ap_const_lv32_29F;
    static const sc_lv<32> ap_const_lv32_2A0;
    static const sc_lv<32> ap_const_lv32_2BF;
    static const sc_lv<32> ap_const_lv32_2C0;
    static const sc_lv<32> ap_const_lv32_2DF;
    static const sc_lv<32> ap_const_lv32_2E0;
    static const sc_lv<32> ap_const_lv32_2FF;
    static const sc_lv<32> ap_const_lv32_300;
    static const sc_lv<32> ap_const_lv32_31F;
    static const sc_lv<32> ap_const_lv32_320;
    static const sc_lv<32> ap_const_lv32_33F;
    static const sc_lv<32> ap_const_lv32_340;
    static const sc_lv<32> ap_const_lv32_35F;
    static const sc_lv<32> ap_const_lv32_360;
    static const sc_lv<32> ap_const_lv32_37F;
    static const sc_lv<32> ap_const_lv32_380;
    static const sc_lv<32> ap_const_lv32_39F;
    static const sc_lv<32> ap_const_lv32_3A0;
    static const sc_lv<32> ap_const_lv32_3BF;
    static const sc_lv<32> ap_const_lv32_3C0;
    static const sc_lv<32> ap_const_lv32_3DF;
    static const sc_lv<32> ap_const_lv32_3E0;
    static const sc_lv<32> ap_const_lv32_3FF;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_predicate_op115_write_state4();
    void thread_ap_predicate_op117_write_state4();
    void thread_ap_ready();
    void thread_exitcond_fu_229_p2();
    void thread_i_1_fu_235_p2();
    void thread_i_in_stream_V_blk_n();
    void thread_i_in_stream_V_read();
    void thread_i_out_stream_V_blk_n();
    void thread_i_out_stream_V_din();
    void thread_i_out_stream_V_write();
    void thread_p_Result_10_fu_400_p4();
    void thread_p_Result_11_fu_415_p4();
    void thread_p_Result_12_fu_430_p4();
    void thread_p_Result_13_fu_445_p4();
    void thread_p_Result_14_fu_460_p4();
    void thread_p_Result_15_fu_475_p4();
    void thread_p_Result_16_fu_490_p4();
    void thread_p_Result_17_fu_505_p4();
    void thread_p_Result_18_fu_520_p4();
    void thread_p_Result_19_fu_535_p4();
    void thread_p_Result_1_fu_250_p4();
    void thread_p_Result_20_fu_550_p4();
    void thread_p_Result_21_fu_565_p4();
    void thread_p_Result_22_fu_580_p4();
    void thread_p_Result_23_fu_595_p4();
    void thread_p_Result_24_fu_610_p4();
    void thread_p_Result_25_fu_625_p4();
    void thread_p_Result_26_fu_640_p4();
    void thread_p_Result_27_fu_655_p4();
    void thread_p_Result_28_fu_670_p4();
    void thread_p_Result_29_fu_685_p4();
    void thread_p_Result_2_fu_265_p4();
    void thread_p_Result_30_fu_700_p4();
    void thread_p_Result_3_fu_280_p4();
    void thread_p_Result_4_fu_295_p4();
    void thread_p_Result_5_fu_310_p4();
    void thread_p_Result_6_fu_325_p4();
    void thread_p_Result_7_fu_340_p4();
    void thread_p_Result_8_fu_355_p4();
    void thread_p_Result_9_fu_370_p4();
    void thread_p_Result_s_fu_385_p4();
    void thread_tmp_8_10_fu_409_p2();
    void thread_tmp_8_11_fu_424_p2();
    void thread_tmp_8_12_fu_439_p2();
    void thread_tmp_8_13_fu_454_p2();
    void thread_tmp_8_14_fu_469_p2();
    void thread_tmp_8_15_fu_484_p2();
    void thread_tmp_8_16_fu_499_p2();
    void thread_tmp_8_17_fu_514_p2();
    void thread_tmp_8_18_fu_529_p2();
    void thread_tmp_8_19_fu_544_p2();
    void thread_tmp_8_1_fu_259_p2();
    void thread_tmp_8_20_fu_559_p2();
    void thread_tmp_8_21_fu_574_p2();
    void thread_tmp_8_22_fu_589_p2();
    void thread_tmp_8_23_fu_604_p2();
    void thread_tmp_8_24_fu_619_p2();
    void thread_tmp_8_25_fu_634_p2();
    void thread_tmp_8_26_fu_649_p2();
    void thread_tmp_8_27_fu_664_p2();
    void thread_tmp_8_28_fu_679_p2();
    void thread_tmp_8_29_fu_694_p2();
    void thread_tmp_8_2_fu_274_p2();
    void thread_tmp_8_30_fu_709_p2();
    void thread_tmp_8_3_fu_289_p2();
    void thread_tmp_8_4_fu_304_p2();
    void thread_tmp_8_5_fu_319_p2();
    void thread_tmp_8_6_fu_334_p2();
    void thread_tmp_8_7_fu_349_p2();
    void thread_tmp_8_8_fu_364_p2();
    void thread_tmp_8_9_fu_379_p2();
    void thread_tmp_8_fu_244_p2();
    void thread_tmp_8_s_fu_394_p2();
    void thread_tmp_fu_241_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif