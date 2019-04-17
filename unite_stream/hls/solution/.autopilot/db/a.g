#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/mengy/smith-hls-sandbox/hls_sandbox/unite_stream/hls/solution/.autopilot/db/a.g.bc ${1+"$@"}
