//This is a Query to return the parties with the most re-elected TDs in 2016 that were previously TDs before 2016 election in descending order
//This query works by getting all of the candidate nodes with the member of a party relationship that were previously a TDs
//and comparing them with the Elected TD nodes to return the node that match both 
//the query then returns a list of each relevant party and count of each member that got elected in 2016 having already been a TD


//QUERY////////////////////////////////////////////////////////////////////////////////

MATCH(c:candidate)-[:MEMBER_OF]->(p:party),(e:electedTd)
WHERE
c.previousTD = 'TRUE' and e.name = c.name
RETURN
(p.name),count(p) order by count(p) desc

///////////////////////////////////////////////////////////////////////////////////////

//EXPECTED RESULTS///////////////////////////////////////////////////////////////////////////////////////
//(p.name)		count(p)
//
//partyName			4
//partyName			3
//partyName			2
//partyName			1