# Global route helper
# global_route -guide_file physical/global_route/smart_medicine_reminder.route_guide
puts "Global route script placeholder"
#==============================================================================
# Global Routing – Smart Medicine Reminder and Missed Alert Controller
# OpenROAD – no pin access variant
#==============================================================================

cd "$::env(HOME)/Desktop/OpenROAD/test"
source helpers.tcl
source flow_helpers.tcl
source sky130hd/sky130hd.vars

read_lef $tech_lef
read_lef $std_cell_lef
read_liberty $liberty_file

# Input: post-hold-repair / post-CTS ODB (update path if different)
read_db "$::env(HOME)/Desktop/Smart-Medicine-Reminder-Controller/physical/placement_run/smart_medicine_reminder_detailed_place.odb"
read_sdc "$::env(HOME)/Desktop/Smart-Medicine-Reminder-Controller/synthesis/sta/smart_medicine_reminder.sdc"

source $layer_rc_file
set_wire_rc -signal -layer $wire_rc_layer
set_wire_rc -clock  -layer $wire_rc_layer_clk
set_routing_layers -signal $global_routing_layers -clock $global_routing_clock_layers
set_dont_use $dont_use

set_propagated_clock [all_clocks]
estimate_parasitics -placement

global_route \
  -guide_file "$::env(HOME)/Desktop/Smart-Medicine-Reminder-Controller/physical/global_route/smart_medicine_reminder.route_guide" \
  -congestion_iterations 100 \
  -verbose

estimate_parasitics -global_routing
report_checks -path_delay min
report_checks -path_delay max
report_worst_slack -min -digits 3
report_worst_slack -max -digits 3

write_db  "$::env(HOME)/Desktop/Smart-Medicine-Reminder-Controller/physical/global_route/smart_medicine_reminder_global_route.odb"
write_def "$::env(HOME)/Desktop/Smart-Medicine-Reminder-Controller/physical/global_route/smart_medicine_reminder_global_route.def"
