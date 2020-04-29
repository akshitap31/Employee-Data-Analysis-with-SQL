-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE title (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
    PRIMARY KEY (
        title_id
     )
);

CREATE TABLE employees (
    Employee_ID INT   NOT NULL,
    Emp_Title VARCHAR   NOT NULL,
    Birth_Date Date   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date Date   NOT NULL,
    PRIMARY KEY (
        Employee_ID
     )
);

CREATE TABLE departments (
    Dept_ID VARCHAR   NOT NULL,
    Dept_name VARCHAR   NOT NULL,
    PRIMARY KEY (
        Dept_ID
     )
);

CREATE TABLE Salary (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE dept_Employee (
    Emp_ID INT   NOT NULL,
    Dept_ID VARCHAR   NOT NULL,
    PRIMARY KEY (
        Emp_ID,Dept_ID
     )
);

CREATE TABLE Dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL
);

ALTER TABLE employees ADD CONSTRAINT fk_employees_Emp_Title FOREIGN KEY(Emp_Title)
REFERENCES title (title_id);

ALTER TABLE Salary ADD CONSTRAINT fk_Salary_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (Employee_ID);

ALTER TABLE dept_Employee ADD CONSTRAINT fk_dept_Employee_Emp_ID FOREIGN KEY(Emp_ID)
REFERENCES employees (Employee_ID);

ALTER TABLE dept_Employee ADD CONSTRAINT fk_dept_Employee_Dept_ID FOREIGN KEY(Dept_ID)
REFERENCES departments (Dept_ID);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (Dept_ID);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (Employee_ID);

