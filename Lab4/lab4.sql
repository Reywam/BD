-- 1.1
INSERT INTO hardware
VALUES (666, "Video card", "10GB", "AMD");
--1.2
INSERT INTO hardware ( name, characteristic, creator )
VALUES ("Hard drive", "1TB", "IBM");
--1.3
INSERT INTO computer ( description )
SELECT (description)
FROM complectation;
--2.1
DELETE *
FROM software;
--2.2
DELETE *
FROM user_in_computer
WHERE id_user ='1';
--2.3
TRUNCATE TABLE software_in_computer;
--3.1
UPDATE hardware SET user = "anonymus";
--3.2
UPDATE [user] SET login = "naruto"
WHERE login = "nikita";
--3.3
UPDATE software_in_computer SET id_software = 42, id_computer = 24 WHERE id_software = 1;
--4.1
SELECT login, password
FROM [user];
--4.2
SELECT *
FROM [user];
--4.3
SELECT * FROM user WHERE login = "megapohor";

