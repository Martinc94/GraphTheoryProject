//This is a query that creates a relationship between Candidates and Parties

MATCH (a:candidate),(b:party)
WHERE a.party = 'sinn-fein' AND b.name = 'Sinn Féin'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'fianna-fail' AND b.name = 'Fianna Fáil'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'fine-gael' AND b.name = 'Fine Gael'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'people-before-profit-alliance' AND b.name = 'Anti-Austerity Alliance–People Before Profit'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'green-party' AND b.name = 'Green Party'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'renua' AND b.name = 'Renua Ireland'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'labour-party' AND b.name = 'Labour Party'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'social-democrats' AND b.name = 'Social Democrats'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'the-workers-party' AND b.name = 'Workers\' Party'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'anti-austerity-alliance' AND b.name = 'Anti-Austerity Alliance–People Before Profit'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'fis-nua' AND b.name = 'fis-nua'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'communist-party-of-ireland' AND b.name = 'communist-party-of-ireland'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'irish-democratic-party' AND b.name = 'irish-democratic-party'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'catholic-democrats' AND b.name = 'catholic-democrats'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'independent' AND b.name = 'independent'
CREATE (a)-[r:IS_AN]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'independents-4-change' AND b.name = 'independents-4-change'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
UNION

MATCH (a:candidate),(b:party)
WHERE a.party = 'direct-democracy-ireland' AND b.name = 'direct-democracy-ireland'
CREATE (a)-[r:MEMBER_OF]->(b)
RETURN r
