//query to search for a party name by substring
MATCH (n:candidate)where n.party=~ '.*party.*'
RETURN n.party;

//Find all candidates of a party by substring
MATCH (n:candidate)-[r:MEMBER_OF]->(p:party)where p.name=~'.*Fianna.*'
RETURN n,r,p;

//find candidate by name
Match(n:candidate)where n.name=~'.*NAME.*'
return(n);

//CREATE independant relationship
MATCH (a:candidate),(b:party) WHERE a.party = 'independent' AND b.name = 'independent' CREATE (a)-[r:IS_AN]->(b)
RETURN r

//returns all parties
MATCH (n:party)
RETURN n;

//Returns all candidates who run in each constituency
MATCH ()-[r:RUNS_IN]->() 
RETURN r

//return all female independants 
MATCH (a:candidate) where a.party = 'independent' AND a.gender='Female'
RETURN a

//number of female candidates in a given substring
MATCH (a:candidate) where a.party = 'independent' AND a.gender='Female' and a.constituency=~'.*dublin.*'
RETURN a

//Returns the parties and the total number of members of each party in descending order
match n-[r:MEMBER_OF]-()
return n, count(r) as rel_count
order by rel_count desc