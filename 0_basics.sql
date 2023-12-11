-- practice queries
SELECT
  FirstName AS [Customer First Name], -- aliasing
  LastName AS 'Customer Last Name',
  Email AS EMAIL
FROM
  Customer
WHERE FirstName LIKE 'a%' -- wildcard (case-insensitive)
ORDER BY
  FirstName ASC,
  LastName DESC
LIMIT 50;

/* 
SELECT
  [Field] AS '[Alias]'
FROM
  [Table]
WHERE
  [Field] = x,
  [Field] BETWEEN x AND y,
  [Field] IN (x, y, ...),
  [Field] LIKE '%' --% - 0, 1, or more chars
GROUP BY
  [Field]
HAVING
  [Condition]
ORDER BY
  [Field] [ASC|DESC]
LIMIT [num]
*/
