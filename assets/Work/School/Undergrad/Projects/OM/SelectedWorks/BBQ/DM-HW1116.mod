#HW1116 Problem
reset;

# Sets ...
set NODES; 									#set of plants
set LINKS within (NODES cross NODES);		#set of possible arcs units can travel through
set SAUCES;

# Parameters ...
param supply{SAUCES, NODES};				#available BBQ amounts at plants -- supply (in "units")
param demand{SAUCES, NODES};				#demand for BBQ orders (in "units")

check{b in SAUCES}: sum{i in NODES} supply[b,i] >= sum{i in NODES} demand[b,i]; 			#supply must be >= demand

										
param cost{LINKS};						#cost[w,s] is the unit shipping cost 
					 						#from node w to node s (in cents/"units")									
											
param capacity{LINKS};					#capacity[a,b] is the unit capacity								
											#from node w to node s (in "units") 

param penalty{SAUCES};					#Set of sauces available, A = BBQ, B = Chicken Spice


# Variables

var x{SAUCES,LINKS}, >=0; 								# x[b,i,j] is the number of (A|B) sauces booked on link i->j
var y{b in SAUCES, j in NODES}, >=0, <=supply[b,j]; 	# y[b,j] is the number of (A|B) sauces that do not depart node j
var z{b in SAUCES, j in NODES}, >=0, <=demand[b,j]; 	# z[b,j] is the number of (A|B) sauces that do not arrive to node j
												

# Objective

minimize TOTALCOST:  												#Minimze total cost while delivering as much sauce as possible
	sum{(i,j) in LINKS} cost[i,j]*sum{b in SAUCES}x[b,i,j]
  			+ sum{b in SAUCES} penalty[b]*sum{j in NODES} y[b,j];
																		

# Constraints

subject to CAP{(i,j) in LINKS}: 							# shared capacity limits
  	sum{b in SAUCES} x[b,i,j] <= capacity[i,j];
  
subject to FLOW{b in SAUCES,j in NODES}:				# law of material conservation - for each sauce separately
  	supply[b,j]-y[b,j] + sum{(i,j) in LINKS} x[b,i,j] = demand[b,j]-z[b,j] + sum{(j,k) in LINKS} x[b,j,k];


# Execution

data HW1116.dat;

option solver cplex;

solve;

display{b in SAUCES, (i,j) in LINKS: x[b,i,j]>0} x[b,i,j];

display{b in SAUCES, j in NODES: y[b,j]>0} y[b,j];

display{b in SAUCES, j in NODES: z[b,j]>0} z[b,j];
