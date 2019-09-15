create schema if not exists EVENTS;
create schema if not exists TEAMS;
create schema if not exists MATCHES;

create table if not exists EVENTS.events (
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

create table if not exists TEAMS.teams (
    id INT primary key not null,
    name VARCHAR(256),
    number VARCHAR(128)
);

create table if not exists MATCHES.matches (
    id VARCHAR(64) primary key not null, -- 4318-65532-5
    matchid VARCHAR(64) not null, -- 65532-5
    team INT not null, -- 4318
    timestamp BIGINT not null,
    alliance VARCHAR(4) not null,
    data VARCHAR(8192) not null,
    number INT not null
);

alter table MATCHES.matches add column if not exists game VARCHAR(16);
