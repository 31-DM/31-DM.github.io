## Disease Control – Gene Targeting Optimization

This project addresses a cost-minimization set covering problem in the context of disease treatment:

Given a list of diseases and the genes that control them, the objective is to identify the smallest-cost subset of genes to target such that all diseases can be blocked. An extended version of the problem introduces minimum gene coverage requirements for each disease, adding a more complex layer to the optimization model.

### Problem Details
- 7 diseases are controlled by combinations of 7 genes (A–G)
- Each gene has an associated cost
- A disease is blocked if a sufficient number of its controlling genes are targeted
- Objective: minimize the total cost while ensuring each disease is blocked

### Two Versions Modeled
1. **Basic Model**: A disease is blocked if **any one** of its controlling genes is targeted  
2. **Extended Model**: A disease is blocked only if at least a **specified minimum number** of its controlling genes are targeted (e.g., 1 or 2)

**Page 1 – Basic Model Setup**  
![Problem Description Page 1](./Disease%20Control%20P1.png)

**Page 2 – Extended Model with Minimum Targeting**  
![Problem Description Page 2](./Disease%20Control%20P2.png)

For full prompt:
- [`Disease Control.pdf`](./Disease%20Control.pdf)

### Files Included
- [`DM-HW1123.mod`](./DM-HW1123.mod) – AMPL model file (supports both problem versions)
- [`DM-HW1123.dat`](./DM-HW1123.dat) – AMPL data file (including disease-gene mapping, costs, and min-targets)
- [`Model, Solution, and Explanation.txt`](./Model%2C%20Solution%2C%20and%20Explanation.txt) – Logic, model insights, output, and constraint summary
- Prompt PDFs and PNGs for reference

### Solution Summary
- Optimal cost-minimizing gene subset selected: **{G, C, B, D}**
- Total cost: **16**
- The model satisfies all minimum coverage thresholds across diseases in the extended version
- Solver used: **CPLEX via AMPL**

> For constraint logic and full output, see: [`Model, Solution, and Explanation.txt`](./Model%2C%20Solution%2C%20and%20Explanation.txt)