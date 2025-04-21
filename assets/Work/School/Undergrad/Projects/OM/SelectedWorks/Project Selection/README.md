## Project Selection – Resource-Constrained Decision Problem

This project explores a constrained selection problem  
Julie wants to start a photo business and has a limited budget to rent the necessary equipment. Each potential job generates revenue but requires a specific set of equipment. The objective is to determine which jobs to accept and what equipment to rent to maximize total profit, given the $600 budget

### Problem Details
- There are four potential photography jobs (J1–J4)
- Each job requires a subset of equipment (A–D)
- Rental costs are associated with each equipment type
- Each job has an expected revenue if accepted
- Objective: maximize profit = total revenue − total equipment cost
- Constraint: total rental cost cannot exceed $600

### Problem Prompt Snapshot

**Prompt Overview**  
![Problem Description](./Project%20Selection.png)

For reference, see the full prompt:
- [`Project Selection.pdf`](./Project%20Selection.pdf)

### Files Included
- [`Project-DM.mod`](./Project-DM.mod) – AMPL model file
- [`Project-DM.dat`](./Project-DM.dat) – AMPL data file
- [`Model, Solution, and Explanation.txt`](./Model%2C%20Solution%2C%20and%20Explanation.txt) – Summary of variables, model structure, and solution details
- PDF and PNG prompt reference

### Solution Summary
- Optimal profit: **388**
- Selected jobs: **J1** and **J4**
- Equipment rented: **A, B, D**
- Solver used: **CPLEX via AMPL**

> For detailed model logic and output, see: [`Model, Solution, and Explanation.txt`](./Model%2C%20Solution%2C%20and%20Explanation.txt)