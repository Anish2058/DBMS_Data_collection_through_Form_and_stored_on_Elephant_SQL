CREATE DATABASE db_College;

CREATE TABLE tbl__Students(
	Roll_number INT NOT NULL,
	Name VARCHAR(255),
	Address VARCHAR(255),
	Age INT,
	PRIMARY KEY(Roll_number)
	);

CREATE TABLE tbl__Subjects(
	SUB_CODE VARCHAR(255),
	SUB_NAME VARCHAR(255),
	PRIMARY KEY(SUB_CODE)
	);

CREATE TABLE tbl__Marks(
	Roll_number INT,
	SUB_CODE VARCHAR(255),
	FOREIGN KEY(Roll_number) REFERENCES tbl__Students(Roll_number),
	FOREIGN KEY(SUB_CODE) REFERENCES tbl__Subjects(SUB_CODE)
	);
ALTER TABLE tbl__Marks
	ADD  Mark int;

INSERT INTO tbl__Students 
	VALUES(1,'AADARSHA','KATHMANDU',21),(2,'AAYUSH','NUWAKOT',19),(3,'ABHINAV','CHITWAN',21),(4,'ANAND','KATHMANDU',20),(5,'ANISH','MORANG',21),(6,'ARNAB','KATHMANDU',22),(7,'ASHIM','PALPA',21),
			(8,'BAL','CHITWAN',23),(9,'BIKASH','NUWAKOT',22),(10,'BIPLOV','KATHMANDU',21),(11,'BISHAL','DHANGADHI',22),(12,'BISHAL','KATHMANDU',23),(13,'BISHAL','JHAPA',21),(14,'CHANDAN','SARLAHI',21),
			(15,'CHANDRA','SAPTARI',20);

INSERT INTO tbl__Subjects
	VALUES('CN','COMPUTER NETWORK'),('DB','DATABASE MANAGEMENT'),('FD','FILTER DESIGN'),('OS','OPERATING SYSTEM'),('EE','ENGINEERING ECONOMICS'),('COA','COMPUTER ORGANIZATION AND ARCHITECTURE');

INSERT INTO tbl__Marks
	VALUES(1,'CN',45),(1,'DB',54),(1,'FD',59),(1,'OS',47),(1,'EE',52),(1,'COA',56),(2,'CN',54),(2,'DB',57),(2,'FD',66),(2,'OS',37),(2,'EE',62),(2,'COA',58),
		(3,'CN',51),(3,'DB',47),(3,'FD',69),(3,'OS',39),(3,'EE',66),(3,'COA',66),(4,'CN',45),(4,'DB',64),(4,'FD',48),(4,'OS',49),(4,'EE',59),(4,'COA',67),
		(5,'CN',67),(5,'DB',64),(5,'FD',72),(5,'OS',62),(5,'EE',64),(5,'COA',76),(6,'CN',44),(6,'DB',62),(6,'FD',38),(6,'OS',37),(6,'EE',32),(6,'COA',46),(7,'CN',61),(7,'DB',66),(7,'FD',43),(7,'OS',47),(7,'EE',42),(7,'COA',38),
		(8,'CN',41),(8,'DB',33),(8,'FD',35),(8,'OS',49),(8,'EE',36),(8,'COA',56),(9,'CN',65),(9,'DB',64),(9,'FD',58),(9,'OS',32),(9,'EE',37),(9,'COA',41),
		(10,'CN',43),(10,'DB',34),(10,'FD',32),(10,'OS',36),(10,'EE',63),(10,'COA',68),(11,'CN',54),(11,'DB',41),(11,'FD',32),(11,'OS',34),(11,'EE',42),(11,'COA',36),(12,'CN',43),(12,'DB',36),(12,'FD',38),(12,'OS',33),(12,'EE',43),(12,'COA',59),
		(13,'CN',41),(13,'DB',47),(13,'FD',69),(13,'OS',45),(13,'EE',46),(13,'COA',66),(14,'CN',44),(14,'DB',54),(14,'FD',48),(14,'OS',46),(14,'EE',59),(14,'COA',64),
		(15,'CN',46),(15,'DB',44),(15,'FD',62),(15,'OS',52),(15,'EE',57),(15,'COA',71);



SELECT * FROM tbl__Students;
SELECT * FROM tbl__Subjects;
SELECT * FROM tbl__Marks;

SELECT MAX(Age)
FROM tbl__Students;

SELECT Name, Age 
FROM tbl__Students
WHERE Age = (SELECT MAX(Age) FROM tbl__Students);

SELECT Name AS nam
FROM tbl__Students;

SELECT * FROM tbl__Students 
WHERE age BETWEEN 21 AND 24;

SELECT * FROM tbl__Students
WHERE Name='BISHAL'; 

SELECT * FROM tbl__Students
WHERE Address LIKE  '%du';

SELECT * FROM tbl__Students
WHERE Address LIKE  'M%';

UPDATE tbl__Students
SET Name ='MANISH'
WHERE Name='BAL';

