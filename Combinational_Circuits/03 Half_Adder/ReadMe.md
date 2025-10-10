## 📂 Folder Structure

03 Half Adder

│── HA.v        # Design file

│── HA_TB.v      # Testbench file

|── FA_using_HA # FullAdder using HalfAdder folder

│── README.md   # Documentation

![image alt](https://github.com/VijayBandi-02/Verilog-Codes/blob/6f49ab3ec23c574e552350dd0a0fbd6feaa0662c/Combinational_Circuits/03%20Half_Adder/03%20HA.png)


# 🟠 Half Adder – Verilog 
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
