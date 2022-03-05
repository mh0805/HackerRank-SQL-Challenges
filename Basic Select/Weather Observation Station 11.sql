/*SQL - Basic Select - Weather Observation Station 11*/
/*https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen*/

SELECT DISTINCT(city)
FROM station
WHERE LEFT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u') OR
    RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');
