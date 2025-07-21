# Up/Down Counter (SystemVerilog)

This project implements a parameterized synchronous up/down counter in SystemVerilog. The counter increments or decrements its value based on a direction control signal and includes enable and synchronous reset inputs for controlled operation.

## Description

The counter supports the following features:

- **Clocked**: On rising edge of `clk`
- **Synchronous reset**: Resets count to zero
- **Enable**: Only counts when enabled
- **Direction control**: Counts up (`upDown = 1`) or down (`upDown = 0`)
- **Parameterizable width** (default 32 bits in this version)

## Module Interface

### Inputs
- `clk`: Clock input
- `reset`: Synchronous reset
- `enable`: Enables counting
- `upDown`: Direction selector (1 = up, 0 = down)

### Output
- `count`: Current value of the counter (`[31:0]` in this implementation)

## File Structure

- `updowncounter.sv`: SystemVerilog counter module
- `updowncounter_tb.sv`: Testbench with clock generation, up/down switching, and reset
- `README.md`: Project overview and usage

## How to Simulate

Run this project using any of the following tools:

- [EDA Playground](https://www.edaplayground.com/)
- Vivado
- ModelSim / QuestaSim
- Icarus Verilog (with SystemVerilog support)

Use a short simulation window (~200ns) to observe both counting directions.
