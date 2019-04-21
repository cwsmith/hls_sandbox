// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xunite.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XUnite_CfgInitialize(XUnite *InstancePtr, XUnite_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XUnite_Set_adj1_data_V(XUnite *InstancePtr, XUnite_Adj1_data_v Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 0, Data.word_0);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 4, Data.word_1);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 8, Data.word_2);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 12, Data.word_3);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 16, Data.word_4);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 20, Data.word_5);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 24, Data.word_6);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 28, Data.word_7);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 32, Data.word_8);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 36, Data.word_9);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 40, Data.word_10);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 44, Data.word_11);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 48, Data.word_12);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 52, Data.word_13);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 56, Data.word_14);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 60, Data.word_15);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 64, Data.word_16);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 68, Data.word_17);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 72, Data.word_18);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 76, Data.word_19);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 80, Data.word_20);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 84, Data.word_21);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 88, Data.word_22);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 92, Data.word_23);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 96, Data.word_24);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 100, Data.word_25);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 104, Data.word_26);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 108, Data.word_27);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 112, Data.word_28);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 116, Data.word_29);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 120, Data.word_30);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 124, Data.word_31);
}

XUnite_Adj1_data_v XUnite_Get_adj1_data_V(XUnite *InstancePtr) {
    XUnite_Adj1_data_v Data;

    Data.word_0 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 0);
    Data.word_1 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 4);
    Data.word_2 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 8);
    Data.word_3 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 12);
    Data.word_4 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 16);
    Data.word_5 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 20);
    Data.word_6 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 24);
    Data.word_7 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 28);
    Data.word_8 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 32);
    Data.word_9 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 36);
    Data.word_10 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 40);
    Data.word_11 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 44);
    Data.word_12 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 48);
    Data.word_13 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 52);
    Data.word_14 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 56);
    Data.word_15 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 60);
    Data.word_16 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 64);
    Data.word_17 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 68);
    Data.word_18 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 72);
    Data.word_19 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 76);
    Data.word_20 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 80);
    Data.word_21 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 84);
    Data.word_22 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 88);
    Data.word_23 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 92);
    Data.word_24 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 96);
    Data.word_25 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 100);
    Data.word_26 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 104);
    Data.word_27 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 108);
    Data.word_28 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 112);
    Data.word_29 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 116);
    Data.word_30 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 120);
    Data.word_31 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ1_DATA_V_DATA + 124);
    return Data;
}

void XUnite_Set_adj2_data_V(XUnite *InstancePtr, XUnite_Adj2_data_v Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 0, Data.word_0);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 4, Data.word_1);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 8, Data.word_2);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 12, Data.word_3);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 16, Data.word_4);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 20, Data.word_5);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 24, Data.word_6);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 28, Data.word_7);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 32, Data.word_8);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 36, Data.word_9);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 40, Data.word_10);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 44, Data.word_11);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 48, Data.word_12);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 52, Data.word_13);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 56, Data.word_14);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 60, Data.word_15);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 64, Data.word_16);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 68, Data.word_17);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 72, Data.word_18);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 76, Data.word_19);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 80, Data.word_20);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 84, Data.word_21);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 88, Data.word_22);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 92, Data.word_23);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 96, Data.word_24);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 100, Data.word_25);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 104, Data.word_26);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 108, Data.word_27);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 112, Data.word_28);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 116, Data.word_29);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 120, Data.word_30);
    XUnite_WriteReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 124, Data.word_31);
}

XUnite_Adj2_data_v XUnite_Get_adj2_data_V(XUnite *InstancePtr) {
    XUnite_Adj2_data_v Data;

    Data.word_0 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 0);
    Data.word_1 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 4);
    Data.word_2 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 8);
    Data.word_3 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 12);
    Data.word_4 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 16);
    Data.word_5 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 20);
    Data.word_6 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 24);
    Data.word_7 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 28);
    Data.word_8 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 32);
    Data.word_9 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 36);
    Data.word_10 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 40);
    Data.word_11 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 44);
    Data.word_12 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 48);
    Data.word_13 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 52);
    Data.word_14 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 56);
    Data.word_15 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 60);
    Data.word_16 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 64);
    Data.word_17 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 68);
    Data.word_18 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 72);
    Data.word_19 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 76);
    Data.word_20 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 80);
    Data.word_21 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 84);
    Data.word_22 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 88);
    Data.word_23 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 92);
    Data.word_24 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 96);
    Data.word_25 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 100);
    Data.word_26 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 104);
    Data.word_27 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 108);
    Data.word_28 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 112);
    Data.word_29 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 116);
    Data.word_30 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 120);
    Data.word_31 = XUnite_ReadReg(InstancePtr->Control_BaseAddress, XUNITE_CONTROL_ADDR_ADJ2_DATA_V_DATA + 124);
    return Data;
}
