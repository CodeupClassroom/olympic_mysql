USE codeup_test_db;

CREATE TABLE IF NOT EXISTS users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	username VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	UNIQUE (username),
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS posts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
	body TEXT NOT NULL,
	user_id INT UNSIGNED DEFAULT NULL,   --data type of foreign key matches data type
	PRIMARY KEY (id),
	FOREIGN KEY (user_id) REFERENCES users (id)
);

-- A foreign key is another table's primary key
-- The foreign key on table1 relates that row of data to the specified primary key on table2