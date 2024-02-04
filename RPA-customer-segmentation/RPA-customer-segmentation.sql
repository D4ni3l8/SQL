-- Query #1 - What are the column names?
SELECT * FROM users 
LIMIT 20;
 
-- Query #2 - Find the email addresses and birthdays of users whose 
-- birthday is between 1980-01-01 and 1989-12-31.
SELECT email FROM users
WHERE birthday BETWEEN '1980-01-01' AND '1989-12-31';
   
-- Query #3 - Find the emails and creation date of users 
-- whose created_at date matches this condition.
SELECT email, created_at FROM users
WHERE created_at < '2017-05-01';

-- Query #4 - Find the emails of the users who received the ‘bears’ test.
SELECT email, test FROM users 
WHERE test = 'bears';

-- Query #5 - Find all the emails of all users who 
-- received a campaign on website BBB.
SELECT email, campaign FROM users
WHERE campaign LIKE 'BBB%';

-- Query #6 - Find all the emails of all users who received ad copy 2 in 
-- their campaign.
SELECT email, campaign FROM users
WHERE campaign LIKE '%2';

-- Query #7 - Find the emails for all users who received both a campaign and a test. 
-- These users will have non-empty entries in the 
-- campaign and test columns.
SELECT email, campaign, test FROM users
WHERE campaign NOT NULL AND test NOT NULL;

-- Query #8 -One of the members of the marketing team had an idea of calculating
-- how old users were when they signed up.
SELECT email, created_at - birthday FROM users AS 'age';

