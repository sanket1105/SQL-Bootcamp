CREATE TABLE Meals(MealName VARCHAR(100));

CREATE TABLE Drinks(DrinkName VARCHAR(100));

INSERT INTO Drinks
VALUES('Orange Juice'), ('Tea'), ('Cofee');

INSERT INTO Meals
VALUES('Omlet'), ('Fried Egg'), ('Sausage');

SELECT * FROM Meals;
SELECT * FROM Drinks