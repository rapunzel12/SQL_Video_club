
-- Select Title, Duration and Grade of the Movie where Duration is 60 minutes and the grade is minimum 4.
SELECT Title, Duration, Grade
FROM Movie
WHERE Duration=60
AND Grade>=4;

-- Select Title, Duration and Grade of the table Movie where Grade is 7, 
-- and order by the Duration from the longest to the Shortes Movie.
SELECT Title, Duration, Grade
FROM Movie
WHERE Grade =7
ORDER BY Duration DESC;

-- Fetch the Members Names and the NumberOfDays of borrowed video tapes using Join. 
-- Number of Days are organised in ascending manner

SELECT Name, NumberOfDays
FROM Borrowed b  
JOIN Member m ON m.idMember=b.idMember 
ORDER BY NumberOfDays ASC;

-- This is the 2nd possible solution for fetching the data
SELECT Name, NumberOfDays
FROM Borrowed b, Member m
WHERE b.idMember = m.idMember
ORDER BY NumberOfDays ASC;

-- Write SQL query to show the minimum price of the Movie where the genre is Comedy
SELECT MIN(price) AS "Minimum price", g.Name AS Genre
FROM Movie m 
JOIN Genre g ON m.idGenre = g.idGenre
where g.Name = 'Comedy'
GROUP BY g.Name;

-- Write SQL query to show sum of all the Movies in total
SELECT SUM(price) as "Total"
FROM movie;

-- Write SQL query of the AVERAGE price of the Movies
SELECT AVG(price) as "average price"
FROM Movie;

-- Write SQL query to feetch total number of movies with the lowest price
SELECT COUNT(*) AS "Number of Movies"
FROM movie
WHERE price=10.50;

SELECT price, COUNT(*) AS "Number of Movies"
FROM movie
GROUP BY price;

-- Write SQL query to fetch the Title of the Movie and the Name of the Member who borowwed the Movie
SELECT m.Title, me.Name
FROM Borrowed b 
JOIN Movie m ON B.idMovie = m.idMovie 
JOIN Member me ON b.idMember=me.idMember
Order By m.Title;

-- Find movies borrowed more than once
SELECT idMovie, COUNT(*) AS times_borrowed
FROM Borrowed
GROUP BY idMovie
HAVING COUNT(*) > 1;

-- Fetch top-rated movies
SELECT Title, Grade
FROM Movie
ORDER BY Grade DESC
LIMIT 5;

-- Find Members who have borrowed a Specific Genre
SELECT DISTINCT me.Name, g.Name AS Genre
FROM Member me
JOIN Borrowed b ON me.idMember = b.idMember
JOIN Movie mo ON b.idMovie = mo.idMovie
JOIN Genre g ON mo.idGenre = g.idGenre
WHERE g.Name = 'Action';

-- List of all movies and their genre names
SELECT mo.Title, g.Name AS Genre
FROM Movie mo
JOIN Genre g ON mo.idGenre = g.idGenre
ORDER BY g.Name, mo.Title;