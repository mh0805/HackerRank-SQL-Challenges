/*SQL - Basic Select - Weather Observation Station 5*/
/*https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true&h_r=next-challenge&h_v=zen*/

/*Query for getting the shortest city name and its length. Ordering by length and city name in ascending order will provide the first one per alphabetical order*/
SELECT city, LENGTH(city)
FROM station
ORDER BY LENGTH(city) ASC, city ASC
LIMIT 1;

/*Query for getting the longest city name and its length. Ordering by length in descending and city name in ascending order will provide the first one per alphabetical order*/
SELECT DISTINCT(city), LENGTH(city)
FROM station
ORDER BY LENGTH(city) DESC, city ASC
LIMIT 1;
