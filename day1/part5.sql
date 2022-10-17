DROP TABLE IF EXISTS game;
CREATE TABLE game (
    id INTEGER PRIMARY KEY,
    owner_team_id INTEGER NOT NULL,
    guest_team_id INTEGER NOT NULL,
    game_date DATE NOT NULL,
    winner_team_id INTEGER NOT NULL,
    owner_score INTEGER NOT NULL CHECK(owner_score >= 0) DEFAULT 0,
    guest_score INTEGER NOT NULL CHECK(guest_score >= 0) DEFAULT 0,
    arena_id INTEGER NOT NULL,
    UNIQUE (owner_team_id, guest_team_id),
    FOREIGN KEY (owner_team_id)
        REFERENCES team (id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    FOREIGN KEY (guest_team_id)
        REFERENCES team (id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    FOREIGN KEY (winner_team_id)
        REFERENCES team (id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    FOREIGN KEY (arena_id)
        REFERENCES arena (id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
