![image alt]()

## 📂 Folder Structure

05 Half_Subtractor  
│── HS.v          # Design file  
│── HS_TB.v       # Testbench file  
│── README.md     # Documentation  

---

## 🟣 Half Subtractor – Verilog

### 📘 Introduction:
A **Half Subtractor** is a combinational circuit that performs subtraction of two single-bit binary numbers.  
It has **two inputs (A, B)** and **two outputs (Difference, Borrow).**

---

## ⚙️ Logic Equations
* **Difference (D) = A ⊕ B**  
* **Borrow (B_out) = A' ⋅ B**

---

## 📊 Truth Table
| A | B | Difference | Borrow |
|:-:|:-:|:-----------:|:------:|
| 0 | 0 |     0      |   0    |
| 0 | 1 |     1      |   1    |
| 1 | 0 |     1      |   0    |
| 1 | 1 |     0      |   0    |

---

## 🧠 Working Principle:
- When **A = 0** and **B = 1**, we must **borrow 1** from a higher bit, producing a *borrow output* of 1.  
- In other cases, the borrow remains 0.  
- The **difference** output follows the XOR of inputs A and B.

---

## ▶ How to Run (using ModelSim)
```bash
step1: cd {enter the path where the file is saved}
step2: vlib work
step3: vlog HS_TB.v          # Compile the testbench file
step4: vsim HS_TB            # Load simulation
step5: add wave -position insertpoint sim:/HS_TB/*
step6: run -all
