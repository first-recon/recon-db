create table events (
    id INT primary key not null,
    name VARCHAR(128),
    type VARCHAR(16),
    season INT,
    date_start INT,
    date_end INT,
    location_street VARCHAR(64),
    location_postalCode INT,
    location_cityprov VARCHAR(32),
    location_country VARCHAR(2)
);

create table teams (
    id INT primary key not null,
    name VARCHAR(256),
    number VARCHAR(128)
);