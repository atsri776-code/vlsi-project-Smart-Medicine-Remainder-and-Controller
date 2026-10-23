# 16-Corner / Multi-corner STA - Smart Medicine Reminder
# Tool: OpenSTA

puts "============================================================"
puts " Multi-corner STA - smart_medicine_reminder"
puts "============================================================"

# Update liberty paths to your Sky130 PDK
set PDK_LIB "/path/to/sky130/lib"

proc run_one_corner {name libfile} {
    puts "\n--- Corner: $name ---"
    if {![file exists $libfile]} {
        puts "WARNING: $libfile not found - skipping"
        return
    }
    read_liberty $libfile
    read_verilog ../../synthesis/smart_medicine_reminder_mapped.v
    link_design smart_medicine_reminder
    read_sdc smart_medicine_reminder.sdc
    report_checks -path_delay max > ${name}_setup.rpt
    report_checks -path_delay min > ${name}_hold.rpt
    report_tns > ${name}_tns.rpt
    report_wns > ${name}_wns.rpt
    puts "Reports written for $name"
}

run_one_corner "tt" "$PDK_LIB/sky130_fd_sc_hd__tt_025C_1v80.lib"
run_one_corner "ss" "$PDK_LIB/sky130_fd_sc_hd__ss_100C_1v60.lib"
run_one_corner "ff" "$PDK_LIB/sky130_fd_sc_hd__ff_n40C_1v95.lib"

puts "\n===== Multi-corner STA complete ====="
