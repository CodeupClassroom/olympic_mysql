=================================CREATE STATEMENTS (INSERT)

You do not have to specify every column in your table, but the set of values must match up exactly with the set of columns.


-- read entire table

SELECT * FROM books\G


-- delete entire table

TRUNCATE books;





-- create books table

CREATE TABLE IF NOT EXISTS books  (

    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    date_published DATE NOT NULL,
    description TEXT,
    bestseller_weeks INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id)

);






-- insert single values for all columns

INSERT INTO books (title, author, date_published, description, bestseller_weeks)
VALUES ("1984", "George Orwell", "1950-07-01", "This is a book about years.", 5);















-- insert single values for some columns (with default value column)

INSERT INTO books (title, author, date_published)
VALUES ("Twilight", "Stephenie Meyer", '2006-09-06');











-- insert multiple entries

INSERT INTO books (title, author, date_published, description, bestseller_weeks)
VALUES 
("To Kill a Mockingbird", "Harper Lee", "1960-07-11", "This is a book about birds.", 0),
("The Great Gatsby", "F. Scott Fitzgerald", "1925-04-10", "This is a book about a great thing.", 10),
("Harry Potter and the Sorcerer`s Stone", "J.K. Rowling", "1997-06-26", "This is a book about wizards.", 70),
("The Hobbit", "J.R.R. Tolkien", "1937-07-21", "This is a book about hobbits.", 5);




