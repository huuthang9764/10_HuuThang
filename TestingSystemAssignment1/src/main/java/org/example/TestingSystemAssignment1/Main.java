package org.example.TestingSystemAssignment1;

import java.util.Date;

public class Main {
    public static void main(String[] args) {
        Department department1 = new Department();
        department1.departmentID = 1;
        department1.departmentName = "Engineering";

        Department department2 = new Department();
        department2.departmentID = 2;
        department2.departmentName = "Marketing";

        Department department3 = new Department();
        department3.departmentID = 3;
        department3.departmentName = "Sales";

        Position position1 = new Position();
        position1.positionID = 1;
        position1.positionName = "Dev";

        Position position2 = new Position();
        position2.positionID = 2;
        position2.positionName = "Test";

        Position position3 = new Position();
        position3.positionID = 3;
        position3.positionName = "PM";

        Account account1 = new Account();
        account1.accountID = 1;
        account1.email = "john@example.com";
        account1.username = "john_doe";
        account1.fullName = "John Doe";
        account1.department = department1;
        account1.position = position1;
        account1.createDate = new Date();

        Account account2 = new Account();
        account2.accountID = 2;
        account2.email = "jane@example.com";
        account2.username = "jane_smith";
        account2.fullName = "Jane Smith";
        account2.department = department2;
        account2.position = position2;
        account2.createDate = new Date();

        Account account3 = new Account();
        account3.accountID = 3;
        account3.email = "bob@example.com";
        account3.username = "bob_johnson";
        account3.fullName = "Bob Johnson";
        account3.department = department3;
        account3.position = position3;
        account3.createDate = new Date();

        // In ra thông tin của các đối tượng
        System.out.println("Department 1: ID=" + department1.departmentID + ", Name=" + department1.departmentName);
        System.out.println("Department 2: ID=" + department2.departmentID + ", Name=" + department2.departmentName);
        System.out.println("Department 3: ID=" + department3.departmentID + ", Name=" + department3.departmentName);

        System.out.println("Position 1: ID=" + position1.positionID + ", Name=" + position1.positionName);
        System.out.println("Position 2: ID=" + position2.positionID + ", Name=" + position2.positionName);
        System.out.println("Position 3: ID=" + position3.positionID + ", Name=" + position3.positionName);

        System.out.println("Account 1: ID=" + account1.accountID + ", Email=" + account1.email + ", Username=" + account1.username + ", FullName=" + account1.fullName + ", CreateDate=" + account1.createDate);
        System.out.println("Account 2: ID=" + account2.accountID + ", Email=" + account2.email + ", Username=" + account2.username + ", FullName=" + account2.fullName + ", CreateDate=" + account2.createDate);
        System.out.println("Account 3: ID=" + account3.accountID + ", Email=" + account3.email + ", Username=" + account3.username + ", FullName=" + account3.fullName + ", CreateDate=" + account3.createDate);
    }
}

