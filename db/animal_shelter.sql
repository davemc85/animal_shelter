DROP TABLE animals;
DROP TABLE owners;


CREATE TABLE owners(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  location VARCHAR,
  has_children BOOLEAN,
  has_outside_space BOOLEAN,
  likes_exercise BOOLEAN
);


CREATE TABLE animals(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  admission_date VARCHAR,
  type VARCHAR,
  breed VARCHAR,
  age INT,
  status VARCHAR,
  child_friendly BOOLEAN,
  needs_outside_space BOOLEAN,
  needs_exercise BOOLEAN,
  profile_pic VARCHAR,
  owner_id INT REFERENCES owners(id) 
);
