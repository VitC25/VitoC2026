SELECT co.name, COUNT(*) AS 'Number of Cities' FROM Country AS co INNER JOIN City ON co.code=city.countrycode WHERE co.code='USA' GROUP BY co.name;

SELECT Name, LifeExpectancy FROM Country ORDER BY LifeExpectancy DESC LIMIT 1;

SELECT Name FROM City WHERE Name LIKE 'New%' ORDER BY Name ASC;

SELECT Name, Population FROM City ORDER BY Population DESC LIMIT 10;

SELECT Name, Population FROM City WHERE Population > 2000000 ORDER BY Population DESC;

SELECT Name FROM City WHERE Name LIKE 'Be%';

SELECT Name, Population FROM City WHERE Population BETWEEN 500000 AND 1000000 ORDER BY Population DESC;

SELECT Name FROM City ORDER BY Name ASC;

SELECT Name, population FROM City WHERE population = (SELECT MAX(population) FROM City);

SELECT Name AS 'City Name', COUNT(*) AS 'Occurences' FROM City GROUP BY Name ORDER BY COUNT(*) DESC;

SELECT Name, Population FROM City WHERE Population = (SELECT MIN(Population) FROM City);

SELECT Name, Population FROM Country WHERE Population = (SELECT MAX(Population) FROM Country);

SELECT co.Name AS 'Country', ci.name AS 'Capital' FROM Country AS co INNER JOIN City AS ci ON ci.ID=co.Capital WHERE co.name='Spain';

SELECT co.name, group_concat(ci.name SEPARATOR ' / ') AS City FROM Country AS co LEFT JOIN City AS ci ON co.code=ci.countrycode WHERE Continent = 'Europe' GROUP BY co.name;
 
SELECT Name AS 'Country', AVG(Population) FROM Country GROUP BY Name;
 
SELECT co.Name AS 'Country', ci.name AS 'Capital', ci.Population FROM Country AS co INNER JOIN City AS ci ON ci.ID=co.Capital ORDER BY Country ASC;

SELECT Name AS Country, Population FROM Country WHERE Population < 100000 ORDER BY Population DESC;



 
SELECT * FROM
	(SELECT *, ROW_NUMBER() OVER (ORDER BY Population
DESC) AS ROWNUM FROM City) AS Cities
    WHERE ID BETWEEN 31 AND 40 ORDER BY ROWNUM ASC;
