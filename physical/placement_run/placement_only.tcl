# Placement only
# global_placement -density 0.5
# detailed_placement
# write_db physical/placement_run/smart_medicine_reminder_detailed_place.odb
puts "Placement script placeholder"
#==============================================================================
# Global + Detailed Placement – Smart Medicine Reminder and Missed Alert Controller
#==============================================================================

cd "$::env(HOME)/Desktop/OpenROAD/test"

source helpers.tcl
source flow_helpers.tcl
source sky130hd/sky130hd.vars

set synth_verilog "$::env(HOME)/Desktop/Smart-Medicine-Reminder-Controller/synthesis/smart_medicine_reminder_mapped.v"
set design "smart_medicine_reminder"
set top_module "smart_medicine_reminder"
set sdc_file "$::env(HOME)/Desktop/Smart-Medicine-Reminder-Controller/synthesis/sta/smart_medicine_reminder.sdc"
set die_area {0 0 300 300}
set core_area {10 10 290 290}

read_libraries
read_verilog $synth_verilog
link_design $top_module
read_sdc $sdc_file
set_thread_count [cpu_count]
sta::set_thread_count 1

initialize_floorplan -site $site -die_area $die_area -core_area $core_area
source $tracks_file
remove_buffers
eval tapcell $tapcell_args
source $pdn_cfg
pdngen

foreach layer_adjustment $global_routing_layer_adjustments {
  lassign $layer_adjustment layer adjustment
  set_global_routing_layer_adjustment $layer $adjustment
}
set_routing_layers -signal $global_routing_layers -clock $global_routing_clock_layers
set_macro_extension 2

global_placement -density $global_place_density \
  -pad_left $global_place_pad -pad_right $global_place_pad -skip_io
place_pins -hor_layers $io_placer_hor_layer -ver_layers $io_placer_ver_layer
global_placement -routability_driven -density $global_place_density \
  -pad_left $global_place_pad -pad_right $global_place_pad

write_db "$::env(HOME)/Desktop/Smart-Medicine-Reminder-Controller/physical/placement_run/smart_medicine_reminder_global_place.odb"

# Detailed placement stage
source $layer_rc_file
set_wire_rc -signal -layer $wire_rc_layer
set_wire_rc -clock  -layer $wire_rc_layer_clk
set_dont_use $dont_use
estimate_parasitics -placement
repair_design -slew_margin $slew_margin -cap_margin $cap_margin
repair_tie_fanout -separation $tie_separation $tielo_port
repair_tie_fanout -separation $tie_separation $tiehi_port
set_placement_padding -global -left $detail_place_pad -right $detail_place_pad
detailed_placement
report_worst_slack -min -digits 3
report_worst_slack -max -digits 3

write_db  "$::env(HOME)/Desktop/Downloads/Smart-Medicine-Reminder-Controller/physical/placement_run/smart_medicine_reminder_detailed_place.odb"
write_def "$::env(HOME)/Desktop/Downloads/Smart-Medicine-Reminder-Controller/physical/placement_run/smart_medicine_reminder_detailed_place.def"
