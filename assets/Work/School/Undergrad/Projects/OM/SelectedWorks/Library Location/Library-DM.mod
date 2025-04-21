#Library Question .mod file

reset;

set TOWNS;						# set of Townships

param Cost{TOWNS};					# building and maintenance costs
param Location{TOWNS};
param Population{TOWNS};
param Capacity{TOWNS};				# expected number of fires
param Closest{TOWNS,TOWNS};			# XTRDamage[d,e] is the cost of sending a truck from district d to a fire in district e


var x{TOWNS}, binary;			# to build or not to build a library
var y{TOWNS,TOWNS}, binary; 	# to service a district from another one, or not
var z{t in TOWNS}, integer;		

minimize COST: 
 	sum{t in TOWNS} x[t]*Cost[t]; 	# cost of libraries

subject to NoxNoy{t in TOWNS,u in TOWNS}: 
  	y[t,u] <= x[t];					# cannot send if no library

subject to AllLibraries{u in TOWNS}:
  	sum{t in TOWNS} y[t,u] = 1;		

subject to Nearest{t in TOWNS, u in TOWNS, v in TOWNS : Closest[v,u] < Closest[t,u]}:
  	x[v] + y[t,u] <= 1;				# cannot send from d if there is a library closer
  	
subject to CAPACITY{t in TOWNS}:
	z[t] <= Capacity[t];
	
subject to PopLimit{t in TOWNS}:
	z[t] = sum{u in TOWNS} y[t,u] * Population[u];
	
	
# execution


option solver cplex;

data Library-DM.dat;

solve;

display{t in TOWNS: x[t]>0} x[t];
display{t in TOWNS, i in TOWNS: y[t,i]>0} y[t,i];
