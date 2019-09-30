use Gumi;
create table installs(
app_name varchar(30),
media_source varchar(30),
country varchar(30),
user_id varchar(50),
platform varchar(30),
event_date varchar(30),
event_name varchar(30),
event_revenue varchar(30),
event_revenue_currency varchar(30))

SELECT * FROM installs;

create table events(
app_name varchar(30),
media_source varchar(30),
country varchar(30),
user_id varchar(60),
platform varchar(30),
event_date varchar(30),
event_name varchar(30),
event_revenue float,
event_revenue_currency varchar(30))

SELECT * FROM events LIMIT 5;

SELECT media_source, COUNT(user_id)
FROM installs 
GROUP BY media_source 
ORDER BY COUNT(user_id) DESC -- number of installs from various media source


SELECT platform, COUNT(user_id), country
FROM installs
WHERE media_source LIKE 'org%'
GROUP BY country, platform
ORDER BY COUNT(user_id) DESC
LIMIT 5 -- Top 5 highest number of installs sorted by countries and platforms using organic media


SELECT platform, COUNT(user_id), country
FROM installs
WHERE media_source LIKE 'face%'
GROUP BY country, platform
ORDER BY COUNT(user_id) DESC
LIMIT 5 -- Top 5 highest number of installs sorted by countries and platforms using facebook media

SELECT platform, COUNT(user_id), country
FROM installs
WHERE media_source LIKE 'tw%'
GROUP BY country, platform
ORDER BY COUNT(user_id) DESC -- twitter is only popular in US, all user installs come from US

SELECT COUNT(user_id)
FROM installs
WHERE platform LIKE 'an%' AND media_source LIKE 'org%'

SELECT COUNT(DISTINCT(user_id))
FROM installs
WHERE platform LIKE 'an%' AND media_source LIKE 'org%'

SELECT COUNT(user_id)
FROM installs
WHERE platform LIKE 'I%' AND media_source LIKE 'org%'

SELECT COUNT(DISTINCT(user_id))
FROM installs
WHERE platform LIKE 'I%' AND media_source LIKE 'org%'

SELECT user_id
FROM installs
GROUP BY user_id
HAVING COUNT(user_id) > 1 -- Duplicate entries in the installs dataset, 1 from ios organic media, 1 from android organic media

   
SELECT AVG(a.rcount), platform
FROM 
  (select count(user_id) as rcount, platform
   FROM events r
   GROUP BY r.user_id, r.platform) a
   GROUP BY a.platform -- average activity per user in android vs ios
   
SELECT AVG(a.rcount), platform, country
FROM 
  (select count(user_id) as rcount, platform, country
   FROM events r
   GROUP BY r.user_id, r.platform, r.country) a
   GROUP BY a.platform, a.country
   ORDER BY AVG(a.rcount) DESC
   LIMIT 20 -- top 20 highest activity per user sorted by platform and country (identify which platform and country has the most hardcore gamers)
   

   
   
SELECT sum(event_revenue), platform, country
FROM events
GROUP BY platform, country
ORDER BY sum(event_revenue) DESC
LIMIT 10 -- top 10 total revenue generated sorted by platform and country (target on purchase value)

SELECT avg(event_revenue), platform, country
FROM events
GROUP BY platform, country
ORDER BY avg(event_revenue) DESC
LIMIT 10 -- Top 10 revenue generated per user sorted by platform and country (target on increasing users)

SELECT count(user_id), platform
FROM events
GROUP BY user_id, platform -- Users who installed and had any form of activity

SELECT (user_id), event_revenue
FROM events
HAVING (event_revenue > 0) -- Number of transactions

SELECT distinct(user_id), event_revenue
FROM events
HAVING (event_revenue > 0) -- Number of users who got converted to spending on app









