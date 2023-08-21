DROP DATABASE IF EXISTS `Testing_System_Assignment_1`;
CREATE DATABASE  `Testing_System_Assignment_1`;
USE `Testing_System_Assignment_1`;

DROP TABLE IF EXISTS `Department`;
CREATE TABLE `Department` (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    Department_name NVARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `Position`;
CREATE TABLE `Position` (
    PositionID INT AUTO_INCREMENT PRIMARY KEY,
    Position_name NVARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account` (
    AccountID INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(255) NOT NULL,
    Username VARCHAR(255) NOT NULL,
    FullName NVARCHAR(255) NOT NULL,
    DepartmentID INT,
    PositionID INT,
    CreateDate DATE default now(),
    FOREIGN KEY (DepartmentID) REFERENCES `Department`(DepartmentID),
    FOREIGN KEY (PositionID) REFERENCES `Position`(PositionID)
);


DROP TABLE IF EXISTS `TypeQuestion`;
CREATE TABLE `TypeQuestion` (
    TypeID INT AUTO_INCREMENT PRIMARY KEY,
    TypeName NVARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `CategoryQuestion`;
CREATE TABLE `CategoryQuestion` (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    Category_name NVARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `Question`;
CREATE TABLE `Question` (
    QuestionID INT AUTO_INCREMENT PRIMARY KEY,
    Content NVARCHAR(255) NOT NULL,
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDate DATE,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
    FOREIGN KEY (TypeID) REFERENCES TypeQuestion(TypeID),
    FOREIGN KEY (CreatorID) REFERENCES Account(AccountID)
);

DROP TABLE IF EXISTS `Answer`;
CREATE TABLE `Answer` (
    AnswerID INT AUTO_INCREMENT PRIMARY KEY,
    Content NVARCHAR(255) NOT NULL,
    QuestionID INT,
    isCorrect BOOLEAN NOT NULL,
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);

DROP TABLE IF EXISTS `Exam`;
CREATE TABLE `Exam` (
    ExamID INT AUTO_INCREMENT PRIMARY KEY,
    Code VARCHAR(255) NOT NULL,
    Title NVARCHAR(255) NOT NULL,
    CategoryID INT,
    Duration INT NOT NULL,
    CreatorID INT,
    CreateDate DATE,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
    FOREIGN KEY (CreatorID) REFERENCES Account(AccountID)
);

DROP TABLE IF EXISTS `ExamQuestion`;
CREATE TABLE `ExamQuestion` (
    ExamID INT,
    QuestionID INT,
    PRIMARY KEY (ExamID, QuestionID)
);

DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group` (
    GroupID INT AUTO_INCREMENT PRIMARY KEY,
    Group_name NVARCHAR(255) NOT NULL,
    CreatorID INT,
    CreateDate DATE default now(),
    FOREIGN KEY (CreatorID) REFERENCES `Account`(AccountID)
);

DROP TABLE IF EXISTS `GroupAccount`;
CREATE TABLE `GroupAccount` (
	GroupAccuntID INT primary key,
    GroupID INT,
    AccountID INT,
    JoinDate DATE default now(),
    FOREIGN KEY (GroupID) REFERENCES `Group`(GroupID),
    FOREIGN KEY (AccountID) REFERENCES `Account`(AccountID)
);




INSERT INTO `Department` (Department_name) VALUES
    ('Sales'),
    ('Marketing'),
    ('Development'),
    ('HR'),
    ('Finance'),
    ('QA'),
    ('Design'),
    ('Support'),
    ('IT'),
    ('Operations');

INSERT INTO `Position` (Position_name) VALUES
    ('Developer'),
    ('Tester'),
    ('Project Manager'),
    ('Scrum Master'),
    ('Business Analyst'),
    ('Designer'),
    ('HR Manager'),
    ('Accountant'),
    ('Support Specialist'),
    ('System Administrator');


INSERT INTO `Account` (Email, Username, FullName, DepartmentID, PositionID, CreateDate) VALUES
    ('user1@example.com', 'user1', 'User One', 3, 1, '2021-08-01'),
    ('user2@example.com', 'user2', 'User Two', 4, 2, '2020-08-01'),
    ('user3@example.com', 'user3', 'User Three', 2, 3, '2021-08-02'),
    ('user4@example.com', 'user4', 'User Four', 1, 4, '2022-08-02'),
    ('user5@example.com', 'user5', 'User Five', 5, 5, '2014-08-03'),
    ('user6@example.com', 'user6', 'User Six', 6, 1, '2017-08-03'),
    ('user7@example.com', 'user7', 'Don Seveo', 3, 2, '2017-08-04'),
    ('user8@example.com', 'user8', 'User Eight', 4, 3, '2000-08-04'),
    ('user9@example.com', 'user9', 'User Nine', 5, 4, '2019-08-05'),
    ('user10@example.com', 'user10', 'User Ten', 2, 5, '2020-08-05');


INSERT INTO `TypeQuestion` (TypeName) VALUES
    ('Essay'),
    ('Multiple-Choice'),
    ('True/False'),
    ('Matching'),
    ('Short Answer'),
    ('Fill in the Blanks'),
    ('Coding'),
    ('Reading Comprehension'),
    ('Diagram'),
    ('Numeric');


INSERT INTO `CategoryQuestion` (Category_name) VALUES
    ('Java'),
    ('.NET'),
    ('SQL'),
    ('Postman'),
    ('Ruby'),
    ('HTML/CSS'),
    ('JavaScript'),
    ('Python'),
    ('Networking'),
    ('Security');


INSERT INTO `Question` (Content, CategoryID, TypeID, CreatorID, CreateDate) VALUES
    ('Câu hỏi đầu tiên là gì?', 1, 1, 1, '2004-08-01'),
    ('What is a loop?', 2, 2, 2, '2004-08-01'),
    ('What is SQL injection?', 3, 3, 3, '2004-08-01'),
    ('How to style with CSS?', 6, 4, 4, '2004-08-01'),
    ('What is a variable?', 8, 5, 5, '2004-08-01'),
    ('Câu hỏi về HTML', 6, 1, 1, '2004-08-02'),
    ('What is Python?', 8, 2, 2, '2004-08-02'),
    ('What is a network protocol?', 9, 3, 3, '2004-08-02'),
    ('Explain HTTPS.', 10, 4, 4, '2004-08-02'),
    ('Write a Java code for a calculator.', 1, 5, 5, '2004-08-02');


INSERT INTO `Answer` (Content, QuestionID, isCorrect) VALUES
    ('Object-Oriented Programming', 1, 1),
    ('A type of knot', 1, 0),
    ('A technique to order pizza', 1, 0),
    ('Cascading Style Sheets', 1, 1),
    ('A fixed value', 2, 0),
    ('HyperText Markup Language', 6, 1),
    ('A high-level programming language', 7, 0),
    ('A communication protocol', 2, 1),
    ('Hypertext Transfer Protocol Secure', 2, 1),
    ('Sum of two numbers', 2, 1);


INSERT INTO `Exam` (Code, Title, CategoryID, Duration, CreatorID, CreateDate) VALUES
    ('E001', 'Java Basics', 1, 60, 1, '2023-08-01'),
    ('E002', '.NET Fundamentals', 2, 45, 2, '2012-08-01'),
    ('E003', 'SQL Mastery', 3, 90, 3, '2023-08-01'),
    ('E004', 'HTML/CSS Challenge', 6, 30, 4, '2022-08-01'),
    ('E005', 'Python Proficiency', 8, 75, 5, '2023-08-01'),
    ('E006', 'Networking Essentials', 9, 60, 1, '2023-08-02'),
    ('E007', 'Security Concepts', 10, 45, 2, '2019-08-02'),
    ('E008', 'JavaScript Knowledge Test', 7, 60, 3, '2022-08-02'),
    ('E009', 'Database Design', 3, 90, 4, '2018-08-02'),
    ('E010', 'Coding Challenge', 1, 120, 5, '2013-08-02');


INSERT INTO `ExamQuestion` (ExamID, QuestionID) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);
    

INSERT INTO `Group` (Group_name, CreatorID, CreateDate) VALUES
    ('Development Team', 1, '2021-08-01'),
    ('QA Team', 2, '2017-08-01'),
    ('Design Team', 3, '2023-08-01'),
    ('Marketing Team', 4, '2005-08-01'),
    ('Support Team', 5, '2022-08-01'),
    ('Sales Team', 6, '2018-08-01'),
    ('Management Team', 1, '2000-08-01'),
    ('HR Team', 2, '2019-08-01'),
    ('IT Team', 3, '2019-08-01'),
    ('Operations Team', 4, '2000-08-01');


INSERT INTO `GroupAccount` (GroupID, AccountID, JoinDate) VALUES
    (1, 1, '2017-08-01'),
    (2, 2, '2023-08-01'),
    (3, 3, '2021-08-01'),
    (4, 4, '2005-08-01'),
    (5, 5, '2023-08-01'),
    (6, 6, '2023-08-01'),
    (7, 7, '2022-08-01'),
    (8, 8, '2018-08-01'),
    (9, 9, '2023-08-01'),
    (10, 10, '2000-08-01');

