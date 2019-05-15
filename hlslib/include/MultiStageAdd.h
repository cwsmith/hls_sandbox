/// @author    Johannes de Fine Licht (definelicht@inf.ethz.ch)
/// @date      April 2017
/// @copyright This software is copyrighted under the BSD 3-Clause License. 
#pragma once

#include "hlslib/Stream.h"
#include <ap_fixed.h>

using Data_t = int;
constexpr int kStages = 8;
constexpr int kNumElements = 1024;

extern "C" {

void MultiStageAdd(Data_t const *memIn, Data_t *memOut);

}
