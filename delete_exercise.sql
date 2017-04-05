USE codeup_test_db;


-- Albums released after 1991
DELETE
from albums 
where release_date > '1991-01-01';

-- Albums with the genre 'disco'
DELETE
from albums
where genre like '%disco%';


-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
DELETE
from albums
where artist like '%whitney%';


-- Albums released after 1991
SELECT artist, name as "album released after 1991"
from albums 
where release_date > '1991-01-01';

-- Albums with the genre 'disco'
SELECT *
from albums
where genre like '%disco%';


-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT *
from albums
where artist like '%whitney%';

