CREATE TABLE IF NOT EXISTS genres(
    id integer PRIMARY KEY,
    name varchar(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS performers(
    id integer PRIMARY KEY,
    name varchar(80) NOT NULL,
    ganre integer NOT NULL REFERENCES genres(id)
);
CREATE TABLE IF NOT EXISTS albums(
    id integer PRIMARY KEY,
    name varchar(80) NOT NULL,
    year_release integer NOT NULL,
    performer integer NOT NULL REFERENCES performers(id)
);  
CREATE TABLE IF NOT EXISTS tracks(
    id integer PRIMARY KEY,
    name varchar(80) UNIQUE NOT NULL,
    duration time NOT NULL,
    album integer NOT NULL REFERENCES albums(id)
);  
CREATE TABLE IF NOT EXISTS collections(
    id integer PRIMARY KEY,
    name varchar(80) NOT NULL,
    year_release integer NOT NULL, 
    track integer NOT NULL REFERENCES tracks(id),
    album integer NOT NULL REFERENCES albums(id)
);