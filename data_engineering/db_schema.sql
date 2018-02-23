
-- crime_type

DROP TABLE IF EXISTS crime_type;
CREATE TABLE IF NOT EXISTS crime_type (
    id_crime_type INT NOT NULL PRIMARY KEY, 
    name VARCHAR(20) NOT NULL,
    created_at datetime, 
    updated_at datetime );

INSERT INTO crime_type (id_crime_type, name, created_at, updated_at) 
VALUES  ( 1, 'motor vehicle theft', NOW(), NOW() ),
		( 2, 'robbery', NOW(), NOW() ),
        ( 3, 'vandalism', NOW(), NOW() ),
        ( 4, 'theft/larceny', NOW(), NOW() ),
        ( 5, 'burglary', NOW(), NOW() ),
        ( 6, 'assault', NOW(), NOW() ),
		( 7, 'sex crimes', NOW(), NOW() ),
        ( 8, 'dui', NOW(), NOW() ),
        ( 9, 'fraud', NOW(), NOW() ),
        ( 10, 'disturbing the peace', NOW(), NOW() ),
        ( 11, 'drugs/alcohol violations', NOW(), NOW() ),
        ( 12, 'arson', NOW(), NOW() ),
        ( 13, 'weapons', NOW(), NOW() ),
        ( 14, 'homicide', NOW(), NOW() );

DESCRIBE crime_type;
SELECT * FROM crime_type;

-- city

DROP TABLE IF EXISTS city;
CREATE TABLE IF NOT EXISTS city (
    id_city INT NOT NULL PRIMARY KEY, 
    name VARCHAR(20) NOT NULL, 
    created_at datetime, 
    updated_at datetime);

DESCRIBE city;
SELECT * FROM city;

-- state

DROP TABLE IF EXISTS state;
CREATE TABLE IF NOT EXISTS state (
    id_state INT NOT NULL PRIMARY KEY, 
    name VARCHAR(20) NOT NULL, 
    shortname VARCHAR(20), 
    created_at datetime, 
    updated_at datetime);

DESCRIBE state;
SELECT * FROM state;

-- crime

DROP TABLE IF EXISTS crime;
CREATE TABLE IF NOT EXISTS crime (
    id_crime INT NOT NULL, 
    fk_crime_type INT NOT NULL, 
    case_number VARCHAR(20), 
    description TEXT, 
    police_beat VARCHAR(20), 
    happened_at datetime,
    address VARCHAR(20), 
    fk_city INT, 
    fk_state INT, 
    longtitude VARCHAR(20), 
    latitude VARCHAR(20),
    PRIMARY KEY (id_crime),
    FOREIGN KEY (fk_crime_type) REFERENCES crime_type(id_crime_type),
    FOREIGN KEY (fk_city) REFERENCES city(id_city),
    FOREIGN KEY (fk_state) REFERENCES state(id_state) );
                                   
DESCRIBE crime;    
SELECT * FROM crime;   
                            
