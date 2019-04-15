// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xintersect.h"

extern XIntersect_Config XIntersect_ConfigTable[];

XIntersect_Config *XIntersect_LookupConfig(u16 DeviceId) {
	XIntersect_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XINTERSECT_NUM_INSTANCES; Index++) {
		if (XIntersect_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XIntersect_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XIntersect_Initialize(XIntersect *InstancePtr, u16 DeviceId) {
	XIntersect_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XIntersect_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XIntersect_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif
