/*SQL - Basic Select - Weather Observation Station 12*/
/*https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen*/

SELECT DISTINCT(city)
FROM station
WHERE LEFT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u') AND
    RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');
