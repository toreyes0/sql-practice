SELECT
  e.FirstName,
  e.LastName,
  e.EmployeeId,
  c.FirstName,
  c.LastName,
  c.SupportRepId,
  i.CustomerId,
  i.Total
FROM Invoice AS i
JOIN Customer AS c
ON i.CustomerId = c.CustomerId
JOIN Employee AS e
ON c.SupportRepId = e.EmployeeId
ORDER BY i.Total DESC
LIMIT 10

-- [INNER] JOIN - matching records between both tables
-- LEFT [OUTER] JOIN - all records in left table including matches in right table
-- RIGHT [OUTER] JOIN - all records in right table including matches in left table
