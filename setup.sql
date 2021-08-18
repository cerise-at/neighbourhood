DROP TABLE IF EXISTS people, addresses, houses;

CREATE TABLE people (
    personid SERIAL PRIMARY KEY, 
    fullName VARCHAR(100),
    age INT ,
    housemates INT
);

INSERT INTO people (fullName, age, housemates) VALUES ('Joe Bloggs', 26, 2 );

CREATE TABLE addresses (
    houseid SERIAL PRIMARY KEY,
    postcode VARCHAR,
    streetAddress VARCHAR
);

INSERT INTO addresses (postcode, streetAddress) VALUES ('AA11AA', '1 street');

CREATE TABLE houses (
    fk_houseId INT,
    personId INT,
    FOREIGN KEY (personId) REFERENCES people(personid),
    FOREIGN KEY (fk_houseId) REFERENCES addresses(houseid)
);