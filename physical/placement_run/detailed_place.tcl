# Detailed placement
# detailed_placement
puts "Detailed placement placeholder"
#==============================================================================
# Detailed Placement – Smart Medicine Reminder and Missed Alert Controller
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

read_db "$::env(HOME)/Desktop/Smart-Medicine-Reminder-Controller/physical/placement_run/smart_medicine_reminder_global_place.odb"
read_lef $tech_lef
read_liberty $liberty_file

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
