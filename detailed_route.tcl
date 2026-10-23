# Detailed Routing - Smart Medicine Reminder Controller
# Run inside OpenROAD after global route

# read_db physical/global_route/smart_medicine_reminder_global_route.odb

detailed_route \
    -output_drc physical/detailed_route_drc.rpt \
    -output_maze physical/maze.log

write_def physical/smart_medicine_reminder_routed.def
write_db  physical/smart_medicine_reminder_routed.odb

puts "Detailed routing complete."
