--Вывести все строки из тоблицы
SELECT  *  from people;
--2 Обноыить элщктроную почту конкретного человука (Нопример человека c id =1
update  people set email = 'test@gmail.com' where id =1;
--3 ДОбавить новую запись в тоблицу
insert into  people(id ,first_name,last_name,email,gender,age,language)
values (51 ,'Elaman','Abjalov','elaman@gmail.com','MALE',16,'Kyrgyz');
--4 Удалить человекв из тоблицы (Нопример человека с id =10)
delete  from people where id = 10;
--5 Посчитать обшее количество людей
select  count(*) as total_people from people;
--6 РОсчитать средней возрасть всех людей ;
select avg(age) as avg_age from people;
--7 Нойти максимальную возрасть среди всех людей
select  max (age) as max_age from people;
--8 Cумма возрастов всех людей
select sum (age) as sum_age from people;
--9 Получить самого молодого человека людей
SELECT  min (age) as min_age from people;
--10 Сгруппировать людей по полу и росчитать средей возрасть для каждого пола
select  people.gender ,round(avg (age )) from people group by gender;
-- 11 вывести имя в год рождение людей которые говорят на арглиском языке
select first_name,age from people where language= 'English';
-- 12  Посчитать сколько человек говоряших на казахскомж
select  count(*) from people where language = 'Kazah';
-- 13 ВЫвести фомилии почту и айди всех женшин
select id, last_name,email from people where gender= 'Female';
-- 14 вывести имя и фомилия вместе переименовав  как full_name concat_as )
-- пол и год рождения всех мужчин родившихся после 2000 года
select  concat (first_name, last_name,) as full_name,gender,age  from people where gender = 'Male' and age <24;
--15 Посчитать сколько всего имен из тоблицы ночинают на букву А
select   count (id) from people where first_name ilike 'A%';
-- 16 Отсартируйте все почты в алфавитом порядке
select * from  people order by  email desc ;
--17 Вывести 20 зщписей пропустите первые 5 зописи
select  * from people offset 5 limit 20;
--18 Посчитать количество людей для каждого языка
select  language, count (*) from people group by language ;
-- 19 Нойти средней возрасть для каждого языка где количество людей больше 2
select  language , avg(age)  as count from people group by language  having   count (*) >2;
-- 20 ВЫвести количество записей где почта зоканчивается на .com
select count (*) from people where email like '%com' ;
--21 Нойти самых распастраненых язык среди женшин
select language, count (language ) as count_language from people where gender = 'Female' group by  language order by count_language desc limit 1;
--22 Обновить язык для людей чей возраст между 14 и 21 годами на 'French'
update people set language = 'French' where age between  14 and  21;
--23 Отаброзити всех мужчин говоряших на Tamil ,Kazah , Nepali b Russian
select * from people where gender = 'MAle ' and language in ('Tamil ','Kazah','Russian');
--24 Сгруппируйте всех по язык по языку по котором они говорят
select  language from people group by  language;
---25 Отоброзити записи фомили которых содержат только 7 символов и отсортируйте их по айди
select * from people where length(last_name) = 7 order by id ;
--26 Отобразите все записи кроме говорящих на French языке
select  * from people where language not in ('French');
--27 Отобразите 5 самых молодых людей у которых почта заканчивается .com
select * from people where email like  '%.com 'ORDER BY  age asc limit 5;
--28 Отобразите только те записи из таблицы которым есть 18 и которых   почта заканчивается на .com или .uk
select from  people where age >18 and (email like '%.com' or email like '%uk');
--29. Отобразите все записи, кроме родившихся с 1993 по 2000 года
select  * from people where age<24 or age >31;
--30 . Отобразите уникальные языки
select  language, count (*) from people group by language having  count(*)= 1;
--31 Отобразите записи где в имени или в фамилии есть буква ‘a’ и год рождение с 1969 по 2005 год
select * from people where (first_name like '%a%' or last_name like '%a%') and  age between 19 and 55;
--32  Отобразите айди, имя, почту и возврст каждого человека и отсортируйте по возврасту в убывающем порядке
select id, first_name,email,age from people order by age desc;
--33Удалить людей младще 3 лет
delete  from people where age<23
