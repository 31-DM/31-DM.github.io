#Blending Question .mod file

reset;

# SETS
set OILTYPE;  #set of different oiltypes
set OIL;	#set of oils produced

# PARAMS
param a{OILTYPE} >=0;	#available amounts of oils

param p{OIL} >=0;	#unit selling price of oils

param Q{OILTYPE,OIL} >=0, <=1, default 1;					#Q[i,j] is the maximum fraction of type i oil 
																#that can be used when making oil j
param q{i in OILTYPE,j in OIL} >=0, <= Q[i,j], default 0; #q[i,j] is the minimum fraction of type i oil 
																#that must be used when making oil j

# VARS
var x{OILTYPE,OIL} >= 0;	#x[i,j] is the amount of type i oil used to make oil j
var y{OIL};						#amounts of oils produced
var z{i in OILTYPE}, <= a[i];	#amounts of oils used in the process

# OBJECTIVE FUNCTION
maximize totalprofit:
	sum{j in OIL} p[j] * y[j];

# CONSTRAINTS
subject to usedoil{i in OILTYPE}:
	sum{j in OIL} x[i,j] = z[i];
	
subject to availability{i in OILTYPE}:
	z[i] <= a[i];

subject to conservation{j in OIL}:
	sum{i in OILTYPE} x[i,j] = y[j];
	
subject to maxlimit{i in OILTYPE, j in OIL}:
	x[i,j] <= Q[i,j] * y[j];
	
subject to minrequirement{i in OILTYPE, j in OIL}:
	x[i,j] >= q[i,j] * y[j];

# execution

option solver cplex;

data Blending-DM.dat;

solve;

display{i in OILTYPE, j in OIL: x[i,j]>0} x[i,j];

display{j in OIL: y[j]>0} y[j];

display{i in OILTYPE: z[i]>0} z[i];