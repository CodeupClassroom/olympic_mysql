USE codeup_test_db;

-- SELECT name as "all albums", release_date, sales
-- from albums;

-- -- update to set all album sales * 10
-- UPDATE albums
-- SET sales = sales * 10;

-- SELECT name as "all albums", release_date, sales
-- from albums;

SELECT name as "albums released before 1980", release_date, sales
from albums
where release_date < '1980-01-01';

-- update all albums released before 1980 to be 100 years less
UPDATE albums
set release_date = DATE_SUB(release_date, INTERVAL 100 YEAR)
WHERE release_date < '1980-01-01';

SELECT name as "albums released before 1980", release_date, sales
from albums
where release_date < '1980-01-01';

SELECT name as "Michael Jackson albums", release_date, sales
from albums
where artist = "Michael Jackson";

UPDATE albums
SET artist = "Peter Jackson"
WHERE artist = "Michael Jackson";

SELECT name as "Michael Jackson albums", release_date, sales
from albums
where artist = "Peter Jackson";
