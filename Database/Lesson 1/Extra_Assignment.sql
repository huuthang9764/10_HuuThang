DROP DATABASE IF EXISTS `Fresher_management`;
CREATE DATABASE  `Fresher_management`;
USE `Fresher_management`;

DROP TABLE IF EXISTS `Trainee`;
CREATE TABLE `Trainee` (
    TraineeID INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name NVARCHAR(255) NOT NULL, -- NVARCHAR thay vi VARCHAR
    Birth_Date DATE NOT NULL,
    Gender ENUM('male', 'female', 'unknown') NOT NULL,
    ET_IQ TINYINT CHECK (ET_IQ BETWEEN 0 AND 20), -- TINYINT thay vi INT
    ET_Gmath TINYINT CHECK (ET_Gmath BETWEEN 0 AND 20), -- TINYINT thay vi INT
    ET_English TINYINT CHECK (ET_English BETWEEN 0 AND 50), -- TINYINT thay vi INT
    Training_Class VARCHAR(50),
    Evaluation_Notes TEXT
);

ALTER TABLE `Trainee` -- CAU LENH ALTER TABLE DUNG DE THUC HIEN THEM XOA THAY DOI CAC COT TRONG BANG
ADD COLUMN VTI_Account VARCHAR(100) NOT NULL UNIQUE;  -- ADD COLUMN DUNG DE THEM 1 COT VAO BANG


INSERT INTO `Trainee`(TraineeID,Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)
VALUES ('01','Nguyen Huu Thang',DATE'2008-11-11','male','9','13','43','38','nocomment','31' ) ,
 ('02','Vu Minh Hung',DATE'2022-09-30','male','10','6','35','38',	'nocomment','32'),
('03','Nguyen Thi Thu Ha',DATE'2022-10-01',	'female','8','9','10','38','nocomment','33'),
('04','Nguyen Van Thuong',DATE'2022-10-02',	'male',	'12','20','31','38','nocomment','34'),
('05','Vi Xuan DUng',DATE'2022-10-03','male','11','6','13','38','nocomment','35'),
('06','Nguyen Thi Kha Nhi',DATE'2022-10-04',	'female','10','14','44','38','nocomment','36'),
('07','Pham Vu Hoa',DATE'2022-10-05','male','5','18','30','38','nocomment','37'),
('08','Huynh Phat Huy',DATE'2022-10-06','unknown','10','6','20','38','nocomment','38'),
('09','Duong Ngoc Nguyen',DATE'2022-10-07','unknown','2','6','36','38','nocomment','39'),
('10','Nguyen Anh Minh',DATE'2022-10-08','male','7','6','39','38','nocomment','40'),


--INSERT INTO `Trainee`(Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)
-- ('John Doe', '1995-03-10', 'male', 15, 18, 40, 'Class A', 'Good performance', 'john.doe@example.com'),
-- ('Jane Smith', '1998-09-25', 'female', 17, 16, 48, 'Class B', 'Exceeds expectations', 'jane.smith@example.com'),
-- ('Michael Johnson', '1997-07-03', 'male', 14, 19, 42, 'Class A', 'Solid effort', 'michael.johnson@example.com'),
-- ('Emily Brown', '1996-11-12', 'female', 16, 17, 46, 'Class C', 'Improvement needed', 'emily.brown@example.com'),
-- ('David Lee', '1999-02-18', 'male', 18, 15, 45, 'Class B', 'Impressive skills', 'david.lee@example.com'),
-- ('Sophia Williams', '2000-04-30', 'female', 15, 18, 50, 'Class A', 'Great potential', 'sophia.williams@example.com'),
-- ('Jacob Martinez', '1997-08-05', 'male', 12, 20, 38, 'Class C', 'Needs extra attention', 'jacob.martinez@example.com'),
-- ('Olivia Johnson', '1998-01-22', 'female', 19, 14, 49, 'Class B', 'Outstanding performer', 'olivia.johnson@example.com'),
-- ('William Davis', '1996-12-08', 'male', 13, 16, 41, 'Class A', 'Showing improvement', 'william.davis@example.com'),
-- ('Emma Smith', '2001-06-17', 'female', 15, 17, 44, 'Class C', 'Working hard', 'emma.smith@example.com');

update `trainee`
set Evaluation_Notes=" "
where TraineeID= 01;


-- Exercise 2 : Data Types
DROP TABLE IF EXISTS `Datatype1`;
CREATE TABLE `Datatype1` (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Code VARCHAR(5) NOT NULL,
    ModifiedDate DATETIME NOT NULL
);

-- Exercise 3 : Data Types
DROP TABLE IF EXISTS  `Datatype2`;
CREATE TABLE `Datatype2` (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    BirthDate DATE,
    Gender INT CHECK (Gender IN (0 , 1)),
    IsDeletedFlag INT CHECK (IsDeletedFlag IN (0 , 1))
);


