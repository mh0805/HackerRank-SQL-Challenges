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
