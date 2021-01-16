

CREATE TABLE departments (
    dept_no INT  PRIMARY KEY NOT NULL ,
    dept_name VARCHAR  NOT NULL 
);
____________________________________
CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL ,
    emp_title_id INT  NOT NULL ,
    birth_date DATE  NOT NULL ,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    sex VARCHAR  NOT NULL ,
    hire_date DATE  NOT NULL 
);
____________________________________

CREATE TABLE dept_emp (
    emp_no INT  NOT NULL ,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no INT  NOT NULL, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
____________________________________

CREATE TABLE dept_manager (
    dept_no INT  NOT NULL ,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    emp_no INT  NOT NULL, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
____________________________________
CREATE TABLE salary (
    emp_no INT  NOT NULL ,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary INT  NOT NULL,
	PRIMARY KEY (emp_no)
);
____________________________________
CREATE TABLE title (
    title_id VARCHAR  NOT NULL ,
    title VARCHAR  NOT NULL 
)

ALTER TABLE [dept_emp] WITH CHECK ADD CONSTRAINT [FK_dept_emp_emp_no] FOREIGN KEY([emp_no])
REFERENCES [employees] ([emp_no])

ALTER TABLE [dept_emp] CHECK CONSTRAINT [FK_dept_emp_emp_no]

ALTER TABLE [dept_emp] WITH CHECK ADD CONSTRAINT [FK_dept_emp_dept_no] FOREIGN KEY([dept_no])
REFERENCES [departments] ([dept_no])

ALTER TABLE [dept_emp] CHECK CONSTRAINT [FK_dept_emp_dept_no]

ALTER TABLE [dept_manager] WITH CHECK ADD CONSTRAINT [FK_dept_manager_dept_no] FOREIGN KEY([dept_no])
REFERENCES [departments] ([dept_no])

ALTER TABLE [dept_manager] CHECK CONSTRAINT [FK_dept_manager_dept_no]

ALTER TABLE [dept_manager] WITH CHECK ADD CONSTRAINT [FK_dept_manager_emp_no] FOREIGN KEY([emp_no])
REFERENCES [employees] ([emp_no])

ALTER TABLE [dept_manager] CHECK CONSTRAINT [FK_dept_manager_emp_no]

ALTER TABLE [employees] WITH CHECK ADD CONSTRAINT [FK_employees_emp_title_id] FOREIGN KEY([emp_title_id])
REFERENCES [title] ([title_id])

ALTER TABLE [employees] CHECK CONSTRAINT [FK_employees_emp_title_id]

ALTER TABLE [salary] WITH CHECK ADD CONSTRAINT [FK_salary_emp_no] FOREIGN KEY([emp_no])
REFERENCES [employees] ([emp_no])

ALTER TABLE [salary] CHECK CONSTRAINT [FK_salary_emp_no]

