-- finding the country that start with Y
SELECT name FROM world
  WHERE name LIKE 'Y%';

-- find countries that end with y
SELECT name FROM world
  WHERE name LIKE '%y';

-- find countries that contain the letter x
SELECT name FROM world
  WHERE name LIKE '%x%';

-- find countries that end with land
SELECT name FROM world
  WHERE name LIKE '%land';

-- find countries that start with C and end with ia
SELECT name FROM world
  WHERE name LIKE 'C%ia';

-- find countries that has oo in the name
SELECT name FROM world
  WHERE name LIKE '%oo%';

-- find countries that have three or more (a) in the name
SELECT name FROM world
  WHERE name LIKE '%a%a%a%';

-- find countries that have 't' as the second character
SELECT name FROM world
WHERE name LIKE '_t%'
ORDER BY name;

-- find countries that have two 'o' characters seperated by two others.
SELECT name FROM world
WHERE name LIKE '%O__O%';

-- countries that have exactly four characters
SELECT name FROM world
WHERE name LIKE '____';

-- find country wher the name is the capital city
SELECT name FROM world
WHERE name LIKE capital;

-- country where capital is the country plus 'City'
SELECT name FROM world
WHERE capital = concat(name, ' City');

-- find capital & name where the capital includes the name of the country
SELECT capital, name FROM world
WHERE capital LIKE concat('%', name, '%');

-- find capital & name where the capital is an extension of name of the country.
SELECT capital, name FROM world
WHERE capital != name AND capital LIKE concat('%', name, '%');

-- show the name & the extension where the capital is an extension of name of the country.
SELECT name, REPLACE(capital, name, '') FROM world
WHERE capital != name AND capital LIKE concat('%', name, '%');
