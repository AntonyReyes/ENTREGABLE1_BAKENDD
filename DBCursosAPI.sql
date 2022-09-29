CREATE TABLE "Users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL,
  "birthay" date,
  "id_course" uuid NOT NULL,
  "id_rol" uuid NOT NULL
);

CREATE TABLE "Courses_users" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid NOT NULL,
  "course_id" uuid NOT NULL,
  "completed" integer
);

CREATE TABLE "Courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL,
  "id_categories" uuid NOT NULL
);

CREATE TABLE "Course_video" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "id_course" uuid NOT NULL
);

CREATE TABLE "Categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "Roles" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "Users" ADD FOREIGN KEY ("id_rol") REFERENCES "Roles" ("id");

ALTER TABLE "Courses" ADD FOREIGN KEY ("id_categories") REFERENCES "Categories" ("id");

ALTER TABLE "Course_video" ADD FOREIGN KEY ("id_course") REFERENCES "Courses" ("id");

ALTER TABLE "Courses_users" ADD FOREIGN KEY ("course_id") REFERENCES "Courses" ("id");

ALTER TABLE "Courses_users" ADD FOREIGN KEY ("user_id") REFERENCES "Users" ("id");



select * from "Users" u ;
select * from "Course_video" cv ;
select * from "Courses" c ;
select * from "Courses_users" cu ;
select * from "Roles" r ;
select * from "Categories" c2  ;


insert into "Users" 
	(id,name,email,password,age,birthay,id_course,id_rol)
	values
	(
		'602a3d71-6c5f-46c7-939c-263b84b0b3d8',
		'Antony',
		'areyesf20_2@unc.edu.pe',
		'12345',
		21,
		'2000-06-13',
		'9f263f8c-6715-4cd5-be60-36b2871b4dae',
		'9aaac186-7ba3-46d2-86fb-84232c1ed11d'
	);

----
insert into "Users" 
	(id,name,email,password,age,birthay,id_course,id_rol)
	values
	(
		'a2a5370f-ab7d-4515-92b0-36e2fba54ad0',
		'Brayan Villanueva',
		'brayan_v2@unc.edu.pe',
		'qwert',
		19,
		'2003-12-03',
		'b4f2b338-67f0-4ad9-87f4-ec8154b768ef',
		'a32fa5e0-1628-40fc-b57b-cadf82044cc5'
	);

insert into "Users" 
	(id,name,email,password,age,birthay,id_course,id_rol)
	values
	(
		'30bc7ac2-e2f2-43b4-9ab0-a80d86e4fda5',
		'Benjamin flores',
		'Benjamin@academlo.com',
		'asdfg',
		27,
		'1995-11-07',
		'94d9cd1f-9082-463f-9f82-3e901b02d605',
		'f189b178-e98c-48cd-b71b-aaceec5b93e8'
	);



insert into "Courses" values
	(
		'9f263f8c-6715-4cd5-be60-36b2871b4dae',
		'Bakend',
		'Curso de bakend desde cero',
		'principiantes',
		'Sahid Kick',
		'bb97f165-5fe5-4344-be7b-7553889367e3'
	);


insert into "Courses" values
	(
		'94d9cd1f-9082-463f-9f82-3e901b02d605',
		'React',
		'Curso de programación web',
		'medio',
		'Benjamin Flores',
		'dae76942-debc-4de3-a640-256a36ba31c4'
	);

	

insert into "Categories" values
	(
		'bb97f165-5fe5-4344-be7b-7553889367e3',
		'tecnología'
	);

insert into "Categories" values
	(
		'dae76942-debc-4de3-a640-256a36ba31c4',
		'programación'
	);

insert into "Categories" values
	(
		'6543094f-4818-4ca4-9698-aee0ea4d4da8',
		'diseño'
	);

insert into "Categories" values
	(
		'034cd7a9-07de-4173-99f7-77491c894466',
		'Habilidades blandas'
	);
insert into "Categories" values
	(
		'9f81ad40-073e-4c7c-9b2c-1f23104093fd',
		'node.js'
	);

insert into "Categories" values
	(
		'41b55f3f-f091-4aac-8cbb-55a1f39ab82a',
		'bakend'
	);


insert into "Roles" 
	values(
		'9aaac186-7ba3-46d2-86fb-84232c1ed11d',
		'student'
	);

insert into "Roles" 
	values(
		'a32fa5e0-1628-40fc-b57b-cadf82044cc5',
		'student'
	);

insert into "Roles" 
	values(
		'f189b178-e98c-48cd-b71b-aaceec5b93e8',
		'teacher'
	);

insert into "Roles" 
	values(
		'047d3ba4-4848-47b2-b7ff-697ca4054786',
		'admin'
	);

insert into "Course_video" values 
	(	
		'79af9650-bd9a-49c3-8002-703ead7fa148',
		'clase semana 1',
		'https://grabacion79af9650-bd9a-49c3-8002-703ead7fa148',
		'9f263f8c-6715-4cd5-be60-36b2871b4dae'
	);

insert into "Course_video" values 
	(	
		'e611ebe5-0d2c-4d4e-a51b-6affdaec8d57',
		'Clase semana 2',
		'https://grabacione611ebe5-0d2c-4d4e-a51b-6affdaec8d57',
		'94d9cd1f-9082-463f-9f82-3e901b02d605'
	);

select * from "Course_video" 

insert into "Courses_users" values
	(
		'a16f0ffe-ede9-424d-8256-490e9c9ebbc9',
		'602a3d71-6c5f-46c7-939c-263b84b0b3d8',
		'9f263f8c-6715-4cd5-be60-36b2871b4dae',
		50
	);

insert into "Courses_users" values
	(
		'8d3f524d-ec99-45b7-b305-8625715e9877',
		'a2a5370f-ab7d-4515-92b0-36e2fba54ad0',
		'94d9cd1f-9082-463f-9f82-3e901b02d605',
		90
	);



create view vew_datos_DBCursosAPI as 
select r.name as name_rol, u.id_rol ,
u.id as id_users,U.name as user_name ,u.password as user_password, u.age as user_age, u.birthay as user_birthay, u.id_course,
cu.completed as course_completed,
c.title as course_title, c.description as course_description, c.level as course_level, c.teacher as course_teacher,
cv.id as id_course_video, cv.title as course_video_title, cv.url as course_url,
ct.id as id_categories, ct.name as categories_name
from "Roles" r 
full join "Users" u 
on r.id = u.id_rol 
full join "Courses_users" cu 
on u.id = cu.user_id 
full join "Courses" c 
on c.id = cu.course_id
full join "Course_video" cv 
on c.id = cv.id_course 
full join "Categories" ct 
on ct.id = c.id_categories ;




create view vew_DBCursosAPI as 
select r.name as name_rol, u.id_rol ,
u.id as id_users,u.name as user_name , u.password as user_password, u.age as user_age, u.birthay as user_birthay, u.id_course,
cu.completed as course_completed,
c.title as course_title, c.description as course_description, c.level as course_level, c.teacher as course_teacher,
cv.id as id_course_video, cv.title as course_video_title, cv.url as course_url,
ct.id as id_categories, ct.name as categories_name
from "Roles" r 
inner join "Users" u 
on r.id = u.id_rol 
inner join "Courses_users" cu 
on u.id = cu.user_id 
inner join "Courses" c 
on c.id = cu.course_id
inner join "Course_video" cv 
on c.id = cv.id_course 
inner join "Categories" ct 
on ct.id = c.id_categories ;

select* from vew_datos_dbcursosapi;

select* from vew_dbcursosapi;



