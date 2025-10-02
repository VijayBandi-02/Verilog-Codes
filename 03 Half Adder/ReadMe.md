# 📂 Folder Structure

```
03 Half Adder
│── HA.v        # Design file
│── HATB.v      # Testbench file
│── README.md   # Documentation
```

---

# 🟠 Half Adder – Verilog 
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
