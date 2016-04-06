# Irish Constituencies Neo4j Database
###### Martin Coleman, G00312351

## Introduction
This is my third year Graph Theory project. The project is about the Irish general election held on 26th of february.
The country is divided into constituencies, with a number of seats available in each.

## Database
//Explain how you created your database, and how information is represented in it.

The database is made in Neo4j and is accessed by Cypher Queries.
First I created the constituency node.
I used a modified version of the table available on wikipedia(link in references below) to create a cypher script called createConstituency.cypher. 
#####Extract of createConstituency script:
```cypher
CREATE(:constituency{name:"Carlow–Kilkenny ",population:145659,seats:5}),
(:constituency{name:"Cavan–Monaghan ",population:120483,seats:4}),
...
```
Then I created the party node.
I used the information available on wikipedia and added extra parties to it(link in references below) to create a cypher script called createParties.cypher. 
#####Extract of createParties script:
```cypher
CREATE(:party{name: "Fine Gael",leader :"Enda Kenny",founded: "1933",inauguralLeader: "Eoin O'Duffy",ideology:"Christian democracy,Liberal conservatism",position: "Centre-right"}),
(:party{name: "Labour Party",leader :"Joan Burton",founded: "1912",inauguralLeader: "James Connolly,James Larkin,William X. O'Brien",ideology:"Social democracy,",position: "Centre-left"}),
...
```
Then I created the candidate node.
I used the list of candidates available on Storyful(link in references below) to create a cypher script called createCandidates.cypher.
#####Extract of createCandidates script:
```cypher
CREATE(:candidate{name: "Gerry Adams", gender:"Male", previousTD:"TRUE", party:"sinn-fein", constituency:"louth"}),
(:candidate{name: "Barbara Ahern", gender:"Female", previousTD:"FALSE", party:"fianna-fail", constituency:"cork-east"}),
...
```
Then I created a relationship between candidates and parties which allows users to search the database to see which candidates belong to which party. The queries to create the relationships are in the createPartyRelationship.cypher script.
#####Extract of createPartyRelationship script:
```cypher
MATCH (a:candidate),(b:party)
WHERE a.party = 'sinn-fein' AND b.name = 'Sinn Féin'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
```
Then I augmented the database with information found from electionsireland website
I created a node called electedTd which stored information(votes,share of votes,seat number etc) about each TD that got elected in the 2016 election.
The createElectedTd.cypher script adds the results of the General election to the database.
#####Extract of createElectedTd script:
```cypher
CREATE(:electedTd{constituency:"Carlow–Kilkenny ",name:"John McGuinness",votes:"10528",share:"0.1504",status:"Made Quota  ",seat:"1"}),
(:electedTd{constituency:"Carlow–Kilkenny ",name:"John Paul Phelan",votes:"7568",share:"0.1081",status:"Made Quota  ",seat:"2"}),
...
```
The MiscQueries.cypher script contains miscellaneous queries that can get data from the database.
#####Example of some queries that work on database from the MiscQueries script:
```cypher
//Returns the parties and the total number of members of each party in descending order
match n-[r:MEMBER_OF]-()
return n, count(r) as rel_count
order by rel_count desc

//Find all candidates of a party by substring
MATCH (n:candidate)-[r:MEMBER_OF]->(p:party)where p.name=~'.*Fianna.*'
RETURN n,r,p;

//shortest path between Micheál Martin and Enda Kenny
MATCH (a:candidate { name:"Micheál Martin" }),(b:candidate { name:"Enda Kenny" }), p = shortestPath((a)-[*..5]-(b))
RETURN p
```

## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query one title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query two title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query three title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland
3. https://en.wikipedia.org/wiki/List_of_political_parties_in_the_Republic_of_Ireland
4. https://medium.com/@Storyful/introducing-the-irish-election-open-database-68b49855657b#.avjerd187
5. https://electionsireland.org/results/general/32dail.cfm
