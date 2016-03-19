//query to search for a party name by substring
MATCH (n:candidate)where n.party=~ '.*party.*'
RETURN n.party;

//Find all candidates of a party by substring
MATCH (n:candidate)-[r:MEMBER_OF]->(p:party)where p.name=~'.*Fianna.*'
RETURN n,r,p;

//find candidate by name
Match(n:candidate)where n.name=~'.*NAME.*'
return(n);

//Return all independants
$MATCH (a:candidate),(b:party) WHERE a.party = 'independent' AND b.name = 'independent' CREATE (a)-[r:IS_AN]->(b)
RETURN r

//returns all parties
MATCH (n:party)
RETURN n;
