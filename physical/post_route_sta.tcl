# Post-route STA
# report_checks -path_delay max > physical/final_setup_timing.rpt
# report_checks -path_delay min > physical/final_hold_timing.rpt
puts "Post-route STA placeholder"
#==============================================================================
# Post-Route / Global-Route STA – Smart Medicine Reminder and Missed Alert Controller
#==============================================================================

source "$::env(HOME)/Desktop/OpenROAD/test/helpers.tcl"
source "$::env(HOME)/Desktop/Downloads/OpenROAD/test/flow_helpers.tcl"
source "$::env(HOME)/Desktop/Downloads/OpenROAD/test/sky130hd/sky130hd.vars"

read_lef $tech_lef
read_lef $std_cell_lef
read_liberty $liberty_file

read_db  "$::env(HOME)/Desktop/Downloads/Smart-Medicine-Reminder-Controller/physical/global_route/smart_medicine_reminder_global_route.odb"
read_sdc "$::env(HOME)/Desktop/Downloads/Smart-Medicine-Reminder-Controller/synthesis/sta/smart_medicine_reminder.sdc"

source $layer_rc_file
set_wire_rc -signal -layer $wire_rc_layer
set_wire_rc -clock  -layer $wire_rc_layer_clk
estimate_parasitics -global_routing
set_propagated_clock [all_clocks]

report_checks -path_delay max -format full_clock_expanded
report_checks -path_delay min -format full_clock_expanded
report_worst_slack -max
report_worst_slack -min
report_tns

exit
