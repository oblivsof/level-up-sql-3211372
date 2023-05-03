-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT *
FROM Customers
WHERE FirstName = 'Cleo'
AND LastName = 'Goldwater';

SELECT *
FROM Dishes
WHERE DishID = 14;

UPDATE Customers
SET FavoriteDish = (SELECT DishID FROM Dishes 
                    WHERE Name = 'Qinoa Salmon Salad')
WHERE CustomerID = 42;

SELECT Customers.FirstName, Customers.LastName, 
Customers.FavoriteDish, Dishes.Name
FROM Customers
JOIN Dishes ON Customers.FavoriteDish = Dishes.DishID
ORDER BY Customers.FirstName ASC;
