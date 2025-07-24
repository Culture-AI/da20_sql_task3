-- Task 3
--on your 5 table do each operation below , example must contain text , date and number data
--5 in
--5 between
--5 limit
--5 orderby
--5 check constraint

--Table 1 (Employees)

alter table employees add constraint employee_id_check check(employee_id >= 1 and employee_id <=50);
select * from employees where employee_id in (1,2,3,4,5,6,7);
select * from employees where employee_id between 1 and 9 ;
select * from employees order by employee_id asc;
select * from employees limit 4;


alter table employees alter column hire_date set not null;
select * from employees where hire_date in ('2021-11-05','2019-10-25','2020-09-23');
select * from employees where hire_date Between '2021-01-01' and '2024-12-31';
select * from employees order by hire_date asc;
select * from employees limit 5;

alter table employees add constraint age_check check(age >=21 and age <=50);
select * from employees where age in (36,37,38,20);
select * from employees where age Between 25 and 30;
select * from employees order by age;
select * from employees limit 6;

alter table employees add constraint department_check check (department in ('Software Development','Network Engineering','Database Administration','IT Support','IT Security'));
select * from employees where department in ('Software Development','Network Engineering');
select * from employees  order by department;
select * from employees limit 5;

alter table employees add constraint phone_number_length_check check(length(phone_number)=10);
select * from employees where first_name in ('Henry','Cathy','Eva');
select * from employees where salary between 70000 and 80000;
select * from employees order by phone_number asc;
select * from employees limit 6;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Table2 (institute)

select * from institute;
alter table institute add constraint total_students_check check(total_students >=500 and total_students <=3000);
select * from institute where total_students in(600,800,1600);
select * from institute where total_students between 1000 and 2000;
select * from institute order by total_students desc;
select * from institute limit 9;

select * from institute;
alter table institute add constraint institute_id_check check(institute_id >=1 and institute_id <=50);
select * from institute where institute_id in (5,6,7,8);
select * from institute where institute_id between 8 and 12;
select * from institute order by institute_id;
select * from institute limit 5

select * from institute;
alter table institute add constraint phone_number_length_check check(length(phone_number)=10);
select * from institute where phone_number in ('1234567890','6758490389','7856473902');
select * from institute where establish_year between 1995 and 2000; 
select * from institute order by phone_number;
select * from institute limit 5;

select * from institute;
alter table institute alter column establish_year set not null;
select * from institute where establish_year in ( 1995,1998,2006);
select * from institute where establish_year between 2005 and 2010;
select * from institute order by establish_year;
select * from institute limit 4;

select * from institute;
alter table institute alter column institute_name set not null;
select * from institute where institute_name in ('Green Valley Institute','Bangalore Engineering College','Kolkata Polytechnic');
select * from institute where total_students between 2000 and 3000;
select * from institute order by institute_name;
select * from institute limit 6;

------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Table  (payment)

select * from payment;
alter table payment alter column payment_date set not null;
select * from payment where payment_date in ('2024-06-10','2024-06-15');
select * from payment where payment_date between '2024-06-15' and '2024-09-07';
select * from payment order by payment_date;
select * from payment limit 5;

select * from payment;
alter table payment alter column transaction_id set not null;
select * from payment where transaction_id in ('TXN010','TXN013');
select * from payment where amount between 15.75 and 34.99;
select * from payment order by transaction_id;
select * from payment limit 7;

select * from payment;
alter table payment alter column product_name set not null;
select * from payment where product_name in ('Smartphone Stand','Wireless Earbuds');
select * from payment where amount between 30 and 50;
select * from payment order by product_name;
select * from payment limit 6;

select * from payment;
alter table payment add constraint payment_method_check check(payment_method in ('PayPal','Credit Card','Debit Card','cash'));
select * from payment where amount between 10 and 40 ;
select * from payment order by payment_method;
select * from payment limit 5;

select * from payment;
alter table payment alter column amount set not null;
select * from payment where amount in (15.75,27.49,79.99);
select * from payment where amount between 20 and 30;
select * from payment order by amount;
select * from payment limit 3;


---------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Table 4 (projects)

select * from projects;
alter table projects add constraint project_id_check check(project_id >=1 and project_id <= 50);
select * from projects where project_id in(2,5,9);
select * from projects where project_id between 5 and 10;
select * from projects order by project_id;
select * from projects limit 5;

select * from projects;
alter table projects add constraint budget_check check(budget >=10000 and project_id <= 50000);
select * from projects where budget in(18000,35000,12000);
select * from projects where budget between 35000 and 45000;
select * from projects order by budget;
select * from projects limit 5;

select * from projects;
alter table projects add constraint team_size_check check(team_size >=3 and team_size <= 10);
select * from projects where team_size in(4,6,8);
select * from projects where project_id between 5 and 10;
select * from projects order by team_size;
select * from projects limit 4;

select * from projects;
alter table projects alter project_name set not null;
select * from projects where project_name in('Website Redesign','Social Media Expansion','E-commerce Platform');
select * from projects where start_date between '2024-01-01' and '2025-04-04';
select * from projects order by project_name;
select * from projects limit 3;

select * from projects;
alter table projects alter start_date set not null;
select * from projects where end_date in('2024-12-20','2025-07-15');
select * from projects where end_date between'2024-01-01' and '2025-04-04';
select * from projects order by end_date;
select * from projects limit 2;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Table 5 (students)

select * from students;
alter table students add constraint student_id_check check(student_id >= 1 and student_id <=500);
select * from students where student_id in (5,6,7,8,9);
select * from students where student_id between 5 and 10;
select * from students order by student_id;
select * from students limit 4;


select * from students;
alter table students alter column date_of_birth set not null;
select * from students where date_of_birth in ('2004-03-27','2005-05-30','2004-09-25');
select * from students where percentage between 75 and 90;
select * from students order by date_of_birth;
select * from students limit 5;

select * from students;
alter table students alter column email set not null;
select * from students where email in ('simran.kaur@example.com','ananya.joshi@example.com','amit.sharma@example.com');
select * from students where date_of_birth between '2005-01-01' and '2006-12-31';
select * from students order by percentage;
select * from students limit 2;

select * from students;
alter table students alter column first_name set not null;
select * from students where first_name in ('Arjun','Simran');
select * from students where student_id between 3 and 5;
select * from students order by first_name;
select * from students limit 5;

select * from students;
alter table students alter column last_name set not null;
select * from students where last_name in ('Chopra','Joshi');
select * from students where student_id between 8 and 13;
select * from students order by last_name;
select * from students limit 8;






