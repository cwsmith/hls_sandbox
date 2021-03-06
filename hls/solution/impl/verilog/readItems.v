// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module readItems (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        num,
        m_axi_adjs_data_V_AWVALID,
        m_axi_adjs_data_V_AWREADY,
        m_axi_adjs_data_V_AWADDR,
        m_axi_adjs_data_V_AWID,
        m_axi_adjs_data_V_AWLEN,
        m_axi_adjs_data_V_AWSIZE,
        m_axi_adjs_data_V_AWBURST,
        m_axi_adjs_data_V_AWLOCK,
        m_axi_adjs_data_V_AWCACHE,
        m_axi_adjs_data_V_AWPROT,
        m_axi_adjs_data_V_AWQOS,
        m_axi_adjs_data_V_AWREGION,
        m_axi_adjs_data_V_AWUSER,
        m_axi_adjs_data_V_WVALID,
        m_axi_adjs_data_V_WREADY,
        m_axi_adjs_data_V_WDATA,
        m_axi_adjs_data_V_WSTRB,
        m_axi_adjs_data_V_WLAST,
        m_axi_adjs_data_V_WID,
        m_axi_adjs_data_V_WUSER,
        m_axi_adjs_data_V_ARVALID,
        m_axi_adjs_data_V_ARREADY,
        m_axi_adjs_data_V_ARADDR,
        m_axi_adjs_data_V_ARID,
        m_axi_adjs_data_V_ARLEN,
        m_axi_adjs_data_V_ARSIZE,
        m_axi_adjs_data_V_ARBURST,
        m_axi_adjs_data_V_ARLOCK,
        m_axi_adjs_data_V_ARCACHE,
        m_axi_adjs_data_V_ARPROT,
        m_axi_adjs_data_V_ARQOS,
        m_axi_adjs_data_V_ARREGION,
        m_axi_adjs_data_V_ARUSER,
        m_axi_adjs_data_V_RVALID,
        m_axi_adjs_data_V_RREADY,
        m_axi_adjs_data_V_RDATA,
        m_axi_adjs_data_V_RLAST,
        m_axi_adjs_data_V_RID,
        m_axi_adjs_data_V_RUSER,
        m_axi_adjs_data_V_RRESP,
        m_axi_adjs_data_V_BVALID,
        m_axi_adjs_data_V_BREADY,
        m_axi_adjs_data_V_BRESP,
        m_axi_adjs_data_V_BID,
        m_axi_adjs_data_V_BUSER,
        adjs_data_V_offset,
        i_out_stream_V_din,
        i_out_stream_V_full_n,
        i_out_stream_V_write
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] num;
output   m_axi_adjs_data_V_AWVALID;
input   m_axi_adjs_data_V_AWREADY;
output  [31:0] m_axi_adjs_data_V_AWADDR;
output  [0:0] m_axi_adjs_data_V_AWID;
output  [31:0] m_axi_adjs_data_V_AWLEN;
output  [2:0] m_axi_adjs_data_V_AWSIZE;
output  [1:0] m_axi_adjs_data_V_AWBURST;
output  [1:0] m_axi_adjs_data_V_AWLOCK;
output  [3:0] m_axi_adjs_data_V_AWCACHE;
output  [2:0] m_axi_adjs_data_V_AWPROT;
output  [3:0] m_axi_adjs_data_V_AWQOS;
output  [3:0] m_axi_adjs_data_V_AWREGION;
output  [0:0] m_axi_adjs_data_V_AWUSER;
output   m_axi_adjs_data_V_WVALID;
input   m_axi_adjs_data_V_WREADY;
output  [1023:0] m_axi_adjs_data_V_WDATA;
output  [127:0] m_axi_adjs_data_V_WSTRB;
output   m_axi_adjs_data_V_WLAST;
output  [0:0] m_axi_adjs_data_V_WID;
output  [0:0] m_axi_adjs_data_V_WUSER;
output   m_axi_adjs_data_V_ARVALID;
input   m_axi_adjs_data_V_ARREADY;
output  [31:0] m_axi_adjs_data_V_ARADDR;
output  [0:0] m_axi_adjs_data_V_ARID;
output  [31:0] m_axi_adjs_data_V_ARLEN;
output  [2:0] m_axi_adjs_data_V_ARSIZE;
output  [1:0] m_axi_adjs_data_V_ARBURST;
output  [1:0] m_axi_adjs_data_V_ARLOCK;
output  [3:0] m_axi_adjs_data_V_ARCACHE;
output  [2:0] m_axi_adjs_data_V_ARPROT;
output  [3:0] m_axi_adjs_data_V_ARQOS;
output  [3:0] m_axi_adjs_data_V_ARREGION;
output  [0:0] m_axi_adjs_data_V_ARUSER;
input   m_axi_adjs_data_V_RVALID;
output   m_axi_adjs_data_V_RREADY;
input  [1023:0] m_axi_adjs_data_V_RDATA;
input   m_axi_adjs_data_V_RLAST;
input  [0:0] m_axi_adjs_data_V_RID;
input  [0:0] m_axi_adjs_data_V_RUSER;
input  [1:0] m_axi_adjs_data_V_RRESP;
input   m_axi_adjs_data_V_BVALID;
output   m_axi_adjs_data_V_BREADY;
input  [1:0] m_axi_adjs_data_V_BRESP;
input  [0:0] m_axi_adjs_data_V_BID;
input  [0:0] m_axi_adjs_data_V_BUSER;
input  [24:0] adjs_data_V_offset;
output  [31:0] i_out_stream_V_din;
input   i_out_stream_V_full_n;
output   i_out_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_adjs_data_V_ARVALID;
reg m_axi_adjs_data_V_RREADY;
reg i_out_stream_V_write;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    adjs_data_V_blk_n_AR;
wire    ap_CS_fsm_state3;
reg    adjs_data_V_blk_n_R;
wire    ap_CS_fsm_state10;
reg    i_out_stream_V_blk_n;
wire    ap_CS_fsm_state12;
wire   [10:0] tmp_fu_136_p3;
reg   [10:0] tmp_reg_300;
wire   [25:0] sext_cast_fu_144_p1;
reg   [25:0] sext_cast_reg_305;
wire   [10:0] i_1_fu_153_p2;
reg   [10:0] i_1_reg_313;
wire    ap_CS_fsm_state2;
wire   [4:0] tmp_79_fu_173_p1;
reg   [4:0] tmp_79_reg_318;
wire   [0:0] exitcond_fu_148_p2;
wire   [25:0] sum_fu_177_p2;
reg   [25:0] sum_reg_323;
reg    ap_sig_ioackin_m_axi_adjs_data_V_ARREADY;
wire   [9:0] Lo_assign_fu_192_p3;
reg   [9:0] Lo_assign_reg_334;
wire   [9:0] Hi_assign_fu_199_p2;
reg   [9:0] Hi_assign_reg_339;
reg   [1023:0] p_Val2_s_reg_344;
wire   [0:0] tmp_80_fu_205_p2;
reg   [0:0] tmp_80_reg_350;
wire   [31:0] temp_V_fu_296_p1;
reg   [31:0] temp_V_reg_357;
wire    ap_CS_fsm_state11;
reg   [10:0] i_reg_125;
wire   [63:0] sum_cast_fu_182_p1;
reg    ap_reg_ioackin_m_axi_adjs_data_V_ARREADY;
wire   [5:0] tmp_78_fu_159_p4;
wire   [25:0] tmp_2_cast_fu_169_p1;
wire   [10:0] tmp_81_fu_211_p1;
wire   [10:0] tmp_82_fu_214_p1;
wire   [10:0] tmp_84_fu_226_p2;
wire   [10:0] tmp_86_fu_238_p2;
reg   [1023:0] tmp_83_fu_217_p4;
wire   [10:0] tmp_85_fu_232_p2;
wire   [10:0] tmp_87_fu_244_p3;
wire   [10:0] tmp_89_fu_257_p3;
wire   [10:0] tmp_90_fu_264_p2;
wire   [1023:0] tmp_88_fu_251_p3;
wire   [1023:0] tmp_91_fu_270_p1;
wire   [1023:0] tmp_92_fu_274_p1;
wire   [1023:0] tmp_93_fu_278_p2;
wire   [1023:0] tmp_94_fu_284_p2;
wire   [1023:0] p_Result_s_fu_290_p2;
reg   [11:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_reg_ioackin_m_axi_adjs_data_V_ARREADY = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_adjs_data_V_ARREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            if ((ap_sig_ioackin_m_axi_adjs_data_V_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_adjs_data_V_ARREADY <= 1'b0;
            end else if ((m_axi_adjs_data_V_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_adjs_data_V_ARREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((i_out_stream_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        i_reg_125 <= i_1_reg_313;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_125 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((m_axi_adjs_data_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        Hi_assign_reg_339[9 : 5] <= Hi_assign_fu_199_p2[9 : 5];
        Lo_assign_reg_334[9 : 5] <= Lo_assign_fu_192_p3[9 : 5];
        p_Val2_s_reg_344 <= m_axi_adjs_data_V_RDATA;
        tmp_80_reg_350 <= tmp_80_fu_205_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_313 <= i_1_fu_153_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sext_cast_reg_305[24 : 0] <= sext_cast_fu_144_p1[24 : 0];
        tmp_reg_300[10 : 5] <= tmp_fu_136_p3[10 : 5];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_148_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sum_reg_323 <= sum_fu_177_p2;
        tmp_79_reg_318 <= tmp_79_fu_173_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        temp_V_reg_357 <= temp_V_fu_296_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        adjs_data_V_blk_n_AR = m_axi_adjs_data_V_ARREADY;
    end else begin
        adjs_data_V_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        adjs_data_V_blk_n_R = m_axi_adjs_data_V_RVALID;
    end else begin
        adjs_data_V_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_148_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_148_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_adjs_data_V_ARREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_adjs_data_V_ARREADY = m_axi_adjs_data_V_ARREADY;
    end else begin
        ap_sig_ioackin_m_axi_adjs_data_V_ARREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i_out_stream_V_blk_n = i_out_stream_V_full_n;
    end else begin
        i_out_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((i_out_stream_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        i_out_stream_V_write = 1'b1;
    end else begin
        i_out_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_adjs_data_V_ARREADY == 1'b0) & (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_adjs_data_V_ARVALID = 1'b1;
    end else begin
        m_axi_adjs_data_V_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_adjs_data_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        m_axi_adjs_data_V_RREADY = 1'b1;
    end else begin
        m_axi_adjs_data_V_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond_fu_148_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (ap_sig_ioackin_m_axi_adjs_data_V_ARREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((m_axi_adjs_data_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((i_out_stream_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Hi_assign_fu_199_p2 = (10'd31 | Lo_assign_fu_192_p3);

assign Lo_assign_fu_192_p3 = {{tmp_79_reg_318}, {5'd0}};

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign exitcond_fu_148_p2 = ((i_reg_125 == tmp_reg_300) ? 1'b1 : 1'b0);

assign i_1_fu_153_p2 = (i_reg_125 + 11'd1);

assign i_out_stream_V_din = temp_V_reg_357;

assign m_axi_adjs_data_V_ARADDR = sum_cast_fu_182_p1;

assign m_axi_adjs_data_V_ARBURST = 2'd0;

assign m_axi_adjs_data_V_ARCACHE = 4'd0;

assign m_axi_adjs_data_V_ARID = 1'd0;

assign m_axi_adjs_data_V_ARLEN = 32'd1;

assign m_axi_adjs_data_V_ARLOCK = 2'd0;

assign m_axi_adjs_data_V_ARPROT = 3'd0;

assign m_axi_adjs_data_V_ARQOS = 4'd0;

assign m_axi_adjs_data_V_ARREGION = 4'd0;

assign m_axi_adjs_data_V_ARSIZE = 3'd0;

assign m_axi_adjs_data_V_ARUSER = 1'd0;

assign m_axi_adjs_data_V_AWADDR = 32'd0;

assign m_axi_adjs_data_V_AWBURST = 2'd0;

assign m_axi_adjs_data_V_AWCACHE = 4'd0;

assign m_axi_adjs_data_V_AWID = 1'd0;

assign m_axi_adjs_data_V_AWLEN = 32'd0;

assign m_axi_adjs_data_V_AWLOCK = 2'd0;

assign m_axi_adjs_data_V_AWPROT = 3'd0;

assign m_axi_adjs_data_V_AWQOS = 4'd0;

assign m_axi_adjs_data_V_AWREGION = 4'd0;

assign m_axi_adjs_data_V_AWSIZE = 3'd0;

assign m_axi_adjs_data_V_AWUSER = 1'd0;

assign m_axi_adjs_data_V_AWVALID = 1'b0;

assign m_axi_adjs_data_V_BREADY = 1'b0;

assign m_axi_adjs_data_V_WDATA = 1024'd0;

assign m_axi_adjs_data_V_WID = 1'd0;

assign m_axi_adjs_data_V_WLAST = 1'b0;

assign m_axi_adjs_data_V_WSTRB = 128'd0;

assign m_axi_adjs_data_V_WUSER = 1'd0;

assign m_axi_adjs_data_V_WVALID = 1'b0;

assign p_Result_s_fu_290_p2 = (tmp_94_fu_284_p2 & tmp_93_fu_278_p2);

assign sext_cast_fu_144_p1 = adjs_data_V_offset;

assign sum_cast_fu_182_p1 = sum_reg_323;

assign sum_fu_177_p2 = (sext_cast_reg_305 + tmp_2_cast_fu_169_p1);

assign temp_V_fu_296_p1 = p_Result_s_fu_290_p2[31:0];

assign tmp_2_cast_fu_169_p1 = tmp_78_fu_159_p4;

assign tmp_78_fu_159_p4 = {{i_reg_125[10:5]}};

assign tmp_79_fu_173_p1 = i_reg_125[4:0];

assign tmp_80_fu_205_p2 = ((Lo_assign_fu_192_p3 > Hi_assign_fu_199_p2) ? 1'b1 : 1'b0);

assign tmp_81_fu_211_p1 = Lo_assign_reg_334;

assign tmp_82_fu_214_p1 = Hi_assign_reg_339;

integer ap_tvar_int_0;

always @ (p_Val2_s_reg_344) begin
    for (ap_tvar_int_0 = 1024 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 1023 - 0) begin
            tmp_83_fu_217_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_83_fu_217_p4[ap_tvar_int_0] = p_Val2_s_reg_344[1023 - ap_tvar_int_0];
        end
    end
end

assign tmp_84_fu_226_p2 = (tmp_81_fu_211_p1 - tmp_82_fu_214_p1);

assign tmp_85_fu_232_p2 = (tmp_81_fu_211_p1 ^ 11'd1023);

assign tmp_86_fu_238_p2 = (tmp_82_fu_214_p1 - tmp_81_fu_211_p1);

assign tmp_87_fu_244_p3 = ((tmp_80_reg_350[0:0] === 1'b1) ? tmp_84_fu_226_p2 : tmp_86_fu_238_p2);

assign tmp_88_fu_251_p3 = ((tmp_80_reg_350[0:0] === 1'b1) ? tmp_83_fu_217_p4 : p_Val2_s_reg_344);

assign tmp_89_fu_257_p3 = ((tmp_80_reg_350[0:0] === 1'b1) ? tmp_85_fu_232_p2 : tmp_81_fu_211_p1);

assign tmp_90_fu_264_p2 = (11'd1023 - tmp_87_fu_244_p3);

assign tmp_91_fu_270_p1 = tmp_89_fu_257_p3;

assign tmp_92_fu_274_p1 = tmp_90_fu_264_p2;

assign tmp_93_fu_278_p2 = tmp_88_fu_251_p3 >> tmp_91_fu_270_p1;

assign tmp_94_fu_284_p2 = 1024'd179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137215 >> tmp_92_fu_274_p1;

assign tmp_fu_136_p3 = {{num}, {5'd0}};

always @ (posedge ap_clk) begin
    tmp_reg_300[4:0] <= 5'b00000;
    sext_cast_reg_305[25] <= 1'b0;
    Lo_assign_reg_334[4:0] <= 5'b00000;
    Hi_assign_reg_339[4:0] <= 5'b11111;
end

endmodule //readItems
