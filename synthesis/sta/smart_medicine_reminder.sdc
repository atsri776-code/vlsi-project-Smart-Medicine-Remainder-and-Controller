# SDC Constraints - Smart Medicine Reminder and Missed Alert Controller
# Target : Sky130HD / OpenROAD

create_clock -name clk -period 100.0 [get_ports clk]

set_clock_uncertainty -setup 0.25 [get_clocks clk]
set_clock_uncertainty -hold  0.05 [get_clocks clk]

set_input_delay  -clock clk -max 20.0 [all_inputs]
set_input_delay  -clock clk -min  2.0 [all_inputs]
set_output_delay -clock clk -max 20.0 [all_outputs]
set_output_delay -clock clk -min  2.0 [all_outputs]

set_input_transition 0.1 [all_inputs]
set_load 0.05 [all_outputs]

set_false_path -from [get_ports rst_n]

set_max_transition 1.5 [current_design]
set_max_fanout 16 [current_design]
