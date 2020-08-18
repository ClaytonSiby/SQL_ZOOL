-- show Germany population from the world table.
SELECT population FROM world
WHERE name = 'Germany';

-- show name & population for 'Sweden', 'Norway', 'Denmark'
SELECT name, population FROM world
WHERE name IN ('Sweden','Norway','Denmark');

-- range specifying inclusive boundaries using (BETWEEN & AND)
SELECT name, area FROM world
WHERE area BETWEEN 200000 AND 2500000;

-- 
