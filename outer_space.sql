-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL,
  galaxy TEXT NOT NULL,
);
CREATE TABLE moons
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  planet_id INTEGER NOT NULL REFERENCES planets(id)
);


INSERT INTO planets (name, orbital_period_in_years, orbits_around, galaxy) VALUES
('Earth', 1.00, 'The Sun', 'Milky Way'),
('Mars', 1.88, 'The Sun', 'Milky Way'),
('Venus', 0.62, 'The Sun', 'Milky Way'),
('Neptune', 164.8, 'The Sun', 'Milky Way'),
('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way'),
('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way');

INSERT INTO moons (name, planet_id) VALUES
('The Moon',1), -- The Moon orbits Earth
('Phobos',2), -- Phobos orbits Mars
('Deimos',2), -- Deimos orbits Mars
('Naiad',4), -- Naiad orbits Neptune
('Thalassa',4), -- Thalassa orbits Neptune
('Despina',4), -- Despina orbits Neptune
('Galatea',4), -- Galatea orbits Neptune
('Larissa',4), -- Larissa orbits Neptune
('S/2004 N 1',4), -- S/2004 N 1 orbits Neptune
('Proteus',4), -- Proteus orbits Neptune
('Triton',4), -- Triton orbits Neptune
('Nereid',4), -- Nereid orbits Neptune
('Halimede',4), -- Halimede orbits Neptune
('Sao',4), -- Sao orbits Neptune
('Laomedeia',4), -- Laomedeia orbits Neptune
('Psamathe',4), -- Psamathe orbits Neptune
('Neso',4); -- Neso orbits Neptune