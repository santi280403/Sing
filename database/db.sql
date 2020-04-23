CREATE DATABASE sing;

USE sing;

--User table
CREATE TABLE users(
    id INT(11) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);

ALTER TABLE users
		ADD PRIMARY KEY (id);

ALTER TABLE users
		MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1;

DESCRIBE users;

--image table
CREATE TABLE photo(
    id INT (11) NOT NULL,
    imageURL VARCHAR(100) NOT NULL,
    user_id INT(11),
    crated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);

ALTER TABLE photo
    ADD PRIMARY KEY (id);

ALTER TABLE photo
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1;

DESCRIBE photo;