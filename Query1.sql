--Query1 : All the customers that have made a purchase would have an associated invoice in invoice table
SELECT LastName, Email
FROM customers
WHERE CustomerId in (SELECT CustomerId FROM invoices);
