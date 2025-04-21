#Electricity problem
reset;

#Sets and Parameters
param T := 7;

set IND := 1..T;													#Set for days of the week
set END := 0..T;													#Set for days of the week to account for storage

param a >= 0;														#own plant cost		
param b >= 0;														#rented plant cost
param c >= 0;														#purchased energy cost
param s >= 0;														#storage cost

param demand{IND} >= 0;												#demand forecast

#Variables
var W {IND} >= 0;													#energy from own plant
var X {IND} >= 0;													#energy from rented plant
var Y {IND} >= 0;													#energy purchased
var Z {END} >= 0;													#energy stored

#Objective function
minimize COST: sum {i in IND} (a * W[i] + b * X[i] + c * Y[i] + s * Z[i]);			#minimize daily cost while meeting demand

#Constraints
subject to BAL {i in IND}: Z[i-1] + W[i] + X[i] + Y[i] = demand[i] + Z[i];

subject to INIT0: Z[0] = 0;											#energy storage constraints

subject to INITE: Z[6] = 0;

subject to OL{i in IND}: W[i] <= 500;								#daily energy constraints
						
subject to RL{i in IND}: X[i] <= 600;									

subject to PL{i in IND}: Y[i] <= 500;

								
#Execution

data Electricity-DM.dat;

option solver cplex;

solve;

display{i in IND: W[i]>0} W[i];

display{i in IND: X[i]>0} X[i];

display{i in IND: Y[i]>0} Y[i];

display {i in END: Z[i]>0} Z[i];