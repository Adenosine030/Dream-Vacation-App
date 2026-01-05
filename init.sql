USE dreamvacations;

CREATE TABLE IF NOT EXISTS destinations (
  id INT AUTO_INCREMENT PRIMARY KEY,
  country VARCHAR(255),
  capital VARCHAR(255),
  population BIGINT,
  region VARCHAR(255)
);
