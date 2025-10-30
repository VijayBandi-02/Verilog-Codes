![image alt](https://github.com/VijayBandi-02/Verilog-Codes/blob/main/Combinational_Circuits/06%20Full_Subtractor/full_sub-1024x650.png)

## 📂 Folder Structure

06 Full_Subtractor  
│── FS.v           # Design file  
│── FS_TB.v        # Testbench file  
│── README.md      # Documentation  

---

## 🟣 Full Subtractor – Verilog

### 📘 Introduction:
A **Full Subtractor** is a combinational logic circuit that performs subtraction of three binary bits — **A**, **B**, and **C** (where C is the borrow input).  
It produces two outputs: **Difference (D)** and **Borrow (B_out)**.

---

## ⚙️ Logic Equations
* **Difference (D) = A ⊕ B ⊕ C**  
* **Borrow (B_out) = A'B + A'C + BC**

---

## 📊 Truth Table
| A | B | C | Difference | Borrow |
|:-:|:-:|:-:|:-----------:|:------:|
| 0 | 0 | 0 |     0      |   0    |
| 0 | 0 | 1 |     1      |   1    |
| 0 | 1 | 0 |     1      |   1    |
| 0 | 1 | 1 |     0      |   1    |
| 1 | 0 | 0 |     1      |   0    |
| 1 | 0 | 1 |     0      |   0    |
| 1 | 1 | 0 |     0      |   1    |
| 1 | 1 | 1 |     1      |   1    |

---

## 🧠 Working Principle:
- The **difference output** behaves as the XOR of the three input bits.  
- The **borrow output** is asserted (1) when subtraction requires borrowing from a higher bit.  
- The Full Subtractor can be implemented using **two Half Subtractors** and an **OR gate**.

---

## ▶ How to Run (using ModelSim)
```bash
step1: cd {enter the path where the file is saved}
step2: vlib work
step3: vlog FS_TB.v          # Compile the testbench file
step4: vsim FS_TB            # Load simulation
step5: add wave -position insertpoint sim:/FS_TB/*
step6: run -all
