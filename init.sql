CREATE DATABASE lab6_db;
USE lab6_db;
CREATE TABLE Teams (
    Num INT AUTO_INCREMENT PRIMARY KEY,
    Team VARCHAR(50),
    City VARCHAR(50),
    Established YEAR,
    Coach VARCHAR(50),
    Wins INT
);
-- Create the Players table
CREATE TABLE Players (
    PlayerID INT AUTO_INCREMENT PRIMARY KEY,
    PlayerName VARCHAR(50),
    TeamNum INT,
    Age INT,
    FOREIGN KEY (TeamNum) REFERENCES Teams(Num)
);

CREATE TABLE Budget (
    TeamNum INT PRIMARY KEY,
    Budget INT,
    FOREIGN KEY (TeamNum) REFERENCES Teams(Num)
);

CREATE TABLE Houses (
    TeamNum INT PRIMARY KEY,
    House CHAR(1),
    FOREIGN KEY (TeamNum) REFERENCES Teams(Num)
);

INSERT INTO Teams (Team, City, Established, Coach, Wins) VALUES
('Maccabi', 'Tel-Aviv', 1960, 'Neven Spahija', 12),
('Hapoel', 'Jerusalem', 1965, 'Dainius Adomaitis', 9),
('Maccabi', 'Haifa', 1978, 'Amit Ben-David', 6),
('Hapoel', 'Tel-Aviv', 1957, 'Dani Franko', 8),
('Hapoel', 'Galil-elion', 1972, 'Barak Peleg', 11);

INSERT INTO Players (PlayerName, TeamNum, Age) VALUES
('Gil Benny', 5, 23),
('Yuval Zossman', 1, 22),
('Iftach Ziv', 5, 26),
('Omri Kasspi', 1, 32),
('Adam Ariel', 2, 27),
('Tamir Blat', 2, 24),
('Adi Cohen Saban', 2, 27),
('Naor Sharon', 3, 26),
('Rom Gefen', 3, 27),
('Matan Naor', 4, 31);

INSERT INTO Budget (TeamNum, Budget) VALUES
(1, 3500),
(2, 2100),
(3, 1500),
(4, 2000),
(5, 1700);

INSERT INTO Houses (TeamNum, House) VALUES
(1, 'B'),
(2, 'A'),
(3, 'A'),
(4, 'B'),
(5, 'A');
