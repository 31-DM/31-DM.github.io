## Library Location – Facility Optimization Problem

This project addresses a facility location optimization scenario  
The Foundation for the Highest Education (FHE) seeks to open public libraries along a highway in Mine County. The goal is to determine the most cost-effective placement of libraries such that all town populations are served and no library exceeds its capacity

### Problem Details
- There are 5 potential township locations
- Each township has a population, cost, and potential library capacity
- All residents must be served by their nearest library
- Libraries must not exceed capacity
- Objective: minimize total cost of library operations

### Problem Prompt Snapshot
The images below are excerpts from the original class handout describing the problem setup

**Page 1**  
![Problem Description – Page 1](./LIbrary%20Location%20P1.png)

**Page 2**  
![Problem Description – Page 2](./LIbrary%20Location%20P2.png)

For reference, see the full PDF versions:
- [`LIbrary Location P1.pdf`](./LIbrary%20Location%20P1.pdf)
- [`LIbrary Location P2.pdf`](./LIbrary%20Location%20P2.pdf)

### Files Included
- [`Library-DM.mod`](./Library-DM.mod) – AMPL model file
- [`Library-DM.dat`](./Library-DM.dat) – AMPL data file
- [`Model, Solution, and Explanation.txt`](./Model%2C%20Solution%2C%20and%20Explanation.txt) – Summary of variables, constraints, and solution
- `.pdf` and `.png` files for the original class prompt

### Solution Summary
- Optimal libraries are opened in **Goldbridge** and **Silverton**
- Total cost: **30.24 million**
- All populations are served within capacity constraints
- Solver used: **CPLEX via AMPL**

> For full solution logic and output, see: [`Model, Solution, and Explanation.txt`](./Model%2C%20Solution%2C%20and%20Explanation.txt)