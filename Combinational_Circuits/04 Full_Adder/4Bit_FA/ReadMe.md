![image alt](https://github.com/VijayBandi-02/Verilog-Codes/blob/main/Combinational_Circuits/04%20Full_Adder/4Bit_FA/four_bit_FA.jpg)

## 🟣 4-Bit Full Adder – Verilog

### 📘 Introduction:
A **4-bit Full Adder** performs binary addition of two 4-bit numbers (A and B) along with a carry input.  
It is designed by **cascading four 1-bit Full Adders**, where the carry output from each stage is passed to the next stage.

---

## ⚙️ Logic Overview
Each **1-bit Full Adder** has:
- Inputs: A, B, Cin  
- Outputs: Sum, Cout  

For 4-bit operation:
- Inputs: A[3:0], B[3:0], Cin  
- Outputs: Sum[3:0], Cout  

### 🔹 Full Adder Equations:
* Sum = A ⊕ B ⊕ Cin  
* Cout = (A ⋅ B) + (B ⋅ Cin) + (Cin ⋅ A)

---

## 🧠 Working Principle
The **least significant bit (LSB)** adder takes the input carry (Cin).  
Each subsequent adder receives the carry output from the previous stage, enabling multi-bit binary addition.

---

## 📊 Truth Table (for 1-bit Full Adder)
| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

---

## ▶ How to Run (using ModelSim)
```bash
step1: cd {enter the path where the file is saved}
step2: vlib work
step3: vlog four_bit_FA.v       # Compile the testbench
step4: vsim 4Bit_FA            # Load simulation
step5: add wave -position insertpoint sim:/FA4bitTB/* #if needed
step6: run -all
