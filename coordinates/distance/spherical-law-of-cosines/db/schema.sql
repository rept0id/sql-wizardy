CREATE TABLE monuments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    lat DOUBLE NOT NULL,     -- Latitude in decimal degrees
    long DOUBLE NOT NULL     -- Longitude in decimal degrees
);
