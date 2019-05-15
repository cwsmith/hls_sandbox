# This script segment is generated automatically by AutoPilot

# FIFO definition:
set ID 6
set FifoName fifo_w32_d1_A
set InstName pipe_stream_V_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set RegisteredInput 0
set DualClock 0
set Depth 1
set DataWd 32
set AddrWd 1
set FullThresh 0
set impl_style auto
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO \
    op fifo \
    stage_num ${NumOfStage} \
    registered_input ${RegisteredInput} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    full_thresh ${FullThresh} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name u_adjs_data_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_adjs_data_V \
    op interface \
    ports { m_axi_u_adjs_data_V_AWVALID { O 1 bit } m_axi_u_adjs_data_V_AWREADY { I 1 bit } m_axi_u_adjs_data_V_AWADDR { O 32 vector } m_axi_u_adjs_data_V_AWID { O 1 vector } m_axi_u_adjs_data_V_AWLEN { O 32 vector } m_axi_u_adjs_data_V_AWSIZE { O 3 vector } m_axi_u_adjs_data_V_AWBURST { O 2 vector } m_axi_u_adjs_data_V_AWLOCK { O 2 vector } m_axi_u_adjs_data_V_AWCACHE { O 4 vector } m_axi_u_adjs_data_V_AWPROT { O 3 vector } m_axi_u_adjs_data_V_AWQOS { O 4 vector } m_axi_u_adjs_data_V_AWREGION { O 4 vector } m_axi_u_adjs_data_V_AWUSER { O 1 vector } m_axi_u_adjs_data_V_WVALID { O 1 bit } m_axi_u_adjs_data_V_WREADY { I 1 bit } m_axi_u_adjs_data_V_WDATA { O 1024 vector } m_axi_u_adjs_data_V_WSTRB { O 128 vector } m_axi_u_adjs_data_V_WLAST { O 1 bit } m_axi_u_adjs_data_V_WID { O 1 vector } m_axi_u_adjs_data_V_WUSER { O 1 vector } m_axi_u_adjs_data_V_ARVALID { O 1 bit } m_axi_u_adjs_data_V_ARREADY { I 1 bit } m_axi_u_adjs_data_V_ARADDR { O 32 vector } m_axi_u_adjs_data_V_ARID { O 1 vector } m_axi_u_adjs_data_V_ARLEN { O 32 vector } m_axi_u_adjs_data_V_ARSIZE { O 3 vector } m_axi_u_adjs_data_V_ARBURST { O 2 vector } m_axi_u_adjs_data_V_ARLOCK { O 2 vector } m_axi_u_adjs_data_V_ARCACHE { O 4 vector } m_axi_u_adjs_data_V_ARPROT { O 3 vector } m_axi_u_adjs_data_V_ARQOS { O 4 vector } m_axi_u_adjs_data_V_ARREGION { O 4 vector } m_axi_u_adjs_data_V_ARUSER { O 1 vector } m_axi_u_adjs_data_V_RVALID { I 1 bit } m_axi_u_adjs_data_V_RREADY { O 1 bit } m_axi_u_adjs_data_V_RDATA { I 1024 vector } m_axi_u_adjs_data_V_RLAST { I 1 bit } m_axi_u_adjs_data_V_RID { I 1 vector } m_axi_u_adjs_data_V_RUSER { I 1 vector } m_axi_u_adjs_data_V_RRESP { I 2 vector } m_axi_u_adjs_data_V_BVALID { I 1 bit } m_axi_u_adjs_data_V_BREADY { O 1 bit } m_axi_u_adjs_data_V_BRESP { I 2 vector } m_axi_u_adjs_data_V_BID { I 1 vector } m_axi_u_adjs_data_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name u_adjs_data_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_adjs_data_V_offset \
    op interface \
    ports { u_adjs_data_V_offset { I 25 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1024 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


