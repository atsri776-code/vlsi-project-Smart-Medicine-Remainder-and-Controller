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
