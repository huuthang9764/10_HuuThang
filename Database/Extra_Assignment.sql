DROP DATABASE IF EXISTS `fresher`;
CREATE DATABASE  `fresher`;
USE `fresher`;

DROP TABLE IF EXISTS `Trainee`;
CREATE TABLE `Trainee` (
    TraineeID INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name VARCHAR(255) NOT NULL,
    Birth_Date DATE NOT NULL,
    Gender ENUM('male', 'female', 'unknown') NOT NULL,
    ET_IQ INT CHECK (ET_IQ BETWEEN 0 AND 20),
    ET_Gmath INT CHECK (ET_Gmath BETWEEN 0 AND 20),
    ET_English INT CHECK (ET_English BETWEEN 0 AND 50),
    Training_Class VARCHAR(50),
    Evaluation_Notes TEXT
);

ALTER TABLE `Trainee` -- CAU LENH ALTER TABLE DUNG DE THUC HIEN THEM XOA THAY DOI CAC COT TRONG BANG
ADD COLUMN VTI_Account VARCHAR(100) NOT NULL UNIQUE;  -- ADD COLUMN DUNG DE THEM 1 COT VAO BANG


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

