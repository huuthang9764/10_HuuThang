DROP DATABASE IF EXISTS `Fresher_management`;
CREATE DATABASE  `Fresher_management`;
USE `Fresher_management`;

DROP TABLE IF EXISTS `Trainee`;
CREATE TABLE `Trainee` (
    TraineeID INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name NVARCHAR(255) NOT NULL,
    Birth_Date DATE NOT NULL,
    Gender ENUM('male', 'female', 'unknown') NOT NULL,
    ET_IQ TINYINT CHECK (ET_IQ BETWEEN 0 AND 20),
    ET_Gmath TINYINT CHECK (ET_Gmath BETWEEN 0 AND 20),
    ET_English TINYINT CHECK (ET_English BETWEEN 0 AND 50),
    Training_Class VARCHAR(50),
    Evaluation_Notes TEXT
);

ALTER TABLE `Trainee` -- CAU LENH ALTER TABLE DUNG DE THUC HIEN THEM XOA THAY DOI CAC COT TRONG BANG
ADD COLUMN VTI_Account VARCHAR(100) NOT NULL UNIQUE;  -- ADD COLUMN DUNG DE THEM 1 COT VAO BANG


-- Quesion 1
INSERT INTO `Trainee`(Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)
VALUES ('Nguyen Huu Thang',DATE'1999-11-11','male','9','13','43','Rocket 38','nocomment','31' ) ,
 ('Vu Minh Hung',DATE'1999-09-30','male','10','6','35','Rocket 38',	'nocomment','32'),
('Nguyen Thi Thu Ha',DATE'2004-10-01',	'female','8','9','10','Rocket 38','nocomment','33'),
('Nguyen Van Thuong',DATE'2003-10-02',	'male',	'12','20','31','Rocket 38','nocomment','34'),
('Vi Xuan Dung',DATE'1999-10-03','male','11','6','13','Rocket 38','nocomment','35'),
('Nguyen Thi Kha Nhi',DATE'2003-10-04','female','10','14','44','Rocket 38','nocomment','36'),
('Pham Vu Hoa',DATE'2000-10-05','male','5','18','30','Rocket 38','nocomment','37'),
('Huynh Phat Huy',DATE'2003-10-06','unknown','10','16','20','Rocket 38','nocomment','38'),
('Duong Ngoc Nguyen',DATE'2001-10-07','unknown','10','12','36','Rocket 38','nocomment','39'),
('Nguyen Anh Minh',DATE'2000-10-08','male','7','6','39','Rocket 38','nocomment','40');

SELECT * FROM fresher.trainee;
-- Quesion 2  DATE_FORMAT() lay nam va thang cua Trainee voi %Y va %m
SELECT
  DATE_FORMAT(Birth_Date, '%Y-%m') AS Birth_Month,
  COUNT(*) AS Passed_Count
FROM
  Trainee
WHERE
    ET_IQ + ET_Gmath >= 20 AND ET_IQ >= 8
        AND ET_Gmath >= 8
        AND ET_English >= 18
GROUP BY
  DATE_FORMAT(Birth_Date, '%Y-%m')
ORDER BY
  DATE_FORMAT(Birth_Date, '%Y-%m');
  
-- Quesion 3 su dung TIMESTAMPDIFF() de tra ve 1 so nguyen giu 2 bieu thuc date hoac datetime
SELECT 
    Full_Name,
    TIMESTAMPDIFF(YEAR,
        Birth_Date,
        CURDATE()) AS Age,
    Birth_Date,
    Gender,
    ET_IQ,
    ET_Gmath,
    ET_English,
    Training_Class,
    Evaluation_Notes,
    VTI_Account
FROM Trainee
ORDER BY LENGTH(Full_Name) DESC LIMIT 1;

-- question 4
SELECT * FROM Trainee
WHERE
    ET_IQ + ET_Gmath >= 20 AND ET_IQ >= 8
        AND ET_Gmath >= 8
        AND ET_English >= 18;

-- question 5
DELETE FROM `trainee` 
WHERE TraineeID = 03;

-- question 6
UPDATE `trainee` 
SET Training_Class = '2'
WHERE TraineeID = 05;
