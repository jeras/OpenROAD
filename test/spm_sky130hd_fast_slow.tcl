# spm flow with fast/slow corners
source "helpers.tcl"
source "flow_helpers.tcl"
source "sky130hd/sky130hd.vars"

set synth_verilog "spm_sky130hd.v"
set design "spm"
set top_module "spm"
set sdc_file "spm_sky130hd.sdc"
set die_area {0 0 299.96 300.128}
set core_area {9.996 10.08 289.964 290.048}

set max_drv_count 1
# liberty units (ns)
set setup_slack_limit -7.0
set hold_slack_limit 0.0

define_corners fast slow
set power_corner "fast"
include -echo flow.tcl
