/* Assignment 3 Submission
Date: 25/11/2023
Group Member	Student Number
Tarandeep singh	200514751
Andrew Tsakirakis 200486707
Abdallah Daboul 200474544
Sameer Jakhu 200523749
jay patel  200542184
*/

CREATE DATABASE assignment3;
USE assignment3;

CREATE TABLE `my_contacts` (
  `last_name` varchar(20) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `profession` varchar(20) DEFAULT NULL,
  `postal_code` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `attributes` varchar(100) DEFAULT NULL,
  `friends` varchar(100) DEFAULT NULL
) ENGINE=InnoDB;

INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`postal_code`,`status`,`attributes`,`friends`) VALUES ('Anderson','Juan','juan_anderson@ breakneckpizza.com','F','1981-04-07','Technical Writer','Bracebridge, ON P1L','single','Smart;Dependable;Cheerful','Jamie Hamilton');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`postal_code`,`status`,`attributes`,`friends`) VALUES ('Kenton','Leo','lkenton@starbuzzcoffee.com','M','1974-01-10','Manager','Maple, ON L6A','divorced','Smart;Dependable','John Spatner');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`postal_code`,`status`,`attributes`,`friends`) VALUES ('McGavin','Darrin',' captainlove@headfirsttheater.com','M','1966-01-23','Cruise Ship Captain','Stouffville, ON L4A','single','Knowledgeable','Renee Kroger');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`postal_code`,`status`,`attributes`,`friends`) VALUES ('Franklin','Joe','joe_franklin@leapinlimos.com','M','1977-04-28','Software Sales','Kemptville, ON K0G','married','Knowledgeable;Self sufficient;Empathetic','Joe Franklin');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`postal_code`,`status`,`attributes`,`friends`) VALUES ('Hamilton','Jamie','dontbother@starbuzzcoffee.com','F','1962-07-11','System Administrator','Ottawa, ON K1G','married','Empathetic;Knowledgeable;Honest','Donald Murphy;Darrin McGavin');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`postal_code`,`status`,`attributes`,`friends`) VALUES ('Chevrolet','Maurice','bookman4u@objectville.net','M','1962-07-01','Bookshop Owner','Toronto, ON M4L','married','Dependable;Smart;Self sufficient','Maurice Chevrolet');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`postal_code`,`status`,`attributes`,`friends`) VALUES ('Kroger','Renee','poorrenee@mightygumball.net','F','1976-12-03','Unemployed','Barrie, ON L4M','divorced','Honest','Leo Kenton;Donald Murphy');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`postal_code`,`status`,`attributes`,`friends`) VALUES ('Mendoza','Angelina','angelina@starbuzzcoffee.com','F','1979-08-19','UNIX Sysadmin','Angus, ON L0M','married','Self sufficient;Empathetic;Smart','Donald Murphy');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`postal_code`,`status`,`attributes`,`friends`) VALUES ('Murphy','Donald','padraic@tikibeanlounge.com','M','1967-01-23','Computer Programmer','Shelburne, ON L0N','committed relationsh','Cheerful;Knowledgeable;Honest','Joe Franklin;Donald Murphy');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`postal_code`,`status`,`attributes`,`friends`) VALUES ('Spatner','John','jpoet@objectville.net','M','1963-04-18','Salesman','Whitby, ON L1M','married','Empathetic;Smart','Maurice Chevrolet');

-- Add 10 fictitious users to the my_contacts table
INSERT INTO my_contacts (last_name, first_name, email, gender, birthday, profession, postal_code, status, attributes, friends)
VALUES
    ('Smith', 'John', 'john.smith@example.com', 'M', '1985-02-20', 'Accountant', 'New York, NY 10001', 'single', 'Organized;Reliable;Friendly', 'Sarah Johnson'),
    ('Johnson', 'Emily', 'emily.johnson@example.com', 'F', '1992-08-10', 'Graphic Designer', 'Los Angeles, CA 90001', 'married', 'Creative;Outgoing;Artistic', 'Michael Davis'),
    ('Brown', 'Chris', 'chris.brown@example.com', 'M', '1988-05-15', 'Marketing Manager', 'Chicago, IL 60601', 'single', 'Innovative;Adventurous;Energetic', 'Laura Taylor'),
    ('Davis', 'Sara', 'sara.davis@example.com', 'F', '1990-11-30', 'Software Engineer', 'San Francisco, CA 94105', 'married', 'Analytical;Tech-savvy;Logical', 'Daniel Wilson'),
    ('Miller', 'Brian', 'brian.miller@example.com', 'M', '1983-09-25', 'Teacher', 'Boston, MA 02108', 'divorced', 'Patient;Inspiring;Caring', 'Jessica Brown'),
    ('Wilson', 'Amy', 'amy.wilson@example.com', 'F', '1987-03-18', 'Nurse', 'Seattle, WA 98101', 'single', 'Compassionate;Detail-oriented;Empathetic', 'Mark Anderson'),
    ('Taylor', 'David', 'david.taylor@example.com', 'M', '1995-06-05', 'Graphic Designer', 'Denver, CO 80202', 'single', 'Creative;Friendly;Adaptable', 'Olivia Miller'),
    ('Anderson', 'Laura', 'laura.anderson@example.com', 'F', '1980-12-03', 'Project Manager', 'Austin, TX 73301', 'married', 'Organized;Leadership;Determined', 'John Taylor'),
    ('Jackson', 'Michael', 'michael.jackson@example.com', 'M', '1982-04-22', 'Entrepreneur', 'Miami, FL 33101', 'single', 'Ambitious;Innovative;Charismatic', 'Ashley Smith'),
    ('White', 'Jessica', 'jessica.white@example.com', 'F', '1989-07-12', 'Data Analyst', 'Atlanta, GA 30301', 'married', 'Analytical;Detail-oriented;Problem-solver', 'Alex Wilson');


CREATE TABLE friends (
  friend_id INT AUTO_INCREMENT PRIMARY KEY,
  friend_name VARCHAR(100) DEFAULT NULL
);

CREATE TABLE contact_friends (
  contact_id INT,
  friend_id INT,
  PRIMARY KEY (contact_id, friend_id),
  FOREIGN KEY (contact_id) REFERENCES my_contacts (contact_id),
  FOREIGN KEY (friend_id) REFERENCES friends (friend_id)
);

CREATE TABLE attributes (
  attribute_id INT AUTO_INCREMENT PRIMARY KEY,
  attribute_name VARCHAR(100) DEFAULT NULL
);

CREATE TABLE contact_attributes (
  contact_id INT,
  attribute_id INT,
  PRIMARY KEY (contact_id, attribute_id),
  FOREIGN KEY (contact_id) REFERENCES my_contacts (contact_id),
  FOREIGN KEY (attribute_id) REFERENCES attributes (attribute_id)
);




ALTER TABLE my_contacts
ADD COLUMN contact_id INT AUTO_INCREMENT PRIMARY KEY FIRST;




-- Modify `contact_attributes` table to add foreign key constraint
ALTER TABLE `contact_attributes`
ADD FOREIGN KEY (`attribute_id`) REFERENCES `attributes`(`attribute_id`);

-- Modify `contact_friends` table to add foreign key constraint
ALTER TABLE `contact_friends`
ADD FOREIGN KEY (`friend_id`) REFERENCES `friends`(`friend_id`);

-- Insert data into attributes table
INSERT INTO attributes (attribute_name)
VALUES
  ('Smart'),
  ('Dependable'),
  ('Cheerful'),
  ('Knowledgeable'),
  ('Self sufficient'),
  ('Empathetic'),
  ('Honest'),
  ('Organized'),
  ('Reliable'),
  ('Friendly'),
  ('Creative'),
  ('Outgoing'),
  ('Artistic'),
  ('Innovative'),
  ('Adventurous'),
  ('Energetic'),
  ('Analytical'),
  ('Tech-savvy'),
  ('Logical'),
  ('Patient'),
  ('Inspiring'),
  ('Caring'),
  ('Compassionate'),
  ('Detail-oriented'),
  ('Problem-solver');
  
  INSERT INTO contact_attributes (contact_id, attribute_id)
VALUES
(1, 1),   -- Juan Anderson has the attribute 'Smart'
  (1, 2),   -- Juan Anderson has the attribute 'Dependable'
  (2, 1),   -- Leo Kenton has the attribute 'Smart'
  (2, 2),   -- Leo Kenton has the attribute 'Dependable'
  (3, 4),   -- Darrin McGavin has the attribute 'Knowledgeable'
  (4, 4),   -- Joe Franklin has the attribute 'Knowledgeable'
  (4, 5),   -- Joe Franklin has the attribute 'Self sufficient'
 (5, 7),   -- Jamie Hamilton has the attribute 'Honest'
  (6, 2),   -- Maurice Chevrolet has the attribute 'Dependable'
  (7, 7),   -- Renee Kroger has the attribute 'Honest'
  (8, 5),   -- Donald Murphy has the attribute 'Self sufficient'
  (8, 6),   -- Donald Murphy has the attribute 'Empathetic'
  (9, 7),   -- Angelina Mendoza has the attribute 'Honest'
  (10, 6),  -- John Spatner has the attribute 'Empathetic'
  (10, 1), -- John Spatner has the attribute 'Smart'
  (11 ,1), -- Maurice Chevrolet has the attribute 'smart'
  (12, 13), -- Renee Kroger has the attribute 'Innovative'
  (12, 14), -- Renee Kroger has the attribute 'Adventurous'
  (12, 15), -- Renee Kroger has the attribute 'Energetic'
  (13, 16), -- Joe Franklin has the attribute 'Compassionate'
  (13, 17), -- Joe Franklin has the attribute 'Detail-oriented'
  (14, 15), -- Laura Anderson has the attribute 'Energetic'
  (15, 16), -- David Taylor has the attribute 'Compassionate'
  (15, 17), -- David Taylor has the attribute 'Detail-oriented'
  (16, 1),  -- Michael Jackson has the attribute 'Smart'
  (16, 4),  -- Michael Jackson has the attribute 'Knowledgeable'
  (17, 13), -- Jessica White has the attribute 'Innovative'
  (18, 19), -- John Smith has the attribute 'Determined'
  (18, 20), -- John Smith has the attribute 'Ambitious'
  (19, 13), -- Emily Johnson has the attribute 'Innovative'
  (19, 14), -- Emily Johnson has the attribute 'Adventurous'
  (19, 15), -- Emily Johnson has the attribute 'Energetic'
  (20, 16);-- Chris Brown has the attribute 'Compassionate'
  
  -- Inserting friend data into the friends table

INSERT INTO friends (friend_name)
VALUES
('Renee Kroger'),
('Donald Murphy'),
('John Spatner'),
('Maurice Chevrolet'),
('Joe Franklin'),
('Jamie Hamilton'),
('Leo Kenton'),
('Darrin McGavin'),
('Angelina Mendoza'),
('Juan Anderson'),
('John Smith'),
('Emily Johnson'),
('Chris Brown'),
('Sara Davis'),
('Brian Miller'),
('Amy Wilson'),
('David Taylor'),
('Laura Anderson'),
('Michael Jackson'),
('Jessica White');

  INSERT INTO contact_friends (contact_id, friend_id)
VALUES
(1, 7),
(1,3),
(2,3),
(3,1),
(3,2),
(3,13),
(5,17),
(6,7),
(7,6),
(7,1),
(8,9),
(8,17),
(9,8),
(9,13),
(10,20),
(11,14),
(11,18),
(12,15),
(13,3),
(15,12),
(14,11),
(16,19),
(19,16),
(18,11),
(20,10),
(13,9),
(17,5),
(17,8);

ALTER TABLE my_contacts DROP COLUMN friends;
