# Traffic Light Controller using Verilog

## Overview

This project implements a simple Traffic Light Controller using Verilog HDL. The design is based on a Finite State Machine (FSM) that controls the sequence of traffic lights.

The controller cycles through three states:

1. RED
2. GREEN
3. YELLOW

and then repeats continuously.

---

## Objective

The objective of this project is to learn:

- Verilog HDL coding
- Finite State Machine (FSM) design
- Testbench creation
- Simulation using Icarus Verilog
- Waveform analysis using GTKWave

---

## Tools Used

- Verilog HDL
- VS Code
- Icarus Verilog
- GTKWave
- Git & GitHub

---

## Traffic Light States

| Light | Binary Value |
|---------|------------|
| RED | 100 |
| GREEN | 001 |
| YELLOW | 010 |

---

## State Transition Diagram

```text
RED
 ↓
GREEN
 ↓
YELLOW
 ↓
RED
```

The controller continuously follows this sequence.

---

## Design Description

The design uses:

- Clock input (`clk`)
- Reset input (`rst`)
- 3-bit output (`light`)

When reset is active:

```text
light = RED
state = RED
```

After reset is released, the FSM changes state on every positive edge of the clock.

---

## Project Files

### traffic_light.v

Contains the RTL design of the Traffic Light Controller.

### traffic_light_tb.v

Contains the testbench used to verify the design.

### traffic.vcd

Waveform dump file generated during simulation.

---

## Simulation Flow

### Step 1: Compile

```bash
iverilog -o traffic traffic_light.v traffic_light_tb.v
```

### Step 2: Run Simulation

```bash
vvp traffic
```

### Step 3: Open Waveform

```bash
gtkwave traffic.vcd
```

---

## Expected Output

The output should follow:

```text
100 → 001 → 010 → 100 → 001 → 010 ...
```

Which represents:

```text
RED → GREEN → YELLOW → RED ...
```

---

## Waveform Verification

The waveform was verified using GTKWave.

Observed signals:

- clk
- rst
- light[2:0]

Waveform confirms the correct state transitions:

```text
RED → GREEN → YELLOW → RED
```

---

## Learning Outcomes

Through this project I learned:

- Basics of Verilog HDL
- Finite State Machine (FSM) implementation
- Clock-driven sequential logic
- Testbench development
- RTL simulation
- Waveform debugging using GTKWave
- Version control using Git and GitHub

---

## Author

Kavya Sree

B.Tech Electronics and Communication Engineering (ECE)

Learning VLSI Design and Verification
