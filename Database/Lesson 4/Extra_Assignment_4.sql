USE fresher;
DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
    Department_Number INT PRIMARY KEY,
    Department_Name VARCHAR(255)
);


DROP TABLE IF EXISTS Employee_Table;
CREATE TABLE Employee_Table (
    Employee_Number INT PRIMARY KEY,
    Employee_Name VARCHAR(255),
    Department_Number INT,
    FOREIGN KEY (Department_Number) REFERENCES Department(Department_Number)
);

DROP TABLE IF EXISTS Employee_Skill_Table;
CREATE TABLE Employee_Skill_Table (
    Employee_Number INT,
    Skill_Code VARCHAR(50),
    Date_Registered DATE,
    PRIMARY KEY (Employee_Number, Skill_Code),
    FOREIGN KEY (Employee_Number) REFERENCES Employee_Table(Employee_Number)
);
INSERT INTO Department (Department_Number, Department_Name)
VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Finance'),
    (4, 'Marketing'),
    (5, 'Operations'),
    (6, 'Sales'),
    (7, 'Research'),
    (8, 'Customer Service'),
    (9, 'Production'),
    (10, 'Administration');
INSERT INTO Employee_Table (Employee_Number, Employee_Name, Department_Number)
VALUES
    (101, 'John Smith', 1),
    (102, 'Emily Johnson', 2),
    (103, 'Michael Williams', 3),
    (104, 'Jessica Davis', 1),
    (105, 'David Jones', 4),
    (106, 'Jennifer Brown', 2),
    (107, 'Daniel Martinez', 5),
    (108, 'Linda Anderson', 3),
    (109, 'Christopher Taylor', 6),
    (110, 'Sarah Martinez', 4);
INSERT INTO Employee_Skill_Table (Employee_Number, Skill_Code, Date_Registered)
VALUES
    (101, 'Java', '2010-01-15'),
    (101, 'C++', '2023-02-20'),
    (103, 'JavaScript', '2010-03-10'),
    (104, 'Python', '2023-01-30'),
    (105, 'Golang', '2022-04-05'),
    (101, 'PHP', '2019-02-25'),
    (107, 'Kotlin', '2016-05-12'),
    (103, 'Java', '2019-03-20'),
    (109, 'JavaScript', '2015-06-08'),
    (110, 'C#', '2009-04-10');

-- Question 3:
SELECT E.Employee_Name AS NAME 
FROM employee_table E
JOIN employee_skill_table ES ON E.Employee_Number = ES.Employee_Number
WHERE ES.Skill_Code = "Java";


