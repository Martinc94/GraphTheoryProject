//Script to create a relationship between constituency and candidate

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'carlow-kilkenny' AND c.name = 'Carlow–Kilkenny ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'cavan-monaghan' AND c.name = 'Cavan–Monaghan ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION
MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'clare' AND c.name = 'Clare ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'cork-east' AND c.name = 'Cork East ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'cork-north-central' AND c.name = 'Cork North–Central ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'cork-north-west' AND c.name = 'Cork North–West ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'cork-south-central' AND c.name = 'Cork South–Central ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'cork-south-west' AND c.name = 'Cork South–West ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'donegal' AND c.name = 'Donegal ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'dublin-bay-north' AND c.name = 'Dublin Bay North ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'dublin-bay-south' AND c.name = 'Dublin Bay South ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'dublin-central' AND c.name = 'Dublin Central ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'dublin-fingal' AND c.name = 'Dublin Fingal ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'dublin-mid-west' AND c.name = 'Dublin Mid–West ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'dublin-north-west' AND c.name = 'Dublin North–West ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'dublin-rathdown' AND c.name = 'Dublin Rathdown ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'dublin-south-central' AND c.name = 'Dublin South–Central ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'dublin-south-west' AND c.name = 'Dublin South–West ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'dublin-west' AND c.name = 'Dublin West ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'dun-laoghaire' AND c.name = 'Dún Laoghaire ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'galway-east' AND c.name = 'Galway East ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'galway-west' AND c.name = 'Galway West ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'kerry' AND c.name = 'Kerry ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'kildare-north' AND c.name = 'Kildare North ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'kildare-south' AND c.name = 'Kildare South ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'laois' AND c.name = 'Laois ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'limerick-city' AND c.name = 'Limerick City ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'limerick-county' AND c.name = 'Limerick County ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'longford-westmeath' AND c.name = 'Longford–Westmeath ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'louth' AND c.name = 'Louth ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'mayo' AND c.name = 'Mayo ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'meath-east' AND c.name = 'Meath East ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'meath-west' AND c.name = 'Meath West ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'offaly' AND c.name = 'Offaly ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'roscommon-galway' AND c.name = 'Roscommon–Galway ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'sligo-leitrim' AND c.name = 'Sligo–Leitrim ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'tipperary' AND c.name = 'Tipperary ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'waterford' AND c.name = 'Waterford ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'wexford' AND c.name = 'Wexford ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r
UNION

MATCH (a:candidate),(c:constituency) WHERE a.constituency = 'wicklow' AND c.name = 'Wicklow ' CREATE (a)-[r:RUNS_IN]->(c)
RETURN r