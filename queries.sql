CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    major_id INT,
    gpa NUMERIC(2, 1),
    FOREIGN KEY(major_id) REFERENCES majors(major_id)
);

CREATE TABLE majors(
    major_id SERIAL PRIMARY KEY,
    major VARCHAR(50) NOT NULL
);

CREATE TABLE courses(
    course_id SERIAL PRIMARY KEY,
    course VARCHAR(100) NOT NULL
);

CREATE TABLE majors_courses(
    major_id INT,
    FOREIGN KEY(major_id) REFERENCES majors(major_id),
    course_id INT,
    FOREIGN KEY(course_id) REFERENCES courses(course_id),
    PRIMARY KEY(major_id, course_id)
);

-- Tables are now created. Run the script insert_data.sh to insert data.