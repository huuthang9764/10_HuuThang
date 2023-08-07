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
('10','Nguyen Anh Minh',DATE'2022-10-08','male','7','6','39','38','nocomment','40');

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
20:52:05	INSERT INTO Trainee(Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account) VALUES ('Nguyễn Hữu Thắng',DATE'2008-11-11','male','9','13','43','38','nocomment','10' ) ,  ('Vũ Minh Hưng',DATE'2022-09-30','male','10','6','35','38', 'nocomment','11'), ('Nguyễn Thị Thu Hà',DATE'2022-10-01', 'female','8','9','10','38','nocomment','12'), ('Nguyễn Văn Thưởng',DATE'2022-10-02', 'male', '12','20','31','38','nocomment','13'), ('Vi Xuân Dũng',DATE'2022-10-03','male','11','6','13','38','nocomment','14'), ('Nguyễn Thị Khả Nhi',DATE'2022-10-04', 'female','10','14','44','38','nocomment','15'), ('Phạm Vũ Hòa',DATE'2022-10-05','male','5','18','30','38','nocomment','16'), ('Thái Tín Khang',DATE'2022-10-06','male','10','6','20','38','nocomment','17'), ('Huỳnh Nhật Khang',DATE'2022-10-07','male','2','6','36','38','nocomment','18'), ('Nguyễn Anh Minh',DATE'2022-10-08','male','7','6','39','38','nocomment','19')	Error Code: 1062. Duplicate entry '10' for key 'VTI_Account'	0.000 sec
20:56:56	INSERT INTO `Trainee`(Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account) VALUES ('Nguyễn Hữu Thắng',DATE'2008-11-11','male','9','13','43','38','nocomment','21' ) ,  ('Vũ Minh Hưng',DATE'2022-09-30','male','10','6','35','38', 'nocomment','22'), ('Nguyễn Thị Thu Hà',DATE'2022-10-01', 'female','8','9','10','38','nocomment','23'), ('Nguyễn Văn Thưởng',DATE'2022-10-02', 'male', '12','20','31','38','nocomment','24'), ('Vi Xuân Dũng',DATE'2022-10-03','male','11','6','13','38','nocomment','25'), ('Nguyễn Thị Khả Nhi',DATE'2022-10-04', 'female','10','14','44','38','nocomment','26'), ('Phạm Vũ Hòa',DATE'2022-10-05','male','5','18','30','38','nocomment','27'), ('Thái Tín Khang',DATE'2022-10-06','male','10','6','20','38','nocomment','28'), ('Huỳnh Nhật Khang',DATE'2022-10-07','male','2','6','36','38','nocomment','29'), ('Nguyễn Anh Minh',DATE'2022-10-08','male','7','6','39','38','nocomment','30')	Error Code: 1062. Duplicate entry '21' for key 'VTI_Account'	0.000 sec

Error Code: 1062. Duplicate entry '21' for key 'VTI_Account'	0.000 sec

