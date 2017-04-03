--1.1 Выбрать первые два значения из таблицы cinema, поля name
SELECT TOP 2 name FROM cinema;


--2.1 Выбрать из таблицы film значения полей id_film, у которых поле name равно NULL
SELECT id_film FROM film WHERE name IS NULL;

--2.2 Выбрать из таблицы film значения поля author, не равные NULL
SELECT author FROM film WHERE name IS NOT NULL;

--2.3 Выбрать из таблицы film поле id_film, значение которого от 2 до 4
SELECT id_film FROM film WHERE id_film BETWEEN 2 AND 4;

--2.4 Выбрать из таблицы film_distribution значения, у которых id равен 1, 2 или 3
SELECT * FROM film_distribution WHERE id IN (1, 2, 3);

--2.5 Выбрать поле distributor из таблицы film_distribution, где id_film равен 1
SELECT distributor FROM film_distribution WHERE id_film = 1;

--2.6 Выбрать поле name из таблицы film, где автором является кто угодно, кроме Путина
SELECT name FROM film WHERE author <> "Путин";


--3.1 Выбрать значения из таблицы film_award и отсортировать по айдишнику фильма в порядке возрастания
SELECT * FROM film_award ORDER BY  id_film ASC;

--3.2 То же самое, что в 3.1, но в порядке убывания
SELECT * FROM film_award ORDER BY  id_film DESC;

--3.3 Выбрать айди актёра из таблицы actor_in_film и отсортировать в порядке убывания по полям id_actor и id_film
SELECT id_actor FROM actor_in_film ORDER BY id_actor DESC, id_film DESC;

--3.4 Выбрать айдишник и имя награды из таблицы award, отсортировать по id_award в порядке убывания
SELECT id_award, name FROM award ORDER BY 1 DESC;


--4.1 Выбрать из таблицы cinema минимальное время работы кинотеатра
SELECT MIN(work_time) FROM cinema;

--4.2 Выбрать из таблицы actor имя актёра, наибольшее по лексикографическому порядку
SELECT MAX(name) FROM actor;

--4.3 Выбрать среднюю зарплату из таблицы актёров
SELECT AVG(salary) FROM actor;

--4.4 Выбрать значение суммы всех зарплат из таблицы актёров
SELECT SUM(salary) FROM actor;


--5.1 Выбрать все уникальные значения имён дистрибьютеров из таблицы film_distribution
SELECT DISTINCT(distributor) FROM film_distribution;

--5.2 Подсчитать кол-во полей с уникальными значениями(access не поддерживает человеческий вариант COUNT(DISTINCT))
SELECT COUNT(*) FROM (SELECT DISTINCT (distributor) FROM film_distribution);


--6.1 Выбрать из таблицы actor имя и общий заработок актёра и сгруппировать всё по имени
SELECT name, SUM(salary) FROM actor GROUP BY name;

--6.2 Выбрать из таблицы film название фильма и его общий бюджет, при условии что бюджет <= 20кк, сгруппировать по названию фильма
SELECT name, SUM(budget) FROM film WHERE budget <= 20000000 GROUP BY name;

--6.3 Выбрать из таблицы актёров поля имя и общий доход актёра, при условии что общий доход актёра больше миллиона
SELECT name, SUM(salary) FROM actor  GROUP BY name HAVING SUM(salary) > 1000000;