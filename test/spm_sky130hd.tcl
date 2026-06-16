# spm flow pipe cleaner
source "helpers.tcl"
source "flow_helpers.tcl"
source "sky130hd/sky130hd.vars"

set synth_verilog "spm_sky130hd.v"
set design "spm"
set top_module "spm"
set sdc_file "spm_sky130hd.sdc"
set die_area {0 0 91.425 102.145}
set core_area {5.520 10.880 85.560 89.760}
set global_place_density 0.45
set global_place_pad 0
set slew_margin 20
set cap_margin 20

set_debug_level RSZ resizer 10

include -echo "flow.tcl"

report_buffers
