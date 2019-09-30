# Sql-assignment

## General comments

There are 2 datasets, installs and events that come from data collected over 6 months between Jan 2016 and July 2016. They have the same columns and contain information related to media source, platform, user ids, app activity, revenue generated and date. The data has been imported with queries made in mySQL. There is no problem statement provided but given the dataset, I am interested in using installs dataset to find out which media source is most effective in gaining new users segregated by country and platform. Next, the events dataset is useful to understand about the user retention rate (based on activity on app) and user conversion (purchases made), likewise these can be segregated and sorted into platforms and countries to better understand market needs and target marketing efforts.

## Queries made

All queries can be found in the document as attached. These are the key questions the queries seek to answer:

### New Users

1. Number of installs between different media sources.
2. Top 5 highest number of installs made sorted by countries and platforms using 'organic' media
3.  Top 5 highest number of installs made sorted by countries and platforms using 'facebook' media
4. Top 5 highest number of installs made sorted by countries and platforms using 'twitter' media
5. Find duplicate entries in installs dataset, 1 from iOS platform organic media, 1 from android platform also organic media

### User retention

6. Average activity per user in android vs iOS 
7. Top 20 highest activity per user sorted by countries and platforms (identify platform and country has the most hardcore gamers as higher activity is proportional to revenue)
8. Top 10 highest revenue generated sorted by platform and country (can focus on purchase value of each user)
9. Top 10 revenue generated per user sorted by platform and country (can focus on increasing users)
10. Users who installed and had any form of activity (8440 users)
11. Users who made any transaction (4855 users)
12. Number of recurring transactions (around 2000)

## Things to improve on
1. Use Tableau to incorporate data visualisations
2. Investigate average activity before converting to purchase
3. investigate average activity per purchase
