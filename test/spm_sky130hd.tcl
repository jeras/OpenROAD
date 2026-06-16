# spm flow pipe cleaner
source "helpers.tcl"
source "flow_helpers.tcl"
source "sky130hd/sky130hd.vars"

set synth_verilog "spm_sky130hd.v"
set design "spm"
set top_module "spm"
set sdc_file "spm_sky130hd.sdc"
set die_area {0 0 299.96 300.128}
set core_area {9.996 10.08 289.964 290.048}

set_debug_level RSZ resizer 10

include -echo "flow.tcl"

report_buffers
