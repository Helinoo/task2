CREATE TABLE instructor (
    instructorID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
	personNumber VARCHAR(12) NOT NULL,
	email VARCHAR(50) NOT NULL,
	adress VARCHAR(50) NOT NULL,
	zip VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL
);

CREATE TABLE student (
    studentID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
	personNumber VARCHAR(12) NOT NULL,
	email VARCHAR(50) NOT NULL,
	adress VARCHAR(50) NOT NULL,
	zip VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	studentID_0 INT,
	FOREIGN KEY (studentID_0) REFERENCES student(studentID) ON DELETE SET NULL
);

CREATE TABLE instrument (
    instrumentID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    brand VARCHAR(50),
	instrumentType VARCHAR(50) NOT NULL,
    stock INT NOT NULL,
    locationOfInstrument VARCHAR(100) NOT NULL
);

CREATE TABLE rental (
    rentalID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    studentID INT NOT NULL,
    instrumentID INT NOT NULL,
    dateOfRental DATE NOT NULL,
    dueDateOfRental DATE NOT NULL,
    FOREIGN KEY (studentID) REFERENCES student(studentID),
    FOREIGN KEY (instrumentID) REFERENCES instrument(instrumentID)
);

CREATE TABLE lesson (
    lessonID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    instructorID INT NOT NULL,
    date VARCHAR(50) NOT NULL,
    FOREIGN KEY (instructorID) REFERENCES instructor(instructorID) ON DELETE CASCADE
);

CREATE TABLE instructor_availability (
    instructorID INT NOT NULL,
	startTime VARCHAR(50) NOT NULL,
	endTime VARCHAR(50) NOT NULL,
    FOREIGN KEY (instructorID) REFERENCES instructor(instructorID) ON DELETE CASCADE
);

CREATE TABLE instruments_to_teach (
    instructorID INT NOT NULL,
    instrumentsTaught VARCHAR (100) NOT NULL,
    FOREIGN KEY (instructorID) REFERENCES instructor(instructorID) ON DELETE CASCADE
);

CREATE TABLE student_lesson (
    studentID INT NOT NULL,
    lessonID INT NOT NULL,
    PRIMARY KEY (studentID, lessonID),
    FOREIGN KEY (studentID) REFERENCES student(studentID),
    FOREIGN KEY (lessonID) REFERENCES lesson(lessonID)
);

CREATE TABLE price_list (
    lessonID INT NOT NULL,
    price INT NOT NULL,
	lessonType VARCHAR(20) NOT NULL CHECK (lessonType IN ('group', 'ensemble', 'individual')),
	lessonSkill VARCHAR(20) NOT NULL CHECK (lessonSkill IN ('beginner', 'intermediate', 'advanced')),
    FOREIGN KEY (lessonID) REFERENCES lesson(lessonID)
);

CREATE TABLE ensemble_lesson (
	ensemble_lessonID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    lessonID INT,
    genre VARCHAR(20) NOT NULL CHECK (genre IN ('punk', 'rock', 'classical')),
    minStudents INT NOT NULL,
    maxStudents INT NOT NULL,
    FOREIGN KEY (lessonID) REFERENCES lesson(lessonID)
);

CREATE TABLE group_lesson (
	group_lessonID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    lessonID INT,
    minStudents INT NOT NULL,
    maxStudents INT NOT NULL,
    instrument VARCHAR(50) NOT NULL,
    FOREIGN KEY (lessonID) REFERENCES lesson(lessonID)
);

CREATE TABLE individual_lesson (
	individual_lessonID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    lessonID INT,
    instrument VARCHAR(50) NOT NULL,
    FOREIGN KEY (lessonID) REFERENCES lesson(lessonID)
);

CREATE TABLE contact_person (
	contact_personID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    StudentID INT NOT NULL,
    FOREIGN KEY (studentID) REFERENCES student(studentID) ON DELETE CASCADE
);

CREATE TABLE student_phone (
    phoneNumber VARCHAR(50) NOT NULL,
    studentID INT,
	PRIMARY KEY (phoneNumber, studentID),
    FOREIGN KEY (studentID) REFERENCES student(studentID) ON DELETE CASCADE
);

CREATE TABLE instructor_phone (
    phoneNumber VARCHAR(50) NOT NULL,
    instructorID INT,
	PRIMARY KEY (phoneNumber, instructorID),
    FOREIGN KEY (instructorID) REFERENCES instructor(instructorID) ON DELETE CASCADE
);

CREATE TABLE contact_person_phone (
    phoneNumber VARCHAR(50) NOT NULL,
    contact_personID INT,
	PRIMARY KEY (phoneNumber, contact_personID),
    FOREIGN KEY (contact_personID) REFERENCES contact_person(contact_personID) ON DELETE CASCADE
);
