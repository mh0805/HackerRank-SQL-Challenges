/*SQL - Basic Join - Olivander's Inventiry*/
/*https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true*/

/* Utilizing a subquery to find the minimum coins needed for the solution*/
SELECT w.id, wp.age, w.coins_needed, w.power
FROM wands AS w
    JOIN wands_property AS wp ON w.code = wp.code
WHERE wp.is_evil = 0 AND
    w.coins_needed = (SELECT MIN(w2.coins_needed) FROM wands AS w2
                        JOIN wands_property AS wp2 ON w2.code = wp2.code
                        WHERE wp.age = wp2.age AND w.power = w2.power)
ORDER BY w.power DESC, wp.age DESC

/*This one is a query that works with MS SQL Server.
I tried a subquery without using MIN() function and instead partitioned data by the wand code and power
and ordered them in power DESC and coins_needed ASC, so this way our ideal high-power/low-cost wand wil be chosen, and have this as
row number. Grabbing the first row would provide us the ideal combination of high power/low cost/older wand.*/
SELECT id, age, coins_needed, power
FROM
(SELECT w.id, wp.age, w.coins_needed, w.power,
    ROW_NUMBER() OVER (PARTITION BY w.code, w.power ORDER BY w.power DESC, w.coins_needed ASC) AS row_number
FROM Wands AS w
    JOIN Wands_Property AS wp ON w.code = wp.code
WHERE wp.is_evil = 0) AS sub_query

WHERE sub_query.row_number = 1
ORDER BY power DESC, age DESC
