DROP VIEW IF EXISTS V_AvgTotal; -- delete view to edit
CREATE VIEW V_AvgTotal AS
SELECT ROUND(AVG(Total), 2) AS 'Average Total'
FROM Invoice;

-- with join
DROP VIEW IF EXISTS V_Tracks_InvoiceLine;
CREATE VIEW V_Tracks_InvoiceLine AS
SELECT
  il.InvoiceId,
  il.UnitPrice,
  il.Quantity,
  t.Name,
  t.Composer,
  t.Milliseconds
FROM InvoiceLine il
INNER JOIN Track t ON il.TrackId = t.TrackId;
