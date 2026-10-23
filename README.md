# Smart Medicine Reminder and Missed Alert Controller — RTL-to-GDSII Implementation Using OpenROAD

![Verilog](https://img.shields.io/badge/HDL-SystemVerilog-blue)
![Technology](https://img.shields.io/badge/Technology-Sky130HD-orange)
![Physical Design](https://img.shields.io/badge/Physical%20Design-OpenROAD-green)
![Project Status](https://img.shields.io/badge/Status-In%20Progress-yellow)

## 1. Project Overview

The **Smart Medicine Reminder and Missed Alert Controller** is a digital hardware design project that demonstrates the implementation of a SystemVerilog-based digital control circuit through an RTL-to-GDSII ASIC design flow.

The project starts with Register Transfer Level (RTL) design and functional simulation, then progresses through logic synthesis, gate-level verification, floorplanning, power planning, standard-cell placement, clock tree synthesis, and global routing.

The physical implementation uses the OpenROAD toolchain and the SkyWater SKY130 High-Density (Sky130HD) standard-cell library.

The objective is to understand how a digital hardware design is transformed from behavioral RTL into a physical chip layout, while examining timing constraints, cell placement, clock distribution, routing, and physical verification.

**Current milestone:** RTL, simulation, synthesis scripts, multi-corner STA, and physical-flow scripts are ready. Detailed routing, final routed timing analysis, and final DRC/LVS signoff remain to be completed with the local PDK.

## 2. Project Objectives

The major objectives of this project are:

* Design the smart medicine reminder controller using SystemVerilog HDL.
* Understand synchronous digital design and control logic.
* Verify the RTL through functional simulation.
* Synthesize the RTL into a technology-mapped gate-level netlist.
* Perform gate-level simulation to validate the synthesized design.
* Define timing constraints using an SDC file.
* Understand ASIC floorplanning and core-area planning.
* Perform power-distribution planning.
* Place standard cells within the floorplan.
* Build a clock distribution network using Clock Tree Synthesis (CTS).
* Perform global routing and prepare for detailed routing.
* Analyze setup and hold timing.
* Prepare the design for Design Rule Checking (DRC) and Layout Versus Schematic (LVS) verification.
* Understand the final steps required to generate a verified GDSII layout.

## 3. Design Description

A smart medicine reminder controller is a control-oriented digital circuit that manages medicine-dose schedules and raises alerts based on time and user acknowledgement.

The implemented RTL includes:

* Input signal processing (schedule load, taken acknowledgement, 1 Hz tick).
* State / condition evaluation for dose time and missed window.
* Control logic for reminder and missed-alert behaviour.
* Clocked sequential logic (real-time clock + control FSM).
* Output control signals (reminder, missed_alert, current time).
* Active-low asynchronous reset handling.

The controller’s functional behavior is verified against its RTL specification and simulation testbench before physical implementation.

### Ports

```
module smart_medicine_reminder (
    input  logic        clk,
    input  logic        rst_n,
    input  logic        tick_1hz,
    input  logic [4:0]  set_hour,
    input  logic [5:0]  set_min,
    input  logic [5:0]  miss_window,
    input  logic        taken,
    input  logic        load_sched,
    output logic        reminder,
    output logic        missed_alert,
    output logic [4:0]  cur_hour,
    output logic [5:0]  cur_min
);
```

## 4. Tools and Technologies

| Tool or technology | Purpose |
| --- | --- |
| SystemVerilog HDL | RTL design and hardware description |
| RTL simulator | Functional verification of the design |
| Synthesis tool | Logic optimization and technology mapping |
| OpenROAD | Physical design implementation |
| SkyWater SKY130HD | Standard-cell technology library |
| LEF files | Physical cell and technology abstracts |
| Liberty files | Cell timing and electrical characteristics |
| SDC | Clock and timing constraints |
| OpenDB | Physical implementation database |
| DEF | Physical layout and placement representation |
| SPEF | Extracted interconnect parasitics for timing analysis |
| DRC | Verification of physical layout rules |
| LVS | Comparison of layout connectivity against the reference netlist |

## 5. RTL-to-GDSII Design Flow

```
+-------------------------+
|    SystemVerilog RTL    |
+------------+------------+
             |
             v
+-------------------------+
|    RTL Simulation       |
+------------+------------+
             |
             v
+-------------------------+
|    Logic Synthesis      |
+------------+------------+
             |
             v
+-------------------------+
|  Gate-Level Simulation  |
+------------+------------+
             |
             v
+-------------------------+
|      Floorplanning      |
+------------+------------+
             |
             v
+-------------------------+
|      Power Planning     |
+------------+------------+
             |
             v
+-------------------------+
|   Standard Cell Place   |
+------------+------------+
             |
             v
+-------------------------+
| Clock Tree Synthesis    |
+------------+------------+
             |
             v
+-------------------------+
|      Global Routing     |
+------------+------------+
             |
             v
+-------------------------+
|     Detailed Routing    |
+------------+------------+
             |
             v
+-------------------------+
|   Final Routed STA      |
+------------+------------+
             |
             v
+-------------------------+
|      DRC and LVS        |
+------------+------------+
             |
             v
+-------------------------+
|  Final GDSII Export     |
+-------------------------+
```

## 6. Detailed Implementation Methodology

### 6.1 RTL Design

The design is described in SystemVerilog at the Register Transfer Level.

RTL describes the intended behavior of the controller using combinational and sequential logic. At this stage, the primary concerns are functional correctness, reset behavior, clocked operation, and proper output generation.

**Source:** `rtl/smart_medicine_reminder.sv`

### 6.2 RTL Simulation

RTL simulation checks the controller’s functional behavior before synthesis.

A suitable testbench should verify:

* Reset operation.
* Schedule loading.
* Correct reminder at dose time.
* Missed-alert assertion after window expiry.
* Clearing of alerts on `taken`.
* Clock-dependent behavior.

**Testbench:** `tb/smart_medicine_reminder_tb.sv`

### 6.3 Logic Synthesis

Synthesis converts the RTL into a gate-level netlist.

The synthesis process typically includes:

1. Reading the RTL source files.
2. Elaborating the design hierarchy.
3. Performing logic optimization.
4. Mapping logic to available standard cells.
5. Generating the synthesized netlist.
6. Applying timing and cell-library constraints.

The output netlist represents the controller using cells from the selected standard-cell library.

**Outputs:** `synthesis/smart_medicine_reminder_synth.v`, `synthesis/smart_medicine_reminder_mapped.v`

### 6.4 Gate-Level Simulation

Gate-level simulation checks the synthesized netlist against expected behavior.

It can reveal issues associated with synthesis, reset handling, initialization assumptions, and differences between RTL and the mapped implementation. Timing-aware gate-level simulation additionally requires appropriate delay information.

### 6.5 Timing Constraints

Static Timing Analysis uses timing constraints to evaluate whether the design satisfies its required timing relationships.

The project includes an SDC file:

`synthesis/sta/smart_medicine_reminder.sdc`

Important constraint categories include:

* Clock definition and period.
* Clock uncertainty.
* Input delay.
* Output delay.
* Input transition.
* Output load.
* False paths or multicycle paths, if justified by the design.

### 6.6 Floorplanning

Floorplanning establishes the physical region used to implement the circuit.

Typical activities include:

* Defining the die and core boundaries.
* Selecting the placement area.
* Establishing placement rows and routing tracks.
* Loading technology and standard-cell physical abstracts.
* Preparing the design for power planning and placement.

The design targets a nominal die boundary of **300 × 300 µm**.

### 6.7 Power Planning

Power planning establishes the infrastructure needed to distribute supply power and ground through the physical design.

Depending on the implementation, this can include power rings, straps, rails, and connections to standard-cell power pins.

### 6.8 Standard-Cell Placement

Placement assigns physical locations to the synthesized standard cells.

Placement optimization considers factors such as:

* Timing requirements.
* Cell density.
* Estimated wirelength.
* Congestion.
* Legal placement locations.

### 6.9 Clock Tree Synthesis

Clock Tree Synthesis creates a clock distribution network connecting the clock source to sequential elements.

CTS may insert clock buffers and inverters to control clock latency and skew. The resulting clock network affects both setup and hold timing.

### 6.10 Global Routing

Global routing assigns approximate routing paths to the nets while considering routing capacity and congestion.

It generates routing guides that direct the detailed router toward suitable routing regions.

Artifacts are expected under:

* `physical/global_route/smart_medicine_reminder_global_route.odb`
* `physical/global_route/smart_medicine_reminder.route_guide`

### 6.11 Detailed Routing

Detailed routing converts the global-routing guides into actual physical wire and via geometries that satisfy the technology’s routing constraints.

**Script:** `detailed_route.tcl`

### 6.12 Final Routed Static Timing Analysis

After detailed routing completes and suitable parasitics are available, final routed STA evaluates the design with more accurate interconnect delays.

**Script:** `final_routed_sta.tcl`

The analysis should include:

* Maximum-delay (setup) checks.
* Minimum-delay (hold) checks.
* Worst setup slack.
* Worst hold slack.
* Total negative slack.
* Critical timing paths.
* Clock latency and skew.

### 6.13 Design Rule Checking

DRC verifies whether the physical layout satisfies the applicable manufacturing design rules.

### 6.14 Layout Versus Schematic

LVS compares the connectivity extracted from the physical layout with a reference netlist or schematic.

**Script:** `run_lvs.sh`

### 6.15 GDSII Export

GDSII is a standard format for representing the geometry of an integrated-circuit layout.

The final export should be generated only after the physical implementation and required verification steps have been completed.

## 7. Current Results

### Implementation Status

| Stage | Status |
| --- | --- |
| RTL design and simulation | Completed |
| Synthesis and gate-level simulation | Scripts provided |
| Floorplanning and power planning | Scripts ready |
| Placement | Scripts ready |
| Clock tree synthesis | Scripts ready |
| Global routing | Scripts ready |
| Detailed routing | Script ready (`detailed_route.tcl`) |
| Final routed STA | Script ready (`final_routed_sta.tcl`) |
| DRC and LVS | Checklist + `run_lvs.sh` ready |
| Final GDSII export | Pending after signoff |

### Multi-corner STA

Scripts and placeholder reports are under `synthesis/sta/`:

* `run_all_corners.tcl`
* `tt_timing.txt`, `ss_timing.txt`, `ff_timing.txt`
* `multi_corner_summary.txt`

## 8. Repository Layout

```
Smart-Medicine-Reminder-Controller/
├── DEMO/
├── Smart-medicine-final-gds/
├── physical/
│   ├── global_route/
│   ├── placement_run/
│   ├── smart_medicine_reminder.tcl
│   └── post_route_sta.tcl
├── rtl/
│   └── smart_medicine_reminder.sv
├── sim/
├── submission/
├── synthesis/
│   ├── sta/
│   │   ├── smart_medicine_reminder.sdc
│   │   └── run_all_corners.tcl
│   ├── smart_medicine_reminder_mapped.v
│   └── smart_medicine_reminder_synth.v
├── tb/
│   └── smart_medicine_reminder_tb.sv
├── waveforms/
├── detailed_route.tcl
├── final_routed_sta.tcl
├── run_all.sh
├── run_lvs.sh
├── signoff_checklist.md
└── README.md
```

## 9. How to Run

```bash
# Full helper
./run_all.sh

# Detailed route (after global route DB exists)
openroad -exit detailed_route.tcl

# Final routed STA
openroad -exit final_routed_sta.tcl

# LVS
./run_lvs.sh
```

Update all PDK / liberty / LEF paths before running OpenROAD or OpenSTA.

## 10. License

Academic / educational use. Modify freely for your course project.
