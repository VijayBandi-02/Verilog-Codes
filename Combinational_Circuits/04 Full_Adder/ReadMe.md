## 📂 Folder Structure

04 Full Adder

│── FA.v        # Design file

│── FA_TB.v      # Testbench file

│── README.md   # Documentation

![image alt](https://github.com/VijayBandi-02/Verilog-Codes/blob/c1726ba861bc5d41c13cfea57152ccf8cb669f4a/Combinational_Circuits/04%20Full_Adder/04%20FA.jpg)


## 🟠 Full Adder – Verilog 
📌 Introduction:
A *Full Adder* is a basic combinational circuit that performs the addition of three single-bit binary numbers.
It has *three inputs (A, B, C)* and *two outputs (Sum, Carry).*

## ⚡ Logic Equations
* *Sum (S) = A ⊕ B ⊕ C*
* *Carry (C) = A ⋅ B + B ⋅ C + C ⋅ A*

## 📊 Truth Table
| A | B | Cin | Sum | Carry |  
|---|---|-----|-----|--------|  
| 0 | 0 | 0 | 0 | 0 |  
| 0 | 0 | 1 | 1 | 0 |  
| 0 | 1 | 0 | 1 | 0 |  
| 0 | 1 | 1 | 0 | 1 |  
| 1 | 0 | 0 | 1 | 0 |  
| 1 | 0 | 1 | 0 | 1 |  
| 1 | 1 | 0 | 0 | 1 |  
| 1 | 1 | 1 | 1 | 1 |


## ▶ How to Run (with ModelSim)
```
step1: "cd {enter the path that file saved}" // with in curly brackets
step2: "vlib work"
step3: "vlog file_name.v" //file name of testbench
step4: "vsim module_name" //module name of Test bench
step5: "run -all"
