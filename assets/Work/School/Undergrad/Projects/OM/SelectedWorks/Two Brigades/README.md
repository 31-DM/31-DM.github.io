## Two Brigades – Network Flow Optimization with Dual Origins

This project builds on a classic minimum-cost flow problem with a twist:

Two separate brigades (A and B) each have their own origin nodes, and must move personnel through a shared network to their assigned destinations. Each arc has a fixed capacity and cost. The objective is to minimize total cost, including penalties for underdelivery.

### Problem Details
- Network includes two origin nodes: `s1` (brigade A), `s2` (brigade B)
- Destination nodes include intermediary stops (1–6) and final targets `t1`, `t2`
- Each arc has a:
  - **Capacity**: Max number of brigade members that can use it
  - **Cost**: Travel cost per person
- Brigade members must move from their start node to designated end points
- If unable to travel or arrive, **penalty costs** are incurred

**Prompt Diagram**  
![Network Flow Prompt](./Two%20Brigades.png)

For the full prompt and flow chart:
- [`Two Brigades.pdf`](./Two%20Brigades.pdf)

---

## Files Included
- [`DM-HW1102.mod`](./DM-HW1102.mod) – AMPL model (supports multiple brigades and updated arcs)
- [`DM-HW1102.dat`](./DM-HW1102.dat) – Data file including:
  - Node and arc definitions
  - Capacities, costs, supplies, and demands for both brigades
- [`Model, Solution, and Explanation.txt`](./Model%2C%20Solution%2C%20and%20Explanation.txt) – Mathematical formulation, solver output, and updated flow constraints

---

## Solution Summary
- Objective: **Minimize cost of transporting both brigades** to their destinations
- Incorporates:
  - Conservation of flow
  - Arc capacity constraints
  - Departure and arrival penalties
- Solver used: **CPLEX via AMPL**
- Updates from original model:
  - Replaced single source `s` with dual sources `s1`, `s2`
  - Expanded arcs to include all routes from each brigade’s origin

> For complete modeling logic and final output, see: [`Model, Solution, and Explanation.txt`](./Model%2C%20Solution%2C%20and%20Explanation.txt)