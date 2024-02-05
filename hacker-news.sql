-- top five stories with the highest scores
SELECT title, score FROM hacker_news
ORDER BY score DESC
LIMIT 5;

-- Total score
SELECT SUM(score) AS 'Total score' FROM hacker_news;

-- Users with a score higher than 200
SELECT user, SUM(score) FROM hacker_news
GROUP BY user
HAVING SUM(score) > 200;

-- calculating users' score as percentage
SELECT (309.0 + 304.0 + 282.0 + 517.0) / 6366.0;

-- number of rickrolls done
SELECT COUNT(url) AS 'rickrolls' FROM hacker_news
WHERE url = "https://www.youtube.com/watch?v=dQw4w9WgXcQ";

-- creating categories (i.e. github, medium,new york times and other)
SELECT COUNT(url), CASE
WHEN url LIKE '%github.com%' THEN 'GitHub'
WHEN url LIKE '%medium.com%' THEN 'Medium'
WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
ELSE 'Other'
END AS 'Source'
FROM hacker_news
GROUP BY 2;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

-- query that returns hour of the timestamp, average score of each hour and the count of stories for each hour
SELECT strftime('%H', timestamp) AS 'Time', ROUND(AVG(score), 0) AS 'average', COUNT(title) as 'num of stories'
FROM hacker_news
WHERE strftime('%H', timestamp) IS NOT NULL
GROUP BY 1;

