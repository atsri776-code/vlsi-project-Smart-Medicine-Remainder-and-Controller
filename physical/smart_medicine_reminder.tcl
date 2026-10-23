# OpenROAD main physical script - Smart Medicine Reminder
# Update PDK paths before running

# read_liberty /path/to/sky130_fd_sc_hd__tt_025C_1v80.lib
# read_lef    /path/to/tech.lef
# read_lef    /path/to/sky130_fd_sc_hd.lef
# read_verilog synthesis/smart_medicine_reminder_mapped.v
# link_design smart_medicine_reminder
# read_sdc synthesis/sta/smart_medicine_reminder.sdc

# initialize_floorplan -die_area {0 0 300 300} -core_area {20 20 280 280} -site unithd
# ... PDN, place, cts, global_route ...

# write_db  physical/global_route/smart_medicine_reminder_global_route.odb
# write_def physical/global_route/smart_medicine_reminder_global_route.def
puts "Physical flow script ready - set PDK and uncomment commands."
# Smart Medicine Reminder and Missed Alert Controller - OpenROAD configuration

source "helpers.tcl"
source "flow_helpers.tcl"
source "sky130hd/sky130hd.vars"

set synth_verilog "$::env(HOME)/Desktop/Smart-Medicine-Reminder-Controller/synthesis/smart_medicine_reminder_mapped.v"
set design "smart_medicine_reminder"
set top_module "smart_medicine_reminder"
set sdc_file "$::env(HOME)/Desktop/Smart-Medicine-Reminder-Controller/synthesis/sta/smart_medicine_reminder.sdc"

# Provisional floorplan dimensions, in microns
set die_area {0 0 300 300}
set core_area {10 10 290 290}

include -echo "flow.tcl"
