open_project hls 
open_solution solution 
set_part xcku5p-sfvb784-3-e 
add_files -cflags "-DHLSLIB_SYNTHESIS -std=c++11 -I./hlslib/include" "invert.cc" 
set_top invert
create_clock -period 300MHz -name default
csynth_design
exit
