Task #1
SELECT model, speed, hd
FROM PC
WHERE Price < 500;

Task #2
SELECT DISTINCT maker
FROM Product
WHERE type = 'Printer';
Task #3

SELECT model, ram, screen
FROM Laptop
WHERE price > 1000;

Task #4
SELECT *
FROM Printer
WHERE color = 'y';

Task #5
SELECT model, speed, hd
FROM PC
WHERE price < 600 AND cd = '12x' OR price < 600 AND cd = '24x';
Task #6

SELECT DISTINCT Product.maker, Laptop.speed
FROM Laptop
JOIN Product
ON Product.model = Laptop.model
WHERE Laptop.hd >= 10;
Task #7

SELECT DISTINCT PC.model, PC.price
FROM Product
JOIN PC
ON Product.model = PC.model
WHERE Product.maker LIKE '%B%'
UNION ALL
SELECT DISTINCT Laptop.model, Laptop.price
FROM Product
JOIN Laptop
ON Product.model = Laptop.model
WHERE Product.maker LIKE '%B%'
UNION ALL
SELECT DISTINCT Printer.model, Printer.price
FROM Product
JOIN Printer
ON Product.model = Printer.model
WHERE Product.maker LIKE '%B%';
Task #8
SELECT DISTINCT maker
FROM Product
WHERE type in ('PC')
EXCEPT
SELECT DISTINCT maker
FROM Product
WHERE type in ('Laptop');

Task #9
SELECT DISTINCT maker
FROM Product p
JOIN PC
ON PC.model = p.model
WHERE speed >= 450;

Task #10
SELECT model, price
FROM Printer
WHERE price = (
SELECT MAX(price)
FROM Printer
);

Task #11
SELECT AVG(speed)
FROM PC;

Task #12
SELECT AVG(speed) as AVG_speed
FROM Laptop
WHERE price > 1000;

Task #13
SELECT AVG(PC.speed) as AVG_speed
FROM PC
JOIN Product p
ON p.model = PC.model
WHERE p.maker = 'A';

Task #14
SELECT Classes.class, Ships.name, Classes.country
FROM Classes
JOIN Ships
ON Classes.class = Ships.class
WHERE numGuns >= 10;

Task #15
SELECT hd
FROM PC
GROUP by hd
HAVING COUNT(model) > 1;
Task #16

SELECT DISTINCT A.model, B.model, A.speed, A.ram
FROM PC as A, PC B
WHERE A.model > B.model AND A.ram = B.ram AND A.speed = B.speed;

Task #17
SELECT DISTINCT Product.type, Laptop.model, Laptop.speed
FROM Product, Laptop
WHERE Product.type = 'Laptop'
AND Laptop.speed < ALL (
SELECT speed
FROM PC
);

Task #18
SELECT DISTINCT Product.maker, Printer.price
FROM Product
JOIN Printer
ON Printer.model = Product.model
WHERE Printer.color = 'y'
AND Printer.price = (
SELECT MIN(price)
FROM Printer
WHERE Printer.color = 'y'
);

Task #19
SELECT DISTINCT Product.maker, AVG(Laptop.screen) AS Avg_screen
FROM Product
JOIN Laptop
ON Product.model = Laptop.model
GROUP BY Product.maker;

Task #20
SELECT Product.maker, COUNT(Product.model) AS Count_Model
FROM Product
WHERE type = 'PC'
GROUP BY Product.maker
HAVING COUNT(Product.model) >= 3;

Task #21
SELECT maker, MAX(price) AS Max_price
FROM Product
JOIN PC
ON Product.model = PC.model
GROUP BY maker;

Task #22
SELECT speed, AVG(price) AS Avg_price
FROM PC
WHERE speed > 600
GROUP BY speed;

Task #23
SELECT maker
FROM Product
JOIN PC
ON Product.model = PC.model
WHERE speed >= 750
INTERSECT
SELECT maker
FROM Product
JOIN Laptop
ON Product.model = Laptop.model
WHERE speed >= 750;

Task #24
WITH i AS (
SELECT model, price
FROM PC
UNION 
SELECT model, price
FROM Laptop
UNION 
SELECT model, price
FROM Printer
)
SELECT model
FROM i
WHERE price = ALL (
SELECT max(price)
FROM i
);