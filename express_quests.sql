DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
  id int primary key NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  director varchar(255) NOT NULL,
  year varchar(255) NOT NULL,
  color varchar(255) NOT NULL,
  duration int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3;

INSERT INTO
  movies (title, director, year, color, duration)
VALUES
  (
    'Citizen Kane',
    'Orson Wells',
    '1941',
    '0',
    120
  ),
  (
    'The Godfather',
    'Francis Ford Coppola',
    '1972',
    '1',
    180
  ),
  (
    'Pulp Fiction',
    'Quentin Tarantino',
    '1994',
    '1',
    180
  ),
  (
    'Apocalypse Now',
    'Francis Ford Coppola',
    '1979',
    '1',
    150
  ),
  (
    '2001 a space odyssey',
    'Stanley Kubrick',
    '1968',
    '1',
    160
  ),
  (
    'The Dark Knight',
    'Christopher Nolan',
    '2008',
    '1',
    150
  );

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id int primary key NOT NULL AUTO_INCREMENT,
    firstname varchar(255) NOT NULL,
    lastname varchar(255) NOT NULL,
    email varchar(255) UNIQUE NOT NULL,
    city varchar(255) DEFAULT NULL,
    language varchar(255) DEFAULT NULL,
    hashedPassword varchar(255) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO
  users (firstname, lastname, email, city, language, hashedPassword)
VALUES
  (
    'John',
    'Doe',
    'john.doe@example.com',
    'Paris',
    'English',
     "$argon2id$v=19$m=16,t=2,p=1$emVmZXpmemZlemVmZWR6ZXplZg$rqZkhxu5YbqCGHPNrjJZpQ"
  ),
  (
    'Valeriy',
    'Appius',
    'valeriy.appius@example.com',
    'Moscow',
    'Russian',
     "$argon2id$v=19$m=16,t=2,p=1$emVmZXpmemZlemVmZWR6ZXplZg$rqZkhxu5YbqCGHPNrjJZpQ"
  ),
  (
    'Ralf',
    'Geronimo',
    'ralf.geronimo@example.com',
    'New York',
    'Italian',
     "$argon2id$v=19$m=16,t=2,p=1$emVmZXpmemZlemVmZWR6ZXplZg$rqZkhxu5YbqCGHPNrjJZpQ"
  ),
  (
    'Maria',
    'Iskandar',
    'maria.iskandar@example.com',
    'New York',
    'German',
     "$argon2id$v=19$m=16,t=2,p=1$emVmZXpmemZlemVmZWR6ZXplZg$rqZkhxu5YbqCGHPNrjJZpQ"
  ),
  (
    'Jane',
    'Doe',
    'jane.doe@example.com',
    'London',
    'English',
     "$argon2id$v=19$m=16,t=2,p=1$emVmZXpmemZlemVmZWR6ZXplZg$rqZkhxu5YbqCGHPNrjJZpQ"
  ),
  (
    'Johanna',
    'Martino',
    'johanna.martino@example.com',
    'Milan',
    'Spanish',
     "$argon2id$v=19$m=16,t=2,p=1$emVmZXpmemZlemVmZWR6ZXplZg$rqZkhxu5YbqCGHPNrjJZpQ"
  );
