-- Create the "universe" database
CREATE DATABASE universe;

-- Connect to the "universe" database
\connect universe;

-- Create the "constellation" table
CREATE TABLE constellation (
    constellation_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    abbreviation VARCHAR(10) NOT NULL,
    location TEXT,
    no_of_stars INT
);

-- Create the "galaxy" table
CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description TEXT,
    size NUMERIC,
    has_black_hole BOOLEAN NOT NULL,
    distance_from_earth INT,
    age_in_millions_of_years INT
);

-- Create the "star" table
CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    type VARCHAR(100),
    mass NUMERIC,
    is_supernova BOOLEAN NOT NULL,
    galaxy_id INT REFERENCES galaxy(galaxy_id)
);

-- Create the "planet" table
CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    type VARCHAR(100),
    mass NUMERIC,
    has_water BOOLEAN NOT NULL,
    star_id INT REFERENCES star(star_id)
);

-- Create the "moon" table
CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    type VARCHAR(100),
    size NUMERIC,
    has_atmosphere BOOLEAN NOT NULL,
    planet_id INT REFERENCES planet(planet_id)
);

-- Insert data into the "constellation" table
INSERT INTO constellation(name, abbreviation, location, no_of_stars)
VALUES 
    ('Orion', 'Ori', 'Cellestial-Equator', 7),
    ('Leo', 'Leo', 'Cellestial-Equator', 5),
    ('Crux', 'Cru', 'Southern Hemisphere', 5);

-- Insert data into the "galaxy" table
INSERT INTO galaxy(name, description, size, has_black_hole, distance_from_earth, age_in_millions_of_years)
VALUES
    ('Milky Way', 'Our Home Galaxy', 100000, true, 26000, 13000),
    ('Andromeda', 'Spiral Galaxy', 120000, false, 2200000, 14000),
    ('Triangulum', 'Small Galaxy', 20000, false, 30000000, 12000),
    ('Whirlpool', 'Interacting Galaxy', 5000, true, 2300000, 11000),
    ('Sombrero', 'Edge-on Galaxy', 40000, false, 290000, 15000),
    ('Cartwheel', 'Ring Galaxy', 35000, true, 2500000, 16000);

-- Insert data into the "star" table (one star for each galaxy)
INSERT INTO star(name, type, mass, is_supernova, galaxy_id)
VALUES
    ('Sun', 'G-type main-sequence', 1989000000000000000000000000000, false, 1),
    ('Alpha Centauri A', 'G-type main-sequence', 2190000000000000000000000000000, false, 2),
    ('Alpha Centauri B', 'K-type main-sequence', 1700000000000000000000000000000, false, 3),
    ('Sirius', 'A-type main-sequence', 2020000000000000000000000000000, false, 3),
    ('Proxima Centauri', 'M-type main-sequence', 250000000000000000000000000000, false, 2),
    ('Betelgeuse', 'Red supergiant', 77000000000000000000000000000000, false, 1);

-- Insert data into the "planet" table
INSERT INTO planet(name, type, mass, has_water, star_id)
VALUES
    ('Earth', 'Terrestrial', 5927000000000000000000000, true, 1),
    ('Mars', 'Terrestrial', 639000000000000000000000, false, 1),
    ('Venus', 'Terrestrial', 4867000000000000000000000, false, 3),
    ('Jupiter', 'Gas giant', 1898000000000000000000000000, false, 2),
    ('Saturn', 'Gas giant', 568300000000000000000000000, false, 4),
    ('Neptune', 'Ice giant', 102400000000000000000000000, true, 5),
    ('Kepler-452b', 'Terrestrial', 3500000000000000000000000, true, 6),
    ('Mercury', 'Terrestrial', 330110000000000000000000, false, 2),
    ('Saturn II', 'Gas giant', 568300000000000000000000000, false, 4),
    ('Uranus', 'Ice giant', 86810000000000000000000000, true, 5),
    ('Kepler-62e', 'Terrestrial', 18500000000000000000000000, true, 6),
    ('Gliese 876 d', 'Terrestrial', 5820000000000000000000000, true, 3),
    ('55 Cancri f', 'Super-Earth', 9300000000000000000000000, false, 4);

-- Insert data into the "moon" table
INSERT INTO moon(name, type, size, has_atmosphere, planet_id)
VALUES
    ('Moon', 'Terrestrial', 73400000000000000000000, false, 1),
    ('Luna', 'Terrestrial', 73490000000000000000000, false, 1),
    ('Phobos', 'Rocky', 10659000000000000, false, 2),
    ('Deimos', 'Rocky', 2400000000000000, false, 2),
    ('Charon', 'Rocky', 1520000000000000000000, false, 5),
    ('Io', 'Rocky', 89300000000000000000000, true, 5),
    ('Ganymede', 'Ice', 149300000000000000000000, true, 3),
    ('Europa', 'Ice', 48300000000000000000000, true, 3),
    ('Titan', 'Ice', 21400000000000000000000, true, 9),
    ('Rhea', 'Ice', 2300000000000000000000, true, 9),
    ('Enceledas', 'Ice', 108000000000000000000, true, 9),
    ('Callisto', 'Ice', 107590000000000000000000, false, 4),
    ('Ceres', 'Dwarf', 930300000000000000000, false, 11),
    ('Pluto', 'Dwarf', 13090000000000000000000, false, 12),
    ('Haumea', 'Dwarf', 4006000000000000000000, false, 13),
    ('Eris', 'Dwarf', 16460000000000000000000, false, 14),
    ('Halimede', 'Rocky', 35000000000000000, false, 11),
    ('Olympus', 'Rocky', 1.43916, false, 2),
    ('Mimas', 'Ice', 37500000000000000000, false, 9),
    ('Oberon', 'Ice', 3010000000000000000000, false, 9);
    ('Umbriel', 'Ice', 1.27e21, false, 8);

