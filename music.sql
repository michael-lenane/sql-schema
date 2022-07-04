-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
);

CREATE TABLE artists
(
  id SERIAL PRIMARY KEY,
  name_or_band_name TEXT NOT NULL,
  first_debut DATE
);

CREATE TABLE producers
(
  id PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT
);

CREATE TABLE albums
(
  id SERIAL PRIMARY KEY,
  album_name TEXT NOT NULL
);

CREATE TABLE album_credits
(
  artist_id TEXT REFERENCES artists ON DELETE CASCADE,
  producer_id TEXT REFERENCES producers ON DELETE CASCADE
)

INSERT INTO songs
  (title, duration_in_seconds, release_date, artists, album, producers)
VALUES
  ('MMMBop', 238, '04-15-1997'),
  ('Bohemian Rhapsody', 355, '10-31-1975'),
  ('One Sweet Day', 282, '11-14-1995'),
  ('Shallow', 216, '09-27-2018'),
  ('How You Remind Me', 223, '08-21-2001'),
  ('New York State of Mind', 276, '10-20-2009'),
  ('Dark Horse', 215, '12-17-2013'),
  ('Moves Like Jagger', 201, '06-21-2011'),
  ('Complicated', 244, '05-14-2002'),
  ('Say My Name', 240, '11-07-1999');


INSERT INTO artists
  (name_or_band_name, first_debut)
VALUES
  ("Hanson", "02-15-1996")
  ("Queen", "04-08-1979")
  ("Mariah Carey"  "07-14-1991")
  ("Boys II Men", "06-16-1993")
  ("Lady Gaga", "01-23-2008")
  ("Bradley Cooper", "07-14-2012")
  ("Nickelback", "09-05-1999")
  ("Jay-Z", "05-29-1998")
  ("Alicia Keys", "12-04-2000")
  ("Katy Perry", "06-12-2008")
  ("Juicy J", "04-24-2017")
  ("Maroon 5", "08-04-2003")
  ("Christina Aguilera", "09-01-2001")
  ("Avril Lavigne", "03-24-2000")
  ("Destiny's Child", "10-16-2000");


  INSERT INTO producers
    (first_name, last_name)
  VALUES
    ("Dust", "Brothers"),
    ("Stephen", "Leroni"),
    ("Roy Thomas", "Baker"),
    ("Walter", "Afanasieff"),
    ("Benjamin", "Rice"),
    ("Rick", "Parashar"),
    ("Al", "Shux"),
    ("Max", "Martin"),
    ("Cirkut"),
    ("Shellback"),
    ("Benny", "Blanco"),
    ("Darkchild"),
    ("The Matrix");

  INSERT INTO albums 
    (album_name)
  VALUES
    ('Middle of Nowhere')
    ('A Night at the Opera')
    ('Daydream')
    ('A Star Is Born')
    ('Silver Side Up')
    ('The Blueprint 3')
    ('Prism')
    ('Hands All Over')
    ('Let Go')
    ('The Writing''s on the Wall');

  