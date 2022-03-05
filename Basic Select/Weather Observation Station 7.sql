/*SQL - Basic Select - Weather Observation Station 7*/
/*https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true&h_r=next-challenge&h_v=zen*/

SELECT DISTINCT(city)
FROM station
WHERE city LIKE '%a' OR
    city LIKE '%e' OR
    city LIKE '%i' OR
    city LIKE '%o' OR
    city LIKE '%u';
