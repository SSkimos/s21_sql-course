CREATE TABLE game (
    id INTEGER PRIMARY KEY,
    owner_team_id INTEGER,
    guest_team_id INTEGER,
    game_update INTEGER,
    game_date DATE,
    winner_team_id INTEGER,
    owner_score INTEGER,
    guest_score INTEGER,
    arena_id INTEGER
);
