#Project Planning Question .mod file

reset;

set JOBS;
set EQUIPMENT;


param revenue{JOBS}; 			# revenue produced if job is accepted
param hours{JOBS};				# woprking hours needed to complete job
param Capacity; 				# limit of working hours next week
param Reqs{EQUIPMENT,JOBS};		# 1-0 indicating the need or the lack of need of an equipment for a job
param rentCost{EQUIPMENT}; 		# cost of weekly rentCost of equipments


var x{JOBS}, binary;			# x[j]=1 if we accept job j, and =0 otherwise
var y{EQUIPMENT}, binary; 		# y[e]=1 if we rentCost equipment e, and =0 otherwise


maximize PROFIT: 
	sum{j in JOBS} revenue[j]*x[j] - sum{e in EQUIPMENT} y[e]*rentCost[e];					#maximize revenue
	
	
subject to WORKHOURS:
	sum{e in EQUIPMENT} rentCost[e] * y[e] <= Capacity;			# total woring hours is limited
	
subject to RENTALS{e in EQUIPMENT, j in JOBS: Reqs[e,j] = 1}:
	x[j] <= y[e];												# cannot do a job if do not rentCost the needed equipment

	
#execution

option solver cplex;

data Project-DM.dat;

solve;

display{j in JOBS: x[j]>0} x[j];
display{e in EQUIPMENT: y[e]>0} y[e];
