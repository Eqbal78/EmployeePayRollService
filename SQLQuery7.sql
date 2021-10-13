create database payroll_service
use payroll_service

create table employee_payroll
(
 id int identity(1,1) primary key,
 name varchar(100) not null,
 salary int not null,
 start_date date not null
);

insert into employee_payroll values
('Bill',100000.0,'2018-01-03'),
('Terisa',200000.0,'2019-11-13'),
('Charlie',300000.0,'2021-05-21')

select * from employee_payroll

select salary from employee_payroll where name = 'Bill'

select * from employee_payroll
where start_date between cast('2019-11-13' As date) and GETDATE()

ALTER TABLE employee_payroll
ADD Gender char(2)

update employee_payroll set Gender = 'M' where name = 'Bill' or name = 'Charlie';
update employee_payroll set Gender = 'F' where name = 'Terisa';

select sum(salary) from employee_payroll where Gender='M' group by Gender;
select sum(salary) from employee_payroll  group by Gender;
select sum(salary) as 'totalSalary',Gender from employee_payroll group by Gender;
select avg(salary) as 'averageSalary',Gender from employee_payroll group by Gender;
select min(salary) as 'minimumSalary',Gender from employee_payroll group by Gender;
select max(salary) as 'maximumSalary',Gender from employee_payroll group by Gender;
select count(Gender) as 'male' from employee_payroll where Gender='M' 
select count(Gender) as 'female' from employee_payroll where Gender='F'

alter table employee_payroll add 
phone varchar(13),
department varchar(100) not null default 'B.E',
address varchar(250) not null default 'Banglore'
select * from employee_payroll