-- Insert data into `instructor`
INSERT INTO instructor (firstName, lastName, personNumber, email, adress, zip, city)
VALUES 
('John', 'Smith', '123456789012', 'john.smith@example.com', '123 Elm St', '12345', 'Springfield'),
('Jane', 'Doe', '987654321098', 'jane.doe@example.com', '456 Oak St', '54321', 'Shelbyville'),
('Emily', 'Johnson', '112233445566', 'emily.johnson@example.com', '789 Maple Ave', '67890', 'Hilltown'),
('Michael', 'Brown', '667788990011', 'michael.brown@example.com', '101 Pine St', '98765', 'Rivertown');

-- Insert data into `student`
INSERT INTO student (firstName, lastName, personNumber, email, adress, zip, city, studentID_0)
VALUES 
('Alice', 'Smith', '223344556677', 'alice.smith@example.com', '111 Birch Ln', '11111', 'Metropolis', NULL),
('Bob', 'Williams', '334455667788', 'bob.williams@example.com', '222 Cedar Rd', '22222', 'Gotham', 1),
('Charlie', 'Brown', '445566778899', 'charlie.brown@example.com', '333 Fir St', '33333', 'Hilltown', 1),
('Daisy', 'Miller', '556677889900', 'daisy.miller@example.com', '444 Spruce Ave', '44444', 'Springfield', NULL);

-- Insert data into `instrument`
INSERT INTO instrument (brand, instrumentType, stock, locationOfInstrument)
VALUES 
('Yamaha', 'Piano', 5, 'Room A'),
('Fender', 'Guitar', 10, 'Storage 1'),
('Roland', 'Drums', 3, 'Room B'),
('Stradivarius', 'Violin', 2, 'Storage 2'),
('Casio', 'Keyboard', 8, 'Room C');

-- Insert data into `rental`
INSERT INTO rental (studentID, instrumentID, dateOfRental, dueDateOfRental, rentalFee)
VALUES 
(1, 1, '2024-01-01', '2024-02-01', '50'),
(2, 2, '2024-01-05', '2024-03-05', '75'),
(3, 3, '2024-01-10', '2024-02-10', '60'),
(4, 4, '2024-01-15', '2024-02-15', '100');

-- Insert data into `lesson`
INSERT INTO lesson (instructorID, date)
VALUES 
(1, '2024-01-15 10:00 AM'),
(2, '2024-01-16 02:00 PM'),
(3, '2024-01-17 09:00 AM'),
(4, '2024-01-18 01:00 PM');

-- Insert data into `instructor_availability`
INSERT INTO instructor_availability (instructorID, startTime, endTime)
VALUES 
(1, '08:00 AM', '12:00 PM'),
(2, '01:00 PM', '05:00 PM'),
(3, '09:00 AM', '03:00 PM'),
(4, '10:00 AM', '02:00 PM');

-- Insert data into `instruments_to_teach`
INSERT INTO instruments_to_teach (instructorID, instrumentsTaught)
VALUES 
(1, 'Piano'),
(2, 'Guitar'),
(3, 'Drums'),
(4, 'Violin, Keyboard');

-- Insert data into `price_list`
INSERT INTO price_list (lessonID, price, lessonType, lessonSkill, siblingDiscount)
VALUES 
(1, 100, 'individual', 'beginner', TRUE),
(2, 150, 'group', 'intermediate', TRUE),
(3, 200, 'ensemble', 'advanced', FALSE),
(4, 120, 'group', 'beginner', FALSE);

-- Insert data into `student_lesson`
INSERT INTO student_lesson (studentID, lessonID, priceID)
VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

-- Insert data into `ensemble_lesson`
INSERT INTO ensemble_lesson (lessonID, genre, minStudents, maxStudents)
VALUES 
(3, 'rock', 5, 10),
(4, 'classical', 3, 8);

-- Insert data into `group_lesson`
INSERT INTO group_lesson (lessonID, minStudents, maxStudents, instrument)
VALUES 
(1, 3, 10, 'Guitar'),
(2, 5, 15, 'Piano');

-- Insert data into `individual_lesson`
INSERT INTO individual_lesson (lessonID, instrument)
VALUES 
(1, 'Violin'),
(2, 'Keyboard');

-- Insert data into `contact_person`
INSERT INTO contact_person (firstName, lastName, studentID)
VALUES 
('Mary', 'Smith', 1),
('James', 'Williams', 2),
('Linda', 'Brown', 3),
('Sarah', 'Miller', 4);

-- Insert data into `student_phone`
INSERT INTO student_phone (phoneNumber, studentID)
VALUES 
('123-456-7890', 1),
('234-567-8901', 2),
('345-678-9012', 3),
('456-789-0123', 4);

-- Insert data into `instructor_phone`
INSERT INTO instructor_phone (phoneNumber, instructorID)
VALUES 
('111-222-3333', 1),
('222-333-4444', 2),
('333-444-5555', 3),
('444-555-6666', 4);

-- Insert data into `contact_person_phone`
INSERT INTO contact_person_phone (phoneNumber, contact_personID)
VALUES 
('555-123-4567', 1),
('555-456-7890', 2),
('555-789-0123', 3),
('555-012-3456', 4);
