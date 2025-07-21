# Verilog Projects – Digital Logic with SystemVerilog

This repository contains a collection of digital logic projects implemented in SystemVerilog. These designs are part of my six-month learning plan focused on building a strong foundation in hardware description languages, embedded systems, and digital design fundamentals.

## About This Repository

Each project in this repo explores a key concept in digital systems, including:

- Finite state machines (FSMs)
- Timing and control logic
- Bit manipulation and data movement
- Synchronous design and simulation techniques

All designs are written in SystemVerilog (`.sv`) and include simulation testbenches.

## Projects

### 1. Traffic Light FSM
A three-phase traffic light controller that cycles through green, yellow, and red states based on configurable durations. Uses a counter and a state machine to drive the outputs.

### 2. Up/Down Counter 
A parameterized N-bit synchronous counter with enable, reset, and direction control signals.

### 3. 8-Bit Shift Register 
Implements SIPO (Serial-In, Parallel-Out) and PISO (Parallel-In, Serial-Out) modes with configurable control logic.

Each project includes:
- The SystemVerilog module (`.sv`)
- A testbench for simulation and waveform viewing
- A README for that specific project with example output

## How to Run

These designs can be simulated using:
- EDA Playground
- Vivado (Xilinx)
- ModelSim or QuestaSim
- Icarus Verilog (with SV support)

Testbenches are designed to work with small timing parameters for quick simulation.

## Learning Goals

- Reinforce fundamentals of sequential and combinational logic
- Gain experience designing, simulating, and debugging HDL modules
- Prepare for hardware-focused internships and embedded systems work
- Build a portfolio of real HDL design projects
