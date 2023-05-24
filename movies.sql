----Movies Homework----

CREATE TABLE Customer (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE Ticket (
  ticket_id INT PRIMARY KEY,
  customer_id INT,
  movie_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);

CREATE TABLE Movie (
  movie_id INT PRIMARY KEY,
  title VARCHAR(255),
  release_date DATE
);

CREATE TABLE Theater (
  theater_id INT PRIMARY KEY,
  name VARCHAR(255),
  location VARCHAR(255)
);

CREATE TABLE Showtime (
  showtime_id INT PRIMARY KEY,
  theater_id INT,
  movie_id INT,
  showtime DATE,
  FOREIGN KEY (theater_id) REFERENCES Theater(theater_id),
  FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);


----I don't know what I pressed. It was executing then all my lines turned red and it kept giving me errors.
