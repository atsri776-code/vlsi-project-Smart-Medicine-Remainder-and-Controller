# Final Routed STA - Smart Medicine Reminder Controller

# read_db physical/smart_medicine_reminder_routed.odb
# read_spef physical/smart_medicine_reminder.spef
# read_sdc  synthesis/sta/smart_medicine_reminder.sdc

report_checks -path_delay max -fields {slew cap input_pins} \
    -format full_clock_expanded > physical/final_setup_timing.rpt
report_checks -path_delay min -fields {slew cap input_pins} \
    -format full_clock_expanded > physical/final_hold_timing.rpt
report_tns > physical/final_tns.rpt
report_wns > physical/final_wns.rpt

puts "Final routed STA complete."
