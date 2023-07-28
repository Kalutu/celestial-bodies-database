# Universe Database

This is a database named "universe" that represents celestial bodies such as galaxies, stars, planets, and moons. It is designed to store information about these astronomical entities and their relationships.

## Table of Contents

- [Database Schema](#database-schema)
- [Data Tables](#data-tables)
- [Data Sample](#data-sample)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Database Schema

The "universe" database consists of the following tables:

- `constellation`: Stores information about constellations.
- `galaxy`: Stores information about galaxies.
- `star`: Stores information about stars.
- `planet`: Stores information about planets.
- `moon`: Stores information about moons.

Each table has a primary key column that automatically increments and a "name" column. The primary key columns follow the naming convention `table_name_id` (e.g., `constellation_id`, `galaxy_id`, etc.).

## Data Tables

The columns in each table are as follows:

- `constellation`: constellation_id, name, abbreviation, location, no_of_stars
- `galaxy`: galaxy_id, name, description, size, has_black_hole, distance_from_earth, age_in_millions_of_years
- `star`: star_id, name, type, mass, is_supernova, galaxy_id
- `planet`: planet_id, name, type, mass, has_water, star_id
- `moon`: moon_id, name, type, size, has_atmosphere, planet_id

## Data Sample

Here's a sample of the data in each table:

```sql
-- Sample data for constellation table
INSERT INTO constellation(name, abbreviation, location, no_of_stars) VALUES
    ('Orion', 'Ori', 'Cellestial-Equator', 7),
    ('Leo', 'Leo', 'Cellestial-Equator', 5),
    ('Crux', 'Cru', 'Southern Hemisphere', 5);

-- Sample data for galaxy table
INSERT INTO galaxy(name, description, size, has_black_hole, distance_from_earth, age_in_millions_of_years) VALUES
    ('Milky Way', 'Our Home Galaxy', 100000, true, 26000, 13000),
    ('Andromeda', 'Spiral Galaxy', 120000, false, 2200000, 14000),
    -- Add more rows as needed

-- Sample data for star table
INSERT INTO star(name, type, mass, is_supernova, galaxy_id) VALUES
    ('Sun', 'G-type main-sequence', 1989000000000000000000000000000, false, 1),
    ('Alpha Centauri A', 'G-type main-sequence', 2190000000000000000000000000000, false, 1),
    -- Add more rows as needed

-- Sample data for planet table
INSERT INTO planet(name, type, mass, has_water, star_id) VALUES
    ('Earth', 'Terrestrial', 5927000000000000000000000, true, 1),
    ('Mars', 'Terrestrial', 639000000000000000000000, false, 1),
    -- Add more rows as needed

-- Sample data for moon table
INSERT INTO moon(name, type, size, has_atmosphere, planet_id) VALUES
    ('Moon', 'Terrestrial', 73400000000000000000000, false, 1),
    ('Luna', 'Terrestrial', 73490000000000000000000, false, 1),
    -- Add more rows as needed
