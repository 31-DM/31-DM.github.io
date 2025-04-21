# pastry rating problem WITH COLORS - an l1 multilinear regression

reset;

param N; # number of records

set SAMPLES := 1..N;

set NAMES;

set VARS within NAMES; 

param rating symbolic in NAMES;

param data{SAMPLES,NAMES}; # data: first column is outcome (rating), 
				# other columns are the variables (moist and sweetness).
var constant;
var coeff{VARS};
var pos{SAMPLES}, >=0;
var neg{SAMPLES}, >=0;

minimize FIT:
	sum{i in SAMPLES} (pos[i]+neg[i]);
		
subject to L1EQ{i in SAMPLES}:
	pos[i]-neg[i] = data[i,rating] - constant
		- sum{v in VARS} coeff[v]*data[i,v];
			
#execution

data DM-HW1130.dat;

option solver cplex;

solve;
display constant;
display{v in VARS} coeff[v];

# compute regression without mistyped data record
let N:=N-1;

solve;
display constant;
display{v in VARS} coeff[v];



	
