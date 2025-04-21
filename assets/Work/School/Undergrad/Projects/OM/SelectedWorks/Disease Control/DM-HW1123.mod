#HW1123 MOD FILE

reset;

set GENES;
set DISEASES;
set CONTROL{DISEASES} within GENES;

param cost{GENES};
param minD{DISEASES};

var x{GENES}, binary; # to select or not to select a gene

minimize COST:
 sum{g in GENES} x[g]*cost[g];

subject to Blocking{d in DISEASES}:
  sum{g in CONTROL[d]} x[g] >= minD[d];

# execution

data DM-HW1123.dat;

option solver cplex;

solve;

set TARGET within GENES;

let TARGET := {g in GENES: x[g]>0};

display TARGET;
