CREATE SCHEMA video_club;
SET search_path TO video_club;
SET TIME ZONE 'UTC';

-- Table structure for 'genre'
CREATE TABLE genre (
  idGenre SERIAL PRIMARY KEY,
  Name TEXT NOT NULL
);

-- Table structure for 'member'
CREATE TABLE member (
  idMember SERIAL PRIMARY KEY,
  Name TEXT NOT NULL
);

-- Table structure for 'movie'
CREATE TABLE movie (
  idMovie SERIAL PRIMARY KEY,
  Title TEXT NOT NULL,
  Duration INT CHECK(Duration > 0),
  Grade INT CHECK(Grade BETWEEN 1 AND 10),
  price NUMERIC(10,2) CHECK(price >= 0),
  idGenre INT REFERENCES genre(idGenre) ON DELETE SET NULL
);

-- Table structure for 'videotape'
CREATE TABLE videotape (
  idVideoTape SERIAL PRIMARY KEY,
  Duration INT CHECK(Duration > 0)
);

-- Table structure for 'borrowed'
CREATE TABLE borrowed (
  idBorrowed SERIAL PRIMARY KEY,
  idVideoTape INT REFERENCES videotape(idVideoTape) ON DELETE SET NULL,
  idMovie INT REFERENCES movie(idMovie) ON DELETE SET NULL,
  NumberOfDays INT CHECK(NumberOfDays > 0),
  idMember INT REFERENCES member(idMember) ON DELETE CASCADE
);

-- Table structure for 'contains'
CREATE TABLE contains (
  idVideoTape INT REFERENCES videotape(idVideoTape) ON DELETE CASCADE,
  idMovie INT REFERENCES movie(idMovie) ON DELETE CASCADE,
  PRIMARY KEY (idVideoTape, idMovie)
);