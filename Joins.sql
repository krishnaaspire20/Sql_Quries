select * from student;
INSERT INTO Student (student_id, student_name, age, gender, major, GPA) VALUES
(21, 'narayanan', 20, 'Male', 'Computer Science', 3.75);
INSERT INTO Student (student_id) VALUES(22);
INSERT INTO Department (department_id, department_name, student_id) VALUES
(4, 'maths', 22);
INSERT INTO Department (department_id, student_id) VALUES
(5, 22);

-- left join 
 select * from student
left join department on student.student_id = department.student_id;

-- right join
 select * from student
right join department on student.student_id = department.student_id;

-- full join 
select student.student_id,department.department_name from student
full join department on student.student_id = department.student_id;

SELECT * FROM student
FULL JOIN department ON student.student_id = department.student_id;

-- cross join 
SELECT * FROM student
CROSS JOIN department; 

alter table student
add column campus_id int;
INSERT INTO student (campus_id)value(
case 
	when student_id = 1 then 1
    when student_id = 2 then 2
end);

-- self join 
SELECT campus_id,student_id FROM student t1
INNER JOIN student t2 ON t1.student_id = t2.campus_id;

