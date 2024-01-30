show databases;
use employee;
SELECT * FROM employee_details;
SELECT * FROM studies;
SELECT * FROM software_details;

alter table studies modify column ccost int;
-- 3) Display the names and ages of all the programmers who have undergone training in DCS course.
select studies.studies_name, studies.course,floor(datediff(now(), `dob`)/365) as age
from studies
join employee_details
on studies.studies_name = employee_details.name
where course = 'dcs';
alter table employee_details 

ALTER TABLE employee
MODIFY COLUMN id varchar(10);
-- 4) What is the highest numbers of copies sold by a package?
select max(sold) as max_sold
from software_details;


-- 5) Display the names and date of birth of all the programmer born in JANUARY.
select name,dob from employee_details where month(dob) = 1;

--  6) Display lowest course fee. 
select * from studies where Ccost = (select min(Ccost) from studies);

-- display names of programmer has done PGDCA course.
select * from employee_details
left join studies
on studies.studies_name = employee_details.name
where course = 'PGDCA';

-- 7)how many programmer has done PGDCA course.
select count(studies_name) from studies where course = 'PGDCA';

-- 8) How much revenue has been earned through sales of packages in C.
select *,(scost*sold) as earned_sales from software_details where dev_in = 'c';

-- 9) Display the details of software developed by Ramesh?
select * from software_details where software_name = 'Ramesh';

-- 10)how many programmers studied at SABHARI.
 select count(studies_name) as count_SABHARI from studies where splace = 'SABHARI';
 
 -- 11)Display the details of PACKAGES whose sales crossed the 200000 mark. 
 select *, (sold*scost) as eaned from software_details where (sold*scost) > 200000 ;
 
 -- 12) Find out the number of copies which should be sold in order to recover the development cost of each package.
 select software_name, round(dcost/scost) as soldreturn from software_details;

-- 13) What is the price of the costliest software developed in BASIC?
select max(scost) from software_details where Dev_in like 'basic';

-- 14) Display the details of packages for which development cost has been recovered.
select * from software_details where Dcost < (scost *sold);

alter table software_details
rename column Dcost to developmentCost;

