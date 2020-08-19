-- THESE QUERIES ARE CONCERNED WITH A TABLE OF NOBEL PRIZE WINNERS:
-- ```
-- nobel(yr, subject, winner)
-- ```

-- query to display Nobel prices for 1950
SELECT yr, subject, winner FROM nobel
 WHERE yr = 1950;

--  show who won the 1962 prize for Literature
SELECT winner FROM nobel
 WHERE yr = 1962
 AND subject = 'Literature';

--  show year & subject that won the 'Albert Einstein' his prize.
SELECT year, subject FROM nobel
WHERE winner = 'Albert Einstein';

-- give the name of the 'Peace' winners since the year 2000, including 2000
SELECT winner FROM nobel
WHERE yr >= 2000 AND subject = 'Peace';

-- show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
SELECT yr, subject, winner FROM nobel
WHERE subject = 'Literature'
AND yr BETWEEN 1980 AND 1989;

-- show details of the presidential winners:
-- Theodore Roosevelt, Woodrow Wilson, Jimmy Carter, Barack Obama
SELECT *  FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

-- show the winner with first name John   
SELECT winner FROM nobel
WHERE winner LIKE 'John%';

-- show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984
SELECT * FROM nobel
WHERE subject = 'Physics' AND yr = 1980 OR subject = 'Chemistry' AND yr = 1984;

-- show year, subject, and name of winners for 1980 excluding Chemistry and Medicine
SELECT * FROM nobel
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine');

-- Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) -- together with winners of a 'Literature' prize in a later year (after 2004, including 2004)
SELECT * FROM nobel
WHERE subject = 'Medicine' AND yr < 1910 OR subject = 'Literature' AND yr >= 2004;

-- find details of the price won by PETER GRUNBERG
SELECT * FROM nobel
WHERE winner LIKE concat('PETER%', '%NBERG');

-- find all details of the prize won by EUGENE O'NEILL
SELECT * FROM nobel
WHERE winner = 'EUGENE O''NEILL';

-- list the winners, year, and subject where the winner starts with Sir. Show the most recent, then by name order.
SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC, winner;

-- Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
SELECT winner, subject FROM nobel
WHERE yr = 1984
ORDER BY subject IN ('Chemistry', 'Physics'), subject, winner;
