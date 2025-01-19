-- Q1
SELECT * FROM cd.facilities;

-- Q2
SELECT name, membercost FROM cd.facilities;

-- Q3
SELECT * FROM cd.facilities WHERE membercost != 0;

-- Q4
SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE monthlymaintenance/50 > membercost AND membercost != 0;

-- Q5
SELECT * FROM cd.facilities WHERE name LIKE '%Tennis%';

-- Q6
SELECT * FROM cd.facilities WHERE facid IN (1,5);

-- Q7
SELECT memid, surname, firstname, joindate FROM cd.members
WHERE joindate > '2012-09-01' LIMIT 10;

-- Q8
SELECT DISTINCT surname FROM cd.members ORDER BY surname LIMIT 10;

-- Q9
SELECT joindate FROM cd.members ORDER BY joindate DESC LIMIT 1;

--Q10
SELECT COUNT(*) FROM cd.facilities WHERE guestcost >= 10;

--Q11
SELECT facid, SUM(slots) AS total_slots FROM cd.bookings WHERE starttime BETWEEN '2012-09-01' AND '2012-09-30'
GROUP BY facid ORDER BY total_slots ASC;

--Q12
SELECT facid, SUM(slots) AS total_slots FROM cd.bookings GROUP BY facid HAVING SUM(slots) > 1000 ORDER BY facid ASC;	

--Q13
SELECT bo.starttime, fc.name FROM cd.facilities AS fc
JOIN cd.bookings AS bo ON fc.facid = bo.facid
WHERE fc.name LIKE '%Tennis Court%' AND bo.starttime BETWEEN '2012-09-21' AND '2012-09-22';

--Q14
SELECT starttime FROM cd.bookings AS bo
JOIN cd.members AS mem ON bo.memid = mem.memid
WHERE mem.surname = 'Farrell' AND mem.firstname = 'David';






