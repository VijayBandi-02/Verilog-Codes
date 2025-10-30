# 🔹4-Bit Full Subtractor (Using 1-Bit Full Subtractors)
## 📘Introduction

A 4-bit Full Subtractor is a combinational circuit that subtracts one 4-bit binary number from another, considering an input borrow (Bin).
It is implemented by cascading four 1-bit Full Subtractors, where the borrow output of each stage becomes the borrow input of the next stage.

## ⚡Logic Overview
Each 1-bit Full Subtractor performs:
- Difference (D) = A ⊕ B ⊕ Bin
- Borrow (Bout) = (~A & B) | (~A & Bin) | (B & Bin)

In the 4-bit version:
FS fs0 → LSB subtraction
FS fs1 → Bit 1 subtraction
FS fs2 → Bit 2 subtraction
FS fs3 → MSB subtraction

## ▶How to Run (in ModelSim)
step1: "cd {enter the path where file is saved}" // within curly brackets
step2: "vlib work"
step3: "vlog 4Bit_FS.v" // file name of testbench file
step4: "vsim FS_4Bit_TB" // testbench module name
step5: "run -all"
