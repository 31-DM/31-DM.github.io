#Law Problem
reset;

#Sets
set CASE;																#set of cases
set ASSOCIATE;															#set of associates
check: card(CASE) = card(ASSOCIATE); 									
									 									
#Parameters
param w{ASSOCIATE, CASE}, >=0;											#percent chance of winning the case

#Variables
var l{ASSOCIATE, CASE}, >=0, binary; 									#binary variable representing a win/loss

#Objective function
maximize CASESWON: sum{q in ASSOCIATE, p in CASE} w[q,p] * l[q,p];

#Constraints
subject to 1AssociatePerCase{p in CASE}:  								#one associate per case constraint
	sum{q in ASSOCIATE} l[q,p] = 1;		  

subject to 1CasePerAssociate{q in ASSOCIATE}:							#one case per associate constraint
	sum{p in CASE} l[q,p] = 1;
	
#Execution
data Law-DM.dat;

option solver cplex;

solve;

display {q in ASSOCIATE, p in CASE: l[q,p] > 0};