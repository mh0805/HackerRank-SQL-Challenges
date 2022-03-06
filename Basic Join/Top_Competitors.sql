/*SQL - Basic Join - Top Competitors*/
/*https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true*/

SELECT h.hacker_id, h.name
FROM submissions AS s
    JOIN hackers AS h ON s.hacker_id = h.hacker_id
    JOIN difficulty AS d ON s.score = d.score
    JOIN challenges AS c ON s.challenge_id = c.challenge_id
        AND d.difficulty_level = c.difficulty_level
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC;
