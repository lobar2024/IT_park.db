-- Masters jadvali
CREATE TABLE IF NOT EXISTS Masters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    subject TEXT NOT NULL
);

-- Mentors jadvali
CREATE TABLE IF NOT EXISTS Mentors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstname TEXT NOT NULL,
    lastname TEXT NOT NULL,
    master_id INTEGER,
    FOREIGN KEY (master_id) REFERENCES Masters(id) ON DELETE CASCADE
);

-- Groups jadvali
CREATE TABLE IF NOT EXISTS Groups (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    mentor_id INTEGER,
    FOREIGN KEY (mentor_id) REFERENCES Mentors(id) ON DELETE CASCADE
);

-- Students jadvali
CREATE TABLE IF NOT EXISTS Students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstname TEXT NOT NULL,
    lastname TEXT NOT NULL,
    grade INTEGER NOT NULL
);

-- StudentGroups jadvali
CREATE TABLE IF NOT EXISTS StudentGroups (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER,
    group_id INTEGER,
    FOREIGN KEY (student_id) REFERENCES Students(id) ON DELETE CASCADE,
    FOREIGN KEY (group_id) REFERENCES Groups(id) ON DELETE CASCADE
);


INSERT INTO Masters 
(subject) 
VALUES
('IT'),
('English');

INSERT INTO Mentors 
(firstname, lastname, master_id) 
VALUES
('Azamat', 'Tojiyev', 1),
('Nodir', 'Odilov', 1),
('Mahliyo', 'Qalandarova', 2),
('Zuhra', 'Yaqubova', 1),
('Odilbek', 'Matyokubov', 2);

INSERT INTO Groups 
(title, mentor_id) 
VALUES
('TQ-IT-0901', 1),
('TQ-EN-0901', 3),
('TQ-IT-0902', 1),
('TQ-IT-1102', 1),
('TQ-IT-1003', 2),
('TQ-EN-0903', 5),
('TQ-IT-0804', 1);

INSERT INTO Students 
(firstname, lastname, grade) 
VALUES
('Bobur', 'Ulugbekov', 9),
('Zamir', 'Abdullayev', 11),
('Lobar', 'Farxodova', 9),
('Ozodbek', 'Sobirov', 10),
('Jamol', 'Babajanov', 8),
('Indira', 'Azadova', 9),
('Ibrohim', 'Qalandarov', 9);

INSERT INTO StudentGroups 
(student_id, group_id) 
VALUES
(1, 1),
(3, 4),
(5, 7),
(1, 2),
(4, 5),
(2, 4),
(7, 6),
(6, 2);
