-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/owLFGY
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

-- ***** Object:  Table [dbo].[titles]    Script Date: 1/28/2020 7:47:10 PM *****
CREATE TABLE [dbo].[titles] (
    [emp_no] int  NOT NULL ,
    [title] nvarchar(50)  NOT NULL ,
    [from_date] datetime2(7)  NOT NULL ,
    [to_date] datetime2(7)  NOT NULL 
)

CREATE TABLE [dbo].[salaries] (
    [emp_no] int  NOT NULL ,
    [salary] int  NOT NULL ,
    [from_date] datetime2(7)  NOT NULL ,
    [to_date] datetime2(7)  NOT NULL 
)

CREATE TABLE [dbo].[dept_manager] (
    [dept_no] nvarchar(50)  NOT NULL ,
    [emp_no] int  NOT NULL ,
    [from_date] datetime2(7)  NOT NULL ,
    [to_date] datetime2(7)  NOT NULL 
)

CREATE TABLE [dbo].[employees] (
    [emp_no] int  NOT NULL ,
    [birth_date] datetime2(7)  NOT NULL ,
    [first_name] nvarchar(50)  NOT NULL ,
    [last_name] nvarchar(50)  NOT NULL ,
    [gender] nvarchar(50)  NOT NULL ,
    [hire_date] datetime2(7)  NOT NULL 
)

CREATE TABLE [dbo].[dept_emp] (
    [emp_no] int  NOT NULL ,
    [dept_no] nvarchar(50)  NOT NULL ,
    [from_date] datetime2(7)  NOT NULL ,
    [to_date] datetime2(7)  NOT NULL 
)

CREATE TABLE [dbo].[departments] (
    [dept_no] nvarchar(50)  NOT NULL ,
    [dept_name] datetime2(7)  NOT NULL 
)

ALTER TABLE [dbo].[titles] WITH CHECK ADD CONSTRAINT [FK_titles_emp_no] FOREIGN KEY([emp_no])
REFERENCES [dbo].[employees] ([emp_no])

ALTER TABLE [dbo].[titles] CHECK CONSTRAINT [FK_titles_emp_no]

ALTER TABLE [dbo].[salaries] WITH CHECK ADD CONSTRAINT [FK_salaries_emp_no] FOREIGN KEY([emp_no])
REFERENCES [dbo].[employees] ([emp_no])

ALTER TABLE [dbo].[salaries] CHECK CONSTRAINT [FK_salaries_emp_no]

ALTER TABLE [dbo].[dept_manager] WITH CHECK ADD CONSTRAINT [FK_dept_manager_dept_no] FOREIGN KEY([dept_no])
REFERENCES [dbo].[departments] ([dept_no])

ALTER TABLE [dbo].[dept_manager] CHECK CONSTRAINT [FK_dept_manager_dept_no]

ALTER TABLE [dbo].[employees] WITH CHECK ADD CONSTRAINT [FK_employees_emp_no] FOREIGN KEY([emp_no])
REFERENCES [dbo].[dept_manager] ([emp_no])

ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_employees_emp_no]

ALTER TABLE [dbo].[dept_emp] WITH CHECK ADD CONSTRAINT [FK_dept_emp_emp_no] FOREIGN KEY([emp_no])
REFERENCES [dbo].[employees] ([emp_no])

ALTER TABLE [dbo].[dept_emp] CHECK CONSTRAINT [FK_dept_emp_emp_no]

ALTER TABLE [dbo].[dept_emp] WITH CHECK ADD CONSTRAINT [FK_dept_emp_dept_no] FOREIGN KEY([dept_no])
REFERENCES [dbo].[departments] ([dept_no])

ALTER TABLE [dbo].[dept_emp] CHECK CONSTRAINT [FK_dept_emp_dept_no]

COMMIT TRANSACTION QUICKDBD