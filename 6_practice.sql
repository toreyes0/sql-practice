-- top 5 genres with the highest avg track duration
SELECT
  g.Name AS Genre,
  ROUND(AVG(t.Milliseconds) / 1000) AS AverageDuration
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
GROUP BY g.Name
ORDER BY AverageDuration DESC
LIMIT 5;

-- total purchase amount for each customer
SELECT
  c.CustomerId,
  c.FirstName,
  c.LastName,
  SUM(i.Total) AS TotalPurchaseAmount
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName
ORDER BY TotalPurchaseAmount DESC;

-- how many customers each employee support
SELECT
  e.EmployeeId,
  e.FirstName,
  e.LastName,
  COUNT(c.CustomerId) AS NumberOfCustomers
FROM
  Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY NumberOfCustomers DESC;
