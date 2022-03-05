/*SQL - Basic Join - Population Census*/
/*https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true*/

SELECT SUM(ct.population)
FROM city AS ct
INNER JOIN country AS ctry ON ct.countrycode = ctry.code
WHERE ctry.continent = 'Asia';
