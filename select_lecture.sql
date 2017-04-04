=================================READ STATEMENTS (SELECT)


-- Select values (Read) 



#select all fields from all entries
SELECT * FROM books\G



#select single field from all entries (NULL is listed)
SELECT description FROM books;



#select multiple fields from all entries
SELECT title, author FROM books;



#WHERE clause
SELECT * FROM books
WHERE author = "Harper Lee"\G




#WHERE clause with single column
SELECT title FROM books
WHERE author = "Harper Lee";















#WHERE clause with not equals operator
SELECT * FROM books
WHERE id != 1 \G



# WHERE clause with range of results
SELECT * FROM books
WHERE id BETWEEN 2 AND 4\G



#Using an alias
SELECT 'This is a test output' AS 'test';



#Using an alias for a column name
SELECT author AS 'Some Person' FROM books;


