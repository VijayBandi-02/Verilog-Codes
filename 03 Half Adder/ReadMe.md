## 📂 Folder Structure

```
03 Half Adder
│── HA.v        # Design file
│── HATB.v      # Testbench file
│── README.md   # Documentation
```

## 🟠 Half Adder – Verilog 
## 📌 Introduction:
A **Half Adder** is a basic combinational circuit that performs the addition of two single-bit binary numbers.
It has **two inputs (A, B)** and **two outputs (Sum, Carry).**

## ⚡ Logic Equations
* **Sum (S) = A ⊕ B**
* **Carry (C) = A ⋅ B**

## 📊 Truth Table
* | a = 0, b = 0 -> sum = 0, carry = 0 |
* | a = 0, b = 1 -> sum = 1, carry = 0 |
* | a = 1, b = 0 -> sum = 1, carry = 0 |
* | a = 1, b = 1 -> sum = 0, carry = 1 |


## ▶ How to Run (with ModelSim)
```
step1: "cd {enter the path that file saved}" // with in curly brackets
step2: "vlib work"
step3: "vlog file_name.v" //file name of testbench
step4: "vsim module_name" //module name of Test bench
step5: "run -all"
