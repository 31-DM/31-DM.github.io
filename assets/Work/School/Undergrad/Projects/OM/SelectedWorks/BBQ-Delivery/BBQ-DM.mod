#BBQ Problem
reset;

#Sets 
set PLANTS; 	#set of plants
set ORDERS;		#set of orders

#Parameters 
param supply{PLANTS}, >=0;					#available amounts at plants -- supply (in "units")
param demand{ORDERS}, >=0;					#demand for orders (in "units")

check: sum {w in PLANTS} supply[w] >= sum {s in ORDERS} demand[s];
											#you must have at least as much as demanded, 
											#otherwise you have no chance to satisfy demands 
	
param ucost{PLANTS,ORDERS}, >=0; 			#ucost[w,s] is the unit shipping cost 
											#from plant w to order s (in cents/"units")

#Variables
var x{PLANTS,ORDERS}, >=0; 								#x[w,s] is the quantity delivered 
														#to order s from plant w (in "units")

#Objective function
minimize TOTALCOST: 
	sum{i in PLANTS,j in ORDERS} ucost[i,j] * x[i,j];
											#total shipping cost

#Constraints
subject to Demands{s in ORDERS}: 
	sum{w in PLANTS} x[w,s] = demand[s];	#satisfy demand exactly
												# could be >= but we MINIMIZE shipping cost 
	
subject to Supplies{w in PLANTS}: 
	sum{s in ORDERS} x[w,s] <= supply[w];	#cannot take more than what is there 
	

#Execution

data BBQ-DM.dat;

option solver cplex;

solve;

display{q in PLANTS, p in ORDERS: x[q,p]>0} x[q,p];

 

