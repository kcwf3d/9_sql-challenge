-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE `Salaries` (
    `emp_no` varchar(30)  NOT NULL ,
    `salary` int  NOT NULL ,
    PRIMARY KEY (
        `emp_no`
    )
);

CREATE TABLE `Titles` (
    `emp_title` varchar(30)  NOT NULL ,
    `title` varchar(30)  NOT NULL ,
    PRIMARY KEY (
        `emp_title`
    )
);

CREATE TABLE `Employee` (
    `emp_no` varchar(30)  NOT NULL ,
    `emp_title` varchar(30)  NOT NULL ,
    `birth_date` date  NOT NULL ,
    `first_name` varchar(30)  NOT NULL ,
    `last_name` varchar(30)  NOT NULL ,
    `sex` varchar(2)  NOT NULL ,
    `hire_date` date  NOT NULL ,
    PRIMARY KEY (
        `emp_no`
    )
);

CREATE TABLE `Dept_Man` (
    `emp_no` varchar(30)  NOT NULL ,
    `dept_no` varchar(30)  NOT NULL ,
    PRIMARY KEY (
        `emp_no`
    )
);

CREATE TABLE `Dept_Emp` (
    `emp_no` varchar(30)  NOT NULL ,
    `dept_no` varchar(30)  NOT NULL ,
    PRIMARY KEY (
        `emp_no`
    )
);

CREATE TABLE `Departments` (
    `dept_no` varchar(30)  NOT NULL ,
    `dept_name` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `dept_no`
    )
);

ALTER TABLE `Salaries` ADD CONSTRAINT `fk_Salaries_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Employee` (`emp_no`);

ALTER TABLE `Employee` ADD CONSTRAINT `fk_Employee_emp_title` FOREIGN KEY(`emp_title`)
REFERENCES `Titles` (`emp_title`);

ALTER TABLE `Dept_Man` ADD CONSTRAINT `fk_Dept_Man_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Employee` (`emp_no`);

ALTER TABLE `Dept_Man` ADD CONSTRAINT `fk_Dept_Man_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `Departments` (`dept_name`);

ALTER TABLE `Dept_Emp` ADD CONSTRAINT `fk_Dept_Emp_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Employee` (`emp_no`);

ALTER TABLE `Dept_Emp` ADD CONSTRAINT `fk_Dept_Emp_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `Departments` (`dept_no`);

