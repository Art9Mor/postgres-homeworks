-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE student
(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    birthday DATE NOT NULL,
    phone VARCHAR(20)
);

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE student ADD COLUMN middle_name VARCHAR(30);

-- 3. Удалить колонку middle_name
ALTER TABLE student DROP COLUMN middle_name;

-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE student RENAME COLUMN birthday TO dirth_date;

-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE student ALTER COLUMN phone TYPE VARCHAR(32);

-- 6. Вставить три любых записи с автогенерацией идентификатора
INSERT INTO student (first_name,
                     last_name,
                     dirth_date,
                     phone)
VALUES ('Michael ', 'Myers', '1957-10-19', '73856784563'),
       ('Laurie', 'Strode', '1961-12-11', '73856748965'),
       ('Jason', 'Voorhees', '1946-07-13', '78654563789');

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE student RESTART IDENTITY;
