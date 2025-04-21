# Updated two-brigades1 model -- HW1102
reset;

set Nodes;
set Arcs within Nodes cross Nodes;
set Brigades;

param cost{Arcs};
param capacity{Arcs};

param supply{Brigades,Nodes};
param demand{Brigades,Nodes};
check{b in Brigades}: sum{i in Nodes} supply[b,i] = sum{i in Nodes} demand[b,i];

param penalty{Brigades};

var x{Brigades,Arcs}, >=0; 								# x[b,i,j] is the number of brigade "b" members booked on flight i->j
var y{b in Brigades, j in Nodes}, >=0, <=supply[b,j]; 	# y[b,j] is the number of brigade "b" members who do not depart node j
var z{b in Brigades, j in Nodes}, >=0, <=demand[b,j]; 	# z[b,j] is the number of brigade "b" members who do not arrive to node j

minimize TOTALCOST:										# travel cost with penalties for not traveling
  	sum{(i,j) in Arcs} cost[i,j]*sum{b in Brigades}x[b,i,j]
  			+ sum{b in Brigades} penalty[b]*sum{j in Nodes} y[b,j];

subject to CAP{(i,j) in Arcs}: 							# shared capacity limits
  	sum{b in Brigades} x[b,i,j] <= capacity[i,j];
  
subject to FLOW{b in Brigades,j in Nodes}:				# law of material conservation - for each brigade separately
  	supply[b,j]-y[b,j] + sum{(i,j) in Arcs} x[b,i,j] = demand[b,j]-z[b,j] + sum{(j,k) in Arcs} x[b,j,k];
  	
#execution
data DM-HW1102.dat;

solve;

display{b in Brigades, (i,j) in Arcs: x[b,i,j]>0} x[b,i,j];

display{b in Brigades, j in Nodes: y[b,j]>0} y[b,j];

display{b in Brigades, j in Nodes: z[b,j]>0} z[b,j];