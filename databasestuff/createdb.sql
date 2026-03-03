DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Class;
DROP TABLE IF EXISTS StudentClass;
DROP TABLE IF EXISTS Teacher;
DROP TABLE IF EXISTS Language;

CREATE TABLE Student (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    last_name TEXT,
    first_name TEXT,
    date_of_birth DATE,
    language_id TEXT
);

CREATE TABLE Class (
    class_id INTEGER PRIMARY KEY AUTOINCREMENT,
    teacher_id INTEGER,
    name TEXT,
    level INTEGER,
    room INTEGER
);

CREATE TABLE StudentClass (
    student_id INTEGER PRIMARY KEY AUTOINCREMENT,
    class_id INTEGER
);

CREATE TABLE Teacher (
    teacher_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE Language (
    language_id TEXT PRIMARY KEY
);

SELECT * FROM Student;

/*
Studentstudent_id ||--{ StudentClassstudent_id
Studentlanguage_id }--|| Languagelanguage_id
StudentClassclass_id }--|| Classclass_id
Classteacher_id }--|| Teacherteacher_id
*/