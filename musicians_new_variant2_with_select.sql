SELECT * FROM album
where data_release between '2008-01-01' and '2008-12-31';

SELECT * FROM track
where duration in (select MAX(duration) from track);

SELECT * FROM track
where duration > 3.5;

SELECT * FROM collection
where data_release between '2002-01-01' and '2007-12-31';

SELECT name FROM musician
WHERE name NOT LIKE '% %';

SELECT * FROM track
WHERE name LIKE '%me%';