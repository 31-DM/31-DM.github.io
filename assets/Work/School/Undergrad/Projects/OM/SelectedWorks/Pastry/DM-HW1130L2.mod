# pastry rating problem WITH COLORS -- an l2 multilinear regression  

reset;

param N; # number of records
set SAMPLES := 1..N;
set NAMES;
set VARS within NAMES; 


param rating symbolic in NAMES;
param data{SAMPLES,NAMES}; # data: first column is outcome (rating), 
				# other columns are the variables (moist and sweetness).
var coeff{VARS};
var constant;

minimize FIT:
	sum{i in SAMPLES} (data[i,rating] - constant 
		- sum{v in VARS} coeff[v]*data[i,v])^2;
		

#executions

data DM-HW1130.dat;

option solver cplex;

solve;

display constant;
display{v in VARS} coeff[v];