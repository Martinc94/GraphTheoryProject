//Query to return a list of constituencies ordered by the highest average person per TD ratio

//This query works by creating a list all of the constituencies 
//and creating a PersonsPerTD ratio by dividing the population by the number of seats in each constituency
//the query also returns each constituency name and amount of seats

//QUERY////////////////////////////////////////////////////////////////////////////////

MATCH(c:constituency)
RETURN
(c.population)/(c.seats) AS PersonsPerTD, 
collect(c.name) AS Constituency,
collect(c.seats) AS NoOfSeats
ORDER BY PersonsPerTD desc

///////////////////////////////////////////////////////////////////////////////////////

//EXPECTED RESULTS/////////////////////////////////////////////////////////////////////
//PersonsPerTD	Constituency		NoOfSeats
//00000			[ constituency ]	[0]
//00000			[ constituency ]	[0]
//00000			[ constituency ]	[0]
