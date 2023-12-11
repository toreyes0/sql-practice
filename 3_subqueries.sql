-- all invoices that are less than the average
SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity,
  Total
FROM Invoice
WHERE Total < (SELECT AVG(Total) FROM Invoice) -- inner query
ORDER BY Total DESC;

-- each city against global avg sales
SELECT
  BillingCity,
  AVG(Total) AS 'City Average',
  (SELECT AVG(Total) FROM Invoice) AS 'Global Average'
FROM Invoice
GROUP BY BillingCity
ORDER BY BillingCity;

-- on-aggregate subquery
SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity
FROM Invoice
WHERE InvoiceDate > (SELECT InvoiceDate FROM Invoice WHERE InvoiceId = 251);

-- returning multiple values from a subquery
SELECT
  InvoiceDate,
  BillingAddress,
  BillingCity
FROM Invoice
WHERE InvoiceDate IN (SELECT InvoiceDate FROM Invoice WHERE InvoiceId IN (251, 252, 254));

-- tracks that are not selling
SELECT
  TrackId,
  Composer,
  Name
FROM Track
WHERE TrackId NOT IN (SELECT DISTINCT TrackId FROM InvoiceLine ORDER BY TrackId);
