/*SQL - Basic Select - Weather Observation Station 8*/
/*https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen*/

/*Approaching this query like previous two questions, using '%a' or 'a%' would cause really long lines of queries, 5! * 5! many!*/
/*Hence, utilizing LEFT() and RIGHT() functions to extract the first and last letters from the string*/

SELECT DISTINCT(city)
FROM station
WHERE LEFT(city, 1) in ('a', 'e', 'i', 'o', 'u') AND RIGHT(city, 1) in ('a', 'e', 'i', 'o', 'u');
