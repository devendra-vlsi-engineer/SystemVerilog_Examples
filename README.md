# SystemVerilog Practice & Examples

This repository contains a collection of **SystemVerilog (.sv) files** demonstrating various concepts including arrays, strings, packet structures, mailboxes, and testbench-style comparisons.

---

## 📂 Repository Contents

### 🔹 Application / Testbench Files
- `apb_tx.sv`  
  Defines a basic APB transaction structure.

- `apb_tx_compare.sv`  
  Implements comparison logic between APB transactions.

- `apb_tx_compare_copy.sv`  
  Demonstrates copying and comparing APB transaction objects.

---

### 🔹 Array Examples
- `arr.sv`  
  Basic array usage in SystemVerilog.

- `dynamic_array.sv`  
  Demonstrates dynamic array allocation and operations.

- `mul_array.sv`  
  Multi-dimensional array examples.

---

### 🔹 String Handling
- `string_arr.sv`  
  Arrays of strings.

- `string_methods.sv`  
  Common built-in string methods.

- `string_reversal.sv`  
  Example of reversing a string.

---

### 🔹 Communication & Data Structures
- `mailbox_ex.sv`  
  Demonstrates inter-process communication using mailboxes.

- `eth_pkt.sv`  
  Defines an Ethernet packet structure and related operations.

---

## 🎯 Purpose

This repository is intended for:
- Learning **SystemVerilog fundamentals**
- Practicing **data structures and OOP concepts**
- Understanding **verification-oriented coding patterns**
- Quick reference for **common SV constructs**

---

## 🚀 How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/devendra-vlsi-engineer/SystemVerilog_Examples.git
   ```

2. Navigate to the directory:
   ```bash
   cd SystemVerilog_Examples
   ```

3. Compile and simulate using your preferred simulator:
   - Synopsys VCS
   - QuestaSim / ModelSim
   - Xcelium

   Example:
   ```bash
   vcs file_name.sv
   ./simv
   ```

---

## 🧠 Topics Covered

- SystemVerilog Arrays (Static, Dynamic, Multi-dimensional)
- Strings and String Methods
- Object-Oriented Concepts
- Transaction Modeling
- Mailboxes & IPC
- Packet Representation

---

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Add new examples
- Improve existing code
- Fix issues or bugs

---

## 📄 License

This project is open-source and available under the MIT License.
