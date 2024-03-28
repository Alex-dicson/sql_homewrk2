CREATE TABLE IF NOT EXISTS genres(
    id integer PRIMARY KEY,
    name varchar(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS performers(
    id integer PRIMARY KEY,
    name varchar(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS albums(
    id integer PRIMARY KEY,
    name varchar(80) NOT NULL,
    year_release integer NOT NULL
); 

CREATE TABLE IF NOT EXISTS tracks(
    id integer PRIMARY KEY,
    name varchar(80) UNIQUE NOT NULL,
    duration time NOT NULL
);  

CREATE TABLE IF NOT EXISTS collections(
    id integer PRIMARY KEY,
    name varchar(80) NOT NULL,
    year_release integer NOT NULL, 
    track integer NOT NULL REFERENCES tracks(id),
    album integer NOT NULL REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS PerformerGenre(
    genre integer NOT NULL REFERENCES genres(id),
    album integer NOT NULL REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS AlbumsPerformers(
    album integer NOT NULL REFERENCES albums(id),
    performer integer NOT NULL REFERENCES performers(id)
);

CREATE TABLE IF NOT EXISTS ColletionsTracks(
    collection integer NOT NULL REFERENCES collections(id),
    track integer NOT NULL REFERENCES tracks(id)
);
