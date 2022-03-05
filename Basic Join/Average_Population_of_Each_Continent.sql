/*SQL - Basic Join - Average Population of Each Continent*/
/*https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen*/

/*Here, when used ROUND(AVG(ct.populiation)), the result was incorrect.
The reason is the question is askinf for a query to "round down" to the nearest integer. Hence, use FLOOR() instead of ROUND()*/

SELECT ctry.continent, FLOOR(AVG(ct.population))
FROM city AS ct
    INNER JOIN country as ctry ON ct.countrycode = ctry.code
GROUP BY ctry.continent;
