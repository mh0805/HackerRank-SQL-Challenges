/*SQL - Basic Join - African Cities*/
/*https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true&h_r=next-challenge&h_v=zen*/

SELECT ct.name
FROM city AS ct
    INNER JOIN country as ctry ON ct.countrycode = ctry.code
WHERE ctry.continent = 'Africa';
