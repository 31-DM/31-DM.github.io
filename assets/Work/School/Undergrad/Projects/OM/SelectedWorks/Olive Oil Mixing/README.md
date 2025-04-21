## Olive Oil Mixing – Blending Optimization Problem

This project explores a blending optimization scenario  
A European company is mixing olive oils from different regions to create branded products (Sicilian, Italian, Spanish) with the goal of maximizing total profit. Each brand has distinct labeling requirements based on oil origin percentages and sells at different price points

### Problem Details
- There are three oil sources: Spain (Granada), Tuscany, and Sicily
- Each branded oil must meet minimum content requirements based on origin
- Sicilian: at least 50% from Sicily and 75% from Italy (Tuscany + Sicily)
- Italian: at least 60% from Italy (Tuscany + Sicily)
- Spanish: at least 60% from Spain
- Objective: maximize revenue from oil sales given supply and labeling constraints

### Problem Prompt Snapshot

![Problem Description](./Olive%20Oil%20Mixing.png)

For reference, see the full prompt:
- [`Olive Oil Mixing.pdf`](./Olive%20Oil%20Mixing.pdf)

### Files Included
- [`Blending-DM.mod`](./Blending-DM.mod) – AMPL model file
- [`Blending-DM.dat`](./Blending-DM.dat) – AMPL data file
- [`Model, Solution, and Explanation.txt`](./Model%2C%20Solution%2C%20and%20Explanation.txt) – Breakdown of model components and solution details
- PDF and PNG files with the original class prompt

### Solution Summary
- Objective value: **1,223,400**
- Total production includes:
  - 166.67 gallons of Italian oil
  - 5,600 gallons of Sicilian oil
  - 653.33 gallons of Spanish oil
- Solver used: **CPLEX via AMPL**

> For detailed model structure and solver output, see: [`Model, Solution, and Explanation.txt`](./Model%2C%20Solution%2C%20and%20Explanation.txt)