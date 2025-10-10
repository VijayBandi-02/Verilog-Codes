## 🟠 Full Adder using Half Adder – Verilog  
![image at](https://github.com/VijayBandi-02/Verilog-Codes/blob/903f144f3d1b004ab52208f35b2c8b8b27cc16f5/Combinational_Circuits/03%20Half_Adder/FA_using_HA/FA_using_HA.webp)
# 📌 Introduction:  
A **Full Adder** adds three single-bit binary numbers — *A, B,* and *Cin (carry input)* — to produce a *Sum* and a *Carry* output.  
In this design, a **Full Adder** is implemented using **two Half Adders** and one **OR gate**, demonstrating **hierarchical and structural modeling** in Verilog.

⚡ **Logic Equations**  
- Sum (S) = A ⊕ B ⊕ Cin  
- Carry (Cout) = (A ⋅ B) + (Cin ⋅ (A ⊕ B))


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

---

## ▶ How to Run (with ModelSim)  

step1: "cd {enter the path where files are saved}"

step2: "vlib work"

step3: "vlog file_name.v" // testbench file name

step4: "vsim module_name" // testbench module name

step5: "run -all"
