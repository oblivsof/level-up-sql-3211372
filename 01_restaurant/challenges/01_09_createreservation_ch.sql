-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

SELECT *
FROM Customers 
WHERE Email = 'smac@kinetecoinc.com';

INSERT INTO Customers (FirstName, LastName, Email, Phone)
VALUES ('Sam', 'McAdams', 'smac@kinetecoinc.com', NULL);

INSERT INTO Reservations
(CustomerID, Date, PartySize)
VALUES
(103, '2022-08-22', 5);

SELECT *
FROM Reservations
WHERE CustomerID = 103;
