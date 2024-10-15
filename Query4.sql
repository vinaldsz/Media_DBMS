--Query4: Returns all the states that have no.of customers > 10
SELECT  state, Count(DISTINCT(CustomerId)) AS CustomerCount
FROM Customers
GROUP BY State
HAVING Count(DISTINCT(CustomerId))>10
ORDER BY state asc;