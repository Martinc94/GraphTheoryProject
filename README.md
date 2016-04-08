# Irish Constituencies Neo4j Database
###### Martin Coleman, G00312351

## Introduction
This is my third year Graph Theory project. The project is about the Irish general election held on 26th of february.
The country is divided into constituencies, with a number of seats available in each. 
I have created a database that contains information about all the parties, constituencies, candidates, results and other relevant information about the general election 2016

## Database
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

Then I created a relationship between candidates and Constituencies which allows users to search the database to see which candidates run in which constituencies. The queries to create the relationships are in the createConstituenciesRelationship.cypher script.
#####Extract of createConstituenciesRelationship script:
```cypher
MATCH 
(a:candidate),(c:constituency) WHERE a.constituency = 'carlow-kilkenny' 
AND c.name = 'Carlow–Kilkenny ' CREATE (a)-[r:RUNS_IN]->(c)
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
MATCH (a:candidate { name:"Micheál Martin" }),(b:candidate { name:"Enda Kenny" }),
p = shortestPath((a)-[*..5]-(b))
RETURN p
```

Each Constituency, Candidate, Party and elected TD get their own node within the database.
The nodes are linked by relationships such as what constituency they run in, what party they are a member of or if they are an independant.

## Queries
My first query is to find out which political party had the most TDs elected in 2016 that were previously elected to the dail before 2016.
The query returns a list of all party with the count of re-elected TDs beside
##### Expected Results:
```
Party           NoOfTDs
-----------------------
Party Name      3
Party Name      2
Party Name      1
```

My second query is to find out all the independant TDs that were elected in any of the Dublin Constituencies that were previously TDs in the Dail and return all the nodes

##### Expected Results:
```
Returns all nodes that are independents that got elected in any Dublin constituency 
and their relationship to each other(being an independent) 
```

My Third query is to find out the constituency where the elected TDs have the most people to represent per TD elected.

##### Expected Results:
```
PersonsPerTD	Constituency		  NoOfSeats
-----------------------------------------
20000			    [ constituency ]	[3]
19000			    [ constituency ]	[5]
18000			    [ constituency ]	[4]
```

#### Query One: Re-elected previous TD's by party
This is a query to return the parties with the most re-elected TDs in 2016 that were previously TDs before 2016 election in descending order.
This query works by getting all of the candidate nodes with the member of a party relationship that were previously a TDs and comparing them with the Elected TD nodes to return the node that match both the query then returns a list of each relevant party and count of each member that got elected in 2016 having already been a TD.
```cypher
MATCH(c:candidate)-[:MEMBER_OF]->(p:party),(e:electedTd)
WHERE
c.previousTD = 'TRUE' and e.name = c.name
RETURN
(p.name)AS Party ,count(p)AS NoOfTDs order by NoOfTDs desc
```

#### Query Two: Independant TD's re-elected in any dublin constituency
This query is to return all independent candidates elected in any Dublin constituency in 2016 e.g(dublin-south-west,dublin-rathdown,dublin-central ETC).
This query works by getting all of the candidate nodes that are an independent(IS_AN) and comparing them with the Elected TD nodes to return the nodes that match the query and the relationship of being an independent.
```cypher
MATCH(c:candidate)-[r:IS_AN]->(p:party),(e:electedTd)
WHERE
c.constituency=~'.*dublin.*' and e.name = c.name
RETURN
r
```

#### Query Three: Persons per TD in each constituency
This is a query to return a list of constituencies ordered by the highest average person per TD ratio.
This query works by creating a list all of the constituencies and creating a PersonsPerTD ratio by dividing the population by the number of seats in each constituency. The query also returns each constituency name and amount of seats.
```cypher
MATCH(c:constituency)
RETURN
(c.population)/(c.seats) AS PersonsPerTD, 
collect(c.name) AS Constituency,
collect(c.seats) AS NoOfSeats
ORDER BY PersonsPerTD desc
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.)
2. [Irish constituencies website](https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland), the wikipedia page of Irish constituencies.)
3. [Irish political parties website](https://en.wikipedia.org/wiki/List_of_political_parties_in_the_Republic_of_Ireland), the wikipedia page of Irish political parties.)
4. [Storyful website](https://medium.com/@Storyful/introducing-the-irish-election-open-database-68b49855657b#.avjerd187), the Storyful website source of candidate data.)
5. [Elections Ireland website](https://electionsireland.org/results/general/32dail.cfm), the Elections Ireland website Source of election Results.)
6. [Neo4J Docs website](http://neo4j.com/docs/), the website of Neo4j Documentation.)
