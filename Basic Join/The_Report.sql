/*SQL - Basic Join - The Report*/
/*https://www.hackerrank.com/challenges/the-report/copy-from/259433105?isFullScreen=true*/

SELECT
    CASE WHEN g.grade > 7 THEN s.name ELSE NULL end AS names,
    g.grade, s.marks
FROM students AS s
    INNER JOIN grades AS g ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY g.grade DESC, names ASC, s.marks ASC;
