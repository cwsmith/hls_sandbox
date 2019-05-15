#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/mengy/smith-hls-sandbox/hls_sandbox/g_rg_transit/hls/solution/.autopilot/db/a.g.bc ${1+"$@"}
