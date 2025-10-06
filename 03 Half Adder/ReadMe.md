## 📂 Folder Structure

03 Half Adder
│── HA.v        # Design file
│── HATB.v      # Testbench file
|── FA using HA # FullAdder using HalfAdder folder
│── README.md   # Documentation


## 🟠 Half Adder – Verilog 
## 📌 Introduction:

A **Half Adder** is a basic combinational circuit that performs the addition of two single-bit binary numbers.
It has **two inputs (A, B)** and **two outputs (Sum, Carry).**

## ⚡ Logic Equations
* **Sum (S) = A ⊕ B**
* **Carry (C) = A ⋅ B**

## 📊 Truth Table
| A | B | Sum | Carry |  
|---|---|-----|--------|  
| 0 | 0 | 0 | 0 |  
| 0 | 1 | 1 | 0 |  
| 1 | 0 | 1 | 0 |  
| 1 | 1 | 0 | 1 |  

## ▶ How to Run (with ModelSim)
```
step1: "cd {enter the path that file saved}" // with in curly brackets
step2: "vlib work"
step3: "vlog file_name.v" //file name of testbench
step4: "vsim module_name" //module name of Test bench
step5: "run -all"
