CREATE TABLE game_location 
(
    Id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(1000),
    logo VARCHAR(150),
    x NUMERIC,
    y NUMERIC,
    fon VARCHAR(150),
    father_id SERIAL INTEGER,
    price NUMERIC
);

CREATE TABLE characteristic
(
    Id SERIAL PRIMARY KEY,
    hp INTEGER,
    armor INTEGER,
    smart INTEGER,
    strong INTEGER,
    fast INTEGER
); 

CREATE TABLE object_class 
(
    Id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(1000),
    FOREIGN KEY (characteristic_id) REFERENCES characteristic (Id) ON DELETE CASCADE
);

CREATE TABLE game_object 
(
    Id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(1000),
    FOREIGN KEY (characteristic_id) REFERENCES characteristic (Id) ON DELETE CASCADE,
    FOREIGN KEY (object_class_id) REFERENCES object_class (Id) ON DELETE CASCADE
);

CREATE TABLE person_class 
(
    Id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(1000),
    FOREIGN KEY (characteristic_id) REFERENCES characteristic (Id) ON DELETE CASCADE
);

CREATE TABLE inventary 
(
    Id SERIAL PRIMARY KEY,
    FOREIGN KEY (head) REFERENCES game_object (Id) ON DELETE CASCADE,
    FOREIGN KEY (body) REFERENCES game_object (Id) ON DELETE CASCADE,
    FOREIGN KEY (foot) REFERENCES game_object (Id) ON DELETE CASCADE,
    FOREIGN KEY (right) REFERENCES game_object (Id) ON DELETE CASCADE,
    FOREIGN KEY (left) REFERENCES game_object (Id) ON DELETE CASCADE
);

CREATE TABLE game_person
(
    Id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    logo VARCHAR(150),
    description VARCHAR(1000),
    is_player BOOLEAN,
    FOREIGN KEY (person_class_id) REFERENCES person_class (Id) ON DELETE CASCADE,
    FOREIGN KEY (characteristic_id) REFERENCES characteristic (Id) ON DELETE CASCADE,
    FOREIGN KEY (inventary_id) REFERENCES inventary (Id) ON DELETE CASCADE,
    FOREIGN KEY (current_location_id) REFERENCES game_location (Id) ON DELETE CASCADE
);