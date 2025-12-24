--  Q1
CREATE TABLE departments (
 department_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


--  Q2
 ALTER TABLE people ADD department_id INT AFTER email ;

-- Q3
INSERT INTO departments (name) VALUES('営業');
INSERT INTO departments (name) VALUES('開発');
INSERT INTO departments (name) VALUES('経理');
INSERT INTO departments (name) VALUES('人事');
INSERT INTO departments (name) VALUES('情報システム');
INSERT INTO people (name) VALUES ('おむすび太郎');
INSERT INTO people (name) VALUES ('ハムのすけ')
INSERT INTO people (name) VALUES ('みそしる山脈');
INSERT INTO people (name) VALUES ('発酵オムライス');
INSERT INTO people (name) VALUES ('指輪さん');


-- Q4
update people set department_id = '1' where person_id = 12;
 update people set department_id = '2' where person_id = 13;
 update people set department_id = '5' where person_id = 14;
 update people set department_id = '4' where person_id = 15;
 update people set department_id = '2' where person_id = 16;
 update people set department_id = '1' where person_id = 17;
 update people set department_id = '3' where person_id = 18;
 update people set department_id = '4' where person_id = 19;
 update people set department_id = '1' where person_id = 20;

-- q5
select name,age 
from people 
where gender = 1 
order by age desc;


-- q６
-- peopleテーブルからdepartment_idが１のレコードの名前、年齢、メールのカラムを作成順に並べています。

-- q７
select name,age,gender
from people
where age BETWEEN 40 AND 49 AND gender = 1
or
age between 20 AND 29 AND gender = 2;

-- q8
select age
from people
where department_id = 1
order by age ASC;

-- q9
select avg(age)
from people
where department_id = 2 and gender = 2;

-- q10

SELECT people.name, departments.name, reports.content
FROM people 
INNER JOIN reports ON people.person_id = reports.person_id
INNER JOIN departments ON people.department_id = departments.department_id;

-- Q11
select people.name
from people
LEFT JOIN reports on people.person_id = reports.person_ida
where reports.person_id is null;