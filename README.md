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

Then I created the party node.
I used the information available on wikipedia and added extra parties to it(link in references below) to create a cypher script called createParties.cypher. 

Then I created the candidate node.
I used the list of candidates available on Storyful(link in references below) to create a cypher script called createCandidates.cypher.

Then I created a relationship between candidates and parties which allows users to search the database to see which candidates belong to which party. The queries to create the relationships are in the createPartyRelationship.cypher file.

Then I augmented the database with information found from electionsireland website
I created a node called electedTd which stored information(votes,share of votes,seat number etc) about each TD that got elected in the 2016 election.
The createElectedTd.cypher file adds the results of the General election to the database.

The MiscQueries.cypher file contains miscellaneous queries that can get data from the database.

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
