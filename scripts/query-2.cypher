//Query to return all independent candidates elected in any Dublin constituency in 2016 e.g(dublin-south-west,dublin-rathdown,dublin-central ETC)
//This query works by getting all of the candidate nodes that are (IS_AN) independent 
//and comparing them with the Elected TD nodes to return the nodes that match
//the query then returns Nodes and the relationship of being an independent

//QUERY////////////////////////////////////////////////////////////////////////////////

MATCH(c:candidate)-[r:IS_AN]->(p:party),(e:electedTd)
WHERE
c.constituency=~'.*dublin.*' and e.name = c.name
RETURN
r

///////////////////////////////////////////////////////////////////////////////////////

//EXPECTED RESULTS/////////////////////////////////////////////////////////////////////
//Returns all nodes that are independents that got elected in any Dublin constituency and their relationship to each other(being an independent) 