USE `Testing_System_Assignment_1`;

-- Question 2:
SELECT Department_name FROM Department;

-- Question 3:
SELECT DepartmentID FROM department
WHERE Department_name = 'Sales';

-- Question 4:
SELECT * FROM account
ORDER BY LENGTH(FullName) DESC LIMIT 1;

-- Question 5:
SELECT * FROM account
WHERE DepartmentID = "3"
ORDER BY length(FullName) DESC LIMIT 1;

-- Question 6:
SELECT Group_name FROM `Group`
WHERE CreateDate < "2019-12-21";

-- Question 7:
SELECT QuestionID
FROM Answer
GROUP BY QuestionID
HAVING COUNT(*) >= 4;

-- Question 8:
SELECT ExamID FROM exam
WHERE Duration >= "60" AND CreateDate < "2019-12-21";

-- Question 9:
SELECT Group_name, CreateDate
FROM `Group`
ORDER BY CreateDate DESC
LIMIT 5;

-- Question 10:
SELECT COUNT(*) AS EmployeeCount
FROM Account
WHERE DepartmentID = 2;

-- Question 11:
SELECT * FROM account
WHERE FullName LIKE 'D%o';

-- Question 12:
-- select * from exam;

-- DELETE FROM Exam
-- WHERE ExamID IN (
--     SELECT ExamID
--     FROM Exam
--     WHERE CreateDate < '2019-12-20'
-- );

-- Question 13:
DELETE FROM question
WHERE Content LIKE 'Câu hỏi%';

-- Question 14:
UPDATE `account`
SET FullName = "Nguyễn Bá Lộc", Email = "loc.nguyenba@vti.com.vn"
WHERE AccountID= 5;

-- Question 15:










