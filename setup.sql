DROP TABLE IF EXISTS people, addresses, houses;

CREATE TABLE people (
    personId SERIAL PRIMARY KEY, 
    fullName VARCHAR(100),
    age INT(0+),
    housemates INT
);

INSERT INTO people (fullName, age, housemates) VALUES ('Joe Bloggs', 26, 2 );

CREATE TABLE addresses (
    houseId SERIAL PRIMARY KEY,
    postcode VARCHAR,
    streetAddress VARCHAR
);

INSERT INTO addresses (postcode, streetAddress) VALUES ('AA11AA', '1 street');

CREATE TABLE houses (
    houseId INT,
    personId INT,
    FOREIGN KEY (houseId) REFERENCES addresses(houseId),
    FOREIGN KEY (ownerId) REFERENCES people(personId)
);