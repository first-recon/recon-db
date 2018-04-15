create table events (
    id INT primary key not null,
    name VARCHAR(512),
    venue VARCHAR(128),
    date_start INT,
    date_end INT,
    season INT,
    type VARCHAR(128),
    location_street VARCHAR(256),
    location_postalCode INT,
    location_city VARCHAR(512),
    location_state VARCHAR(512),
    location_country VARCHAR(2)
);

create table teams (
    id INT primary key not null,
    name VARCHAR(256),
    number VARCHAR(128)
);

-- https://trello.com/c/VucNCBR5/16-add-match-data-table

create table matches (
    id VARCHAR(64) primary key not null, -- 4318-65532-5
    match_id VARCHAR(64) not null, -- 65532-5
    team INT not null, -- 4318
    time_stamp BIGINT not null,
    alliance VARCHAR(4) not null,
    data VARCHAR(4096) not null
);