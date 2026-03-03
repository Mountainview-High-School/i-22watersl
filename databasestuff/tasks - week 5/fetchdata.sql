SELECT * FROM Student ORDER BY date_of_birth;

SELECT * FROM Student WHERE first_name = 'Gene';

SELECT * FROM Student WHERE last_name LIKE '%y';

SELECT * FROM Class WHERE NOT room_id = 44;

SELECT * FROM Class WHERE room_id > 44;

SELECT * FROM Class WHERE room_id = 43 OR room_id = 44;

SELECT * FROM Teacher;

SELECT Teacher.teacher_id, Teacher.teacher_name 
FROM Class 
INNER JOIN Teacher ON Class.teacher_id = Teacher.teacher_id 
WHERE Class.class_id = 43 OR Class.class_id = 44;

-- SELECT * FROM

-- SELECT * FROM

-- SELECT * FROM