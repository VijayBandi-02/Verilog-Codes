## 📂 Folder Structure

04 Full Adder
│── design.v        # Design file

│── test bench.v      # Testbench file

│── README.md   # Documentation


## 🟠 Full Adder – Verilog 
## 📌 Introduction:
A *Full Adder* is a basic combinational circuit that performs the addition of three single-bit binary numbers.
It has *three inputs (A, B, C)* and *two outputs (Sum, Carry).*

## ⚡ Logic Equations
* *Sum (S) = A ⊕ B ⊕ C*
* *Carry (C) = A ⋅ B + B ⋅ C + C ⋅ A*

## 📊 Truth Table
-----------------------
| a b c | sum | carry |
-----------------------
| 0 0 0 |  0  |   0   |
| 0 0 1 |  1  |   0   |
| 0 1 0 |  1  |   0   |
| 0 1 1 |  0  |   1   |
| 1 0 0 |  1  |   0   |
| 1 0 1 |  0  |   1   |
| 1 1 0 |  0  |   1   |
| 1 1 1 |  1  |   1   |
-----------------------


## ▶ How to Run (with ModelSim)
```
step1: "cd {enter the path that file saved}" // with in curly brackets
step2: "vlib work"
step3: "vlog file_name.v" //file name of testbench
step4: "vsim module_name" //module name of Test bench
step5: "run -all"
