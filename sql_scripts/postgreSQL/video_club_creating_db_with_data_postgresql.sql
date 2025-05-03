-- Set up the database and schema

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

-- Insert data into 'genre'
INSERT INTO genre(Name) VALUES 
('Drama'), 
('Thriller'), 
('Comedy'), 
('Action'), 
('Science fiction'),
('Western'),
('Romance');

-- Insert data into 'member'
INSERT INTO member(Name) VALUES 
('Ivan'), 
('Janko'), 
('Mile'), 
('Zika'), 
('Pera'),
('Zeka'), 
('Ivana'),
('Ivo'),
('Laza'),
('Vlada'),
('Marija'),
('Jovana');

-- Insert data into 'movie'
INSERT INTO movie(Title, Duration, Grade, price, idGenre) VALUES 
('Film_01', 60, 5, 10.50, 4),
('Film_02', 45, 7, 43.50, 7),
('Film_03', 32, 10, 10.50, 4),
('Film_04', 92, 7, 43.50, 3),
('Film_05', 75, 5, 10.50, 4),
('Film_06', 45, 7, 43.5, 4), 
('Film_07', 80, 5, 10.5, 5), 
('Film_08', 55, 6, 50.5, 7), 
('Film_09', 60, 4, 75.5, 1), 
('Film_10', 45, 8, 78.5, 2), 
('Film_11', 87, 5, 87.5, 1), 
('Film_12', 105, 9, 42.5, 2), 
('Film_04', 92, 5, 10.5, 3), 
('Film_05', 75, 7, 43.5, 4), 
('Film_06', 45, 5, 10.5, 4), 
('Film_07', 80, 7, 43.5, 5), 
('Film_13', 60, 4, 73.5, 5), 
('Film_14', 45, 3, 92.5, 7);

-- Insert data into 'videotape'
INSERT INTO videotape(Duration) VALUES 
(300),
(300),
(350),
(350),
(400),
(400), 
(450), 
(450), 
(200), 
(200), 
(250), 
(250), 
(230), 
(230);

-- Insert data into 'borrowed'
INSERT INTO borrowed(idVideoTape, idMovie, NumberOfDays, idMember) VALUES 
(1, 2, 15, 12),
(2, 1, 10, 3),
(8, 2, 12, 11),
(6, 9, 10, 10),
(7, 16, 7, 9), 
(11, 4, 5, 8), 
(5, 3, 14, 7), 
(1, 2, 15, 6), 
(4, 3, 13, 5), 
(3, 3, 7, 4);

-- Insert data into 'contains'
INSERT INTO contains(idVideoTape, idMovie) VALUES 
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(2, 4), 
(3, 3), 
(3, 4), 
(3, 5), 
(3, 6), 
(4, 3), 
(4, 5), 
(4, 6), 
(4, 7), 
(5, 1), 
(5, 3), 
(5, 5), 
(5, 6), 
(6, 8), 
(6, 9), 
(6, 10), 
(6, 15), 
(7, 2), 
(7, 16), 
(7, 17), 
(7, 18), 
(8, 2), 
(8, 12), 
(8, 13), 
(8, 15), 
(11, 4), 
(11, 6), 
(11, 9), 
(11, 10);