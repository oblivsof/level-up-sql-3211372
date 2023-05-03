-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT CustomerID, FirstName
FROM Customers
WHERE FirstName = 'Norby';

SELECT CustomerID, ReservationID, Date
FROM Reservations
WHERE CustomerID = 64;

DELETE FROM Reservations
WHERE ReservationID = 2000;

