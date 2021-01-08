CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  user_email VARCHAR  UNIQUE not null,
  user_encrypted_password VARCHAR not null,
  user_Fname VARCHAR,
  user_Lname VARCHAR,
  user_username VARCHAR  UNIQUE not null
);

CREATE TABLE language (
  language_id SERIAL PRIMARY KEY,
  language_name VARCHAR UNIQUE not null
);

-- CREATE TABLE country (
--   country_id SERIAL PRIMARY KEY,
--   country_name VARCHAR UNIQUE not null,
--   country_code VARCHAR UNIQUE not null
-- );


CREATE TABLE user_languages (
  user_language_id SERIAL PRIMARY KEY,
  user_id SERIAL not null,
  language_id SERIAL not null,
  CONSTRAINT userFK FOREIGN KEY (user_id)
  REFERENCES users (user_id),
  CONSTRAINT languageFK FOREIGN KEY (language_id)
  REFERENCES language (language_id)
);

CREATE TABLE duo_facts (
  fact_id SERIAL PRIMARY KEY,
  fact_details TEXT not null,
  language_id SERIAL not null,
  CONSTRAINT languageFK FOREIGN KEY (language_id)
  REFERENCES language (language_id)
);

