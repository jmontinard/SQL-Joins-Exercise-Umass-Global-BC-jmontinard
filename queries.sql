-- write your queries here

--1. Join the two tables so that every column and record appears, regardless of if there is not an owner_id. Your output should look like this:
SELECT * FROM owners o 
  FULL OUTER JOIN vehicles v 
    ON o.id=v.owner_id;


--2. Count the number of cars for each owner. Display the owners first_name, last_name and count of vehicles. The first_name should be ordered in ascending order. Your output should look like this:
SELECT first_name, last_name, COUNT(owner_id) 
FROM owners o 
JOIN vehicles v ON o.id=v.owner_id;
GROUP BY (first_name, last_name)
ORDER BY  first_name


--3. Count the number of cars for each owner and display the average price for each of the cars as integers. Display the owners first_name, last_name, average price and count of vehicles. The first_name should be ordered in descending order. Only display results with more than one vehicle and an average price greater than 10000. Your output should look like this:

SELECT first_name, last_name, COUNT(owner_id),   
ROUND(AVG(price)) as average_price, 
FROM owners o 
JOIN vehicles v on o.id=v.owner_id
GROUP BY (first_name, last_name)
HAVING  COUNT(owner_id) > 1 AND 
ROUND(AVG(price)) > 10000 
ORDER BY first_name DESC;



--SQL ZOO--

SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

--2
SELECT id,stadium,team1,team2
  FROM game
WHERE id ='1012' 


--3
SELECT player,teamid,stadium, mdate
  FROM game g JOIN goal go ON (g.id=go.matchid)
WHERE teamid = 'GER'

--4

SELECT team1, team2, player FROM game g 
JOIN goal go ON g.id = go.matchid
WHERE player LIKE 'Mario%'

--5

SELECT player, teamid,coach, gtime
  FROM goal g JOIN eteam e ON g.teamid = e.id
 WHERE gtime<=10


 -