## Optimization Modeling (OM)

### Overview  
This folder showcases selected problem-solving work from the **Optimization Modeling** course, where I formulated real-world decision problems as mathematical optimization models, encoded them in **AMPL**, and solved them using industry-standard solver packages including **CPLEX** and **XPressMP**

**Course Grade:** A  

### Contents  
- [SelectedWorks](./SelectedWorks): A portfolio of 10 optimization modeling projects
  Each folder includes the original prompt, AMPL code, solver output, and a dedicated README

---

## Course Objectives  
- Develop a structured understanding of **linear and integer programming**
- Learn to model real-world decision scenarios using **high-level modeling languages like AMPL**
- Apply **professional solvers** to identify optimal or near-optimal solutions
- Gain fluency in interpreting solver output and translating results into action

---

## Problem Types Covered  
- **Facility Location** – Balancing reach and cost  
- **Resource Allocation** – Prioritizing investments under constraints  
- **Assignment Problems** – Optimally matching agents to tasks  
- **Transportation & Flow** – Delivering goods with cost and capacity limits  
- **Set Covering** – Minimizing cost to cover multiple needs  
- **Regression Modeling** – Predicting outcomes from quantitative and categorical variables

These categories are demonstrated through the following example projects:
- **Library Location** – Optimal facility placement under cost and capacity constraints
- **Electricity Provider** – Weekly demand fulfillment through energy source and storage planning
- **Two Brigades** – Multi-agent flow optimization with arc capacity, cost, and penalties

---

## Business & Practical Impact

- **Data-Driven Decision Making**: These models mirror real-world business scenarios that require quantitative resource planning  
- **Optimization in Action**: Projects reflect core use cases across logistics, operations, R&D, and policy planning  
- **Transferable Skillset**: Skills developed align with roles in consulting, product ops, data science, operations research, and finance

---

## Why This Work Matters

This repository demonstrates how mathematical modeling can be used to:
- Translate messy real-world decisions into solvable systems
- Optimize performance under hard constraints
- Quantify tradeoffs and costs using structured analysis
- Communicate insights using technical tools and written documentation

---

## What Is AMPL?

**AMPL** (A Mathematical Programming Language) is a high-level language used to define optimization problems with clean syntax for sets, parameters, variables, constraints, and objective functions

Each project folder includes:
- `.mod` – Model file defining variables, constraints, and the objective
- `.dat` – Data file defining the scenario-specific values
- `solve` – The command used inside AMPL to compute the optimal solution

### Try it Live

Use [ampl.com/try-ampl](https://ampl.com/try-ampl) to run the models online:
1. Upload `.mod` and `.dat` files
2. Type `solve` in the terminal
3. Review the output

---

## Modeling Workflow  
1. Define sets, parameters, and variables  
2. Write the objective function  
3. Formulate constraints using domain logic  
4. Encode the model in AMPL  
5. Run the model with data  
6. Interpret the output and assess sensitivity

---

## Tools & Skills Used  
- **AMPL** – Algebraic modeling language for optimization  
- **CPLEX / XPressMP** – Commercial-grade solvers  
- **Integer & Linear Programming** – Formulations for real-world systems  
- **Sensitivity Analysis** – Exploring impact of parameter changes  
- **Structured Thinking** – Translating business problems into quantitative frameworks

---

## Author  
**Dev Misra**  

Check out my [portfolio](https://31-dm.github.io/) for more of my work