# Traffic Light Controller (FSM) in Verilog

This project simulates a finite state machine (FSM) that controls a traffic light with green, yellow, and red phases. Each phase lasts a configurable amount of time, and the lights change in sequence: Green → Yellow → Red → Green.

## Description

The module cycles through three states:
- Green: active for `ratioGreenLt` clock cycles
- Yellow: active for `ratioYellowLt` clock cycles
- Red: active for `ratioRedLt` clock cycles

Each light is represented as a separate output signal (`greenlt`, `yellowlt`, `redlt`) and only one light is on at a time.

## File Structure

- `traffic_light_fsm.v`: The main FSM module (formerly `counter.v`)
- `traffic_light_fsm_tb.v`: Testbench with simulated clock and reset
- `README.md`: Project documentation

## How to Simulate

You can run this project using:

- [EDA Playground](https://www.edaplayground.com/)
- Vivado (Xilinx)
- ModelSim / QuestaSim
- Icarus Verilog

Set small timing ratios (e.g. 4, 2, 4) to observe full state transitions quickly.
