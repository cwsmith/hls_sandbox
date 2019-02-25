CC=gcc
CXX=g++
CFLAGS=-std=c99 -O2
CXXFLAGS=-std=c++11 
LDFLAGS=-lm -lpthread
VIVADO_HLS_DIR=/opt/Xilinx/Vivado/2018.2

all: synthesis main

synthesis:
	@echo VIVADO_HLS_DIR $(VIVADO_HLS_DIR)
	vivado_hls -f Synthesis.tcl
	cp hls/solution/syn/report/invert_csynth.rpt report.rpt
	$(CXX) $(CXXFLAGS) -I../hlslib/include -I$(VIVADO_HLS_DIR)/include -c invert.cc -o invert.o

main: invert.o
	$(CXX) $^ $(LDFLAGS) -o $@

clean:
	rm -f *.o
	rm -r hls || true
	rm vivado_hls.log || true
	rm report.rpt || true
