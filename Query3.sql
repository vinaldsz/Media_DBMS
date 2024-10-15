--Query3: Returns count of customers each state has. Includes customers who haven't specified state
SELECT  state, Count(DISTINCT(CustomerId)) AS CustomerCount
FROM Customers
GROUP BY State
ORDER BY state asc;