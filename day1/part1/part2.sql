DROP TABLE IF EXISTS arena;
CREATE TABLE arena (
    id INTEGER,
    name VARCHAR (100),
    size VARCHAR (100),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS team;
CREATE TABLE team (
    id INTEGER,
    city VARCHAR (100),
    name varchar (100),
    coach_name varchar (100),
    arena_id INTEGER,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS player;
CREATE TABLE player (
    id INTEGER,
    name VARCHAR (100),
    position VARCHAR (100),
    height NUMERIC,
    weight NUMERIC,
    salary NUMERIC,
    team_id INTEGER,
    PRIMARY KEY (id)
);
