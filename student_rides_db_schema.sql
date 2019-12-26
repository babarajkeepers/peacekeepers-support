
CREATE TABLE university(
 id SERIAL primary key,
 name varchar(100) NOT NULL UNIQUE,
 zip_code varchar(10) NOT NULL,
 street_name varchar(50) NOT NULL
)

CREATE TABLE users (
 id SERIAL primary key,
 username varchar(50) NOT NULL UNIQUE,
 phonenumber varchar(20) NOT NULL UNIQUE,
 password varchar(50) NOT NULL,
 university_name varchar(100) NOT NULL,
 isrider boolean,
 gender varchar(10) NOT NULL,
 isactive boolean
)

ALTER TABLE users ADD CONSTRAINT univeristy_name_fkey FOREIGN KEY(university_name) 
REFERENCES university(name) ON DELETE CASCADE


Dummy Data
insert into university (name, zip_code, street_name) values('IIT', '66008', '123 Main Street')
insert into university (name, zip_code, street_name) values('UTA', '66213', '3 Olive Street')
insert into university (name, zip_code, street_name) values('MIT', '14524', '678 Ballas Street')

insert into users (username, phonenumber, password, university_name, isdriver, gender, isactive) values('Babatunde', '9743333333', '12345','IIT',false,'MALE', false)
insert into users (username, phonenumber, password, university_name, isdriver, gender, isactive) values('Raj', '12343333333', '12345','UTA',true,'MALE', true)
insert into users (username, phonenumber, password, university_name, isdriver, gender, isactive) values('Keepers', '1623333333', '12345','UTA',true,'FEMALE', false)
insert into users (username, phonenumber, password, university_name, isdriver, gender, isactive) values('Babatunde', '9743333333', '12345','UTA',false,'MALE', false)
