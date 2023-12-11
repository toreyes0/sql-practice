SELECT
  -- concatenation
  c.FirstName || ' ' ||
  c.LastName || ' ' ||
  c.Address || ', ' ||
  c.City || ' ' ||
  c.State || ' ' ||
  c.PostalCode AS 'Mailing Address',
  -- string functions
  SUBSTR(c.PostalCode, 1, 5) AS PostalCode,
  UPPER(c.FirstName) AS 'First Name ALL CAPS',
  LOWER(c.LastName) AS 'Last Name all lower',
  -- date functions
  strftime('%Y-%m-%d', e.BirthDate) AS 'Birthdate No Timecode',
  strftime('%Y-%m-%d', 'now') - strftime('%Y-%m-%d', e.BirthDate) AS Age,
  -- aggregate functions
  SUM(i.Total) AS 'Total Sales',
  ROUND(AVG(i.Total), 2) AS 'Average Sales', -- nesting functions
  MAX(i.Total) AS 'Max Sale',
  MIN(i.Total) AS 'Min Sale',
  COUNT(*) AS 'Sales Count'
FROM Customer as c
INNER JOIN Employee as e
ON c.SupportRepId = e.EmployeeId 
INNER JOIN Invoice AS i
ON i.CustomerId = c.CustomerId
WHERE 'Mailing Address' IS NOT NULL
