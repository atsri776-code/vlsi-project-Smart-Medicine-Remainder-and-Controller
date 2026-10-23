#!/bin/bash
# Full flow helper - Smart Medicine Reminder and Missed Alert Controller
set -e
cd "$(dirname "$0")"

echo "=============================================================="
echo " Smart Medicine Reminder - RTL to GDS Flow"
echo "=============================================================="

echo "[1] RTL Simulation"
# iverilog -g2012 -o sim/rtl.vvp rtl/smart_medicine_reminder.sv tb/smart_medicine_reminder_tb.sv
# vvp sim/rtl.vvp

echo "[2] Synthesis (Yosys)"
# yosys -c synthesis/synth.tcl

echo "[3] Gate-level simulation"
# ...

echo "[4] Floorplan / Place / CTS / Route (OpenROAD)"
# openroad -exit physical/smart_medicine_reminder.tcl

echo "[5] Detailed route"
# openroad -exit detailed_route.tcl

echo "[6] Final routed STA"
# openroad -exit final_routed_sta.tcl

echo "[7] LVS"
# bash run_lvs.sh

echo "=============================================================="
echo " Update PDK paths and uncomment tool commands to run."
echo "=============================================================="
