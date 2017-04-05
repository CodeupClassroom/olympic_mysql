-- =================================UPDATE STATEMENTS (UPDATE)


-- Update values 

-- **Test alerterations first with SELECT statements** 

#Updating a single record
UPDATE books
SET author = "Bob"
WHERE id = 23;


#Update single value in multiple records
UPDATE books
SET author = "Steve"
WHERE author != "Bob";

 #Update multiple values for multiple columns for a single value
UPDATE books
SET author = "Steve", title = "The Facts of Life"
WHERE id = 1;


UPDATE books
SET author = "Steve", title = "The Facts of Life";


SELECT * FROM books\G



