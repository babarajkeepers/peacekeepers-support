CREATE TABLE users (
 id UUID,
 username varchar(50) NOT NULL,
 phonenumber varchar(20) NOT NULL,
 password varchar(50) NOT NULL,
 university_name varchar(100) NOT NULL,
 isrider boolean,
 gender varchar(10) NOT NULL,
 isactive boolean
);

ALTER TABLE ONLY users ADD CONSTRAINT user_pkey PRIMARY KEY(id, username)

ALTER TABLE ONLY user ADD CONSTRAINT user_phone_unique UNIQUE(phonenumber)

CREATE TABLE authorities (
username varchar(50) NOT NULL,
authority varchar(50) NOT NULL
);

ALTER TABLE authorities ADD CONSTRAINT authorities_pkey PRIMARY KEY(username)

ALTER TABLE authorities ADD CONSTRAINT username_fkey FOREIGN KEY(username) REFERENCES users(username) ON DELETE CASCADE

ALTER TABLE authorities ADD CONSTRAINT authorities_unique UNIQUE(username, authority)

CREATE TABLE university(
 id UUID,
 name varchar(100) NOT NULL,
 zip_code varchar(10) NOT NULL,
 street_name varchar(50) NOT NULL
)

ALTER TABLE university ADD CONSTRAINT university_pkey PRIMARY KEY(id, name)

ALTER TABLE university ADD CONSTRAINT univeristy_name_fkey FOREIGN KEY(name) REFERENCES users(university_name) ON DELETE CASCADE
