-- Студенты
CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    group_name VARCHAR(50) NOT NULL
);

-- Преподаватели
CREATE TABLE Teachers (
    teacher_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL
);

-- Курсы
CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

-- Аудитории
CREATE TABLE Classrooms (
    classroom_id SERIAL PRIMARY KEY,
    room_number VARCHAR(50) NOT NULL
);

-- Зачисления (связь многие-ко-многим)
CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(student_id) ON DELETE CASCADE,
    course_id INT REFERENCES Courses(course_id) ON DELETE CASCADE,
    teacher_id INT REFERENCES Teachers(teacher_id) ON DELETE CASCADE,
    classroom_id INT REFERENCES Classrooms(classroom_id) ON DELETE CASCADE,
    grade INT CHECK (grade BETWEEN 1 AND 5)
);

-- Студенты
INSERT INTO Students (full_name, group_name) VALUES
('Арман Абылхаир', 'ИС-21'),
('Дамир Сарадинов', 'ИС-21'),
('Нурсултан Ермек', 'ИС-22'),
('Алишер Тлеухан', 'ИС-22'),
('Арыстан Бекжан', 'ИС-23'),
('Али Кайратулы', 'ИС-23'),
('Димаш Кудайберген', 'ИС-24'),
('Айсулу Ержан', 'ИС-24'),
('Азамат Мухаммедов', 'ИС-25'),
('Жансая Оразова', 'ИС-25');

-- Преподаватели
INSERT INTO Teachers (full_name) VALUES
('Айгерим Пак'),
('Руслан Ахметов'),
('Олег Кузембаев'),
('Гульмира Сарсенова'),
('Даурен Полатов'),
('Маржан Турсын'),
('Ержан Гаврилов'),
('Бауыржан Тлеуберген'),
('Алмас Жунусов'),
('Салтанат Сейтова');

-- Курсы
INSERT INTO Courses (course_name) VALUES
('Базы данных'),
('Алгоритмы'),
('Программирование на Java'),
('Компьютерные сети'),
('Операционные системы'),
('Веб-разработка'),
('Информационная безопасность'),
('Искусственный интеллект'),
('Математический анализ'),
('Философия');

-- Аудитории (ГУК и ГМК здания)
INSERT INTO Classrooms (room_number) VALUES
('ГУК-105'),('ГУК-106'),
('ГУК-203'),('ГУК-204'),
('ГМК-301'),('ГМК-302'),
('ГМК-401'),('ГМК-402'),
('ГМК-501'),('ГМК-502');

-- Зачисления
INSERT INTO Enrollments (student_id, course_id, teacher_id, classroom_id, grade) VALUES
(1,1,1,1,5),
(2,2,2,2,4),
(3,3,3,3,5),
(4,4,4,4,3),
(5,5,5,5,4),
(6,6,6,6,5),
(7,7,7,7,2),
(8,8,8,8,4),
(9,9,9,9,5),
(10,10,10,10,3);

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Teachers;
SELECT * FROM Classrooms;
SELECT * FROM Enrollments;

