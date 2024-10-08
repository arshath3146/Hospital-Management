
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    gender VARCHAR(10),
    phone_number VARCHAR(15),
    address VARCHAR(100)
);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialty VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(50)
);


CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    head_of_department VARCHAR(100)
);


CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);


CREATE TABLE Medications (
    medication_id INT PRIMARY KEY,
    patient_id INT,
    medication_name VARCHAR(50),
    dosage VARCHAR(50),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);


INSERT INTO Patients VALUES 
(1, 'John', 'Doe', '1980-01-01', 'Male', '123-456-7890', '123 Elm St'),
(2, 'Jane', 'Smith', '1990-02-02', 'Female', '987-654-3210', '456 Oak St'),
(3, 'Alice', 'Johnson', '1975-03-03', 'Female', '555-555-5555', '789 Maple St'),
(4, 'Bob', 'Brown', '1985-04-04', 'Male', '444-444-4444', '321 Pine St'),
(5, 'Charlie', 'Davis', '1995-05-05', 'Male', '333-333-3333', '654 Birch St'),
(6, 'Emily', 'Wilson', '1982-06-06', 'Female', '222-222-2222', '987 Cedar St'),
(7, 'Frank', 'Miller', '1978-07-07', 'Male', '111-111-1111', '159 Spruce St'),
(8, 'Grace', 'Moore', '1992-08-08', 'Female', '666-666-6666', '753 Fir St'),
(9, 'Henry', 'Taylor', '1968-09-09', 'Male', '777-777-7777', '852 Redwood St'),
(10, 'Ivy', 'Anderson', '1988-10-10', 'Female', '888-888-8888', '951 Palm St');


INSERT INTO Doctors VALUES 
(1, 'Dr. James', 'Smith', 'Cardiology', '123-456-7890', 'dr.james@hospital.com'),
(2, 'Dr. Sarah', 'Lee', 'Neurology', '987-654-3210', 'dr.sarah@hospital.com'),
(3, 'Dr. David', 'Kim', 'Orthopedics', '555-555-5555', 'dr.david@hospital.com'),
(4, 'Dr. Laura', 'Clark', 'Pediatrics', '444-444-4444', 'dr.laura@hospital.com'),
(5, 'Dr. Peter', 'Walker', 'Oncology', '333-333-3333', 'dr.peter@hospital.com'),
(6, 'Dr. Nancy', 'Hill', 'Dermatology', '222-222-2222', 'dr.nancy@hospital.com'),
(7, 'Dr. Robert', 'Scott', 'Gastroenterology', '111-111-1111', 'dr.robert@hospital.com'),
(8, 'Dr. Susan', 'White', 'ENT', '666-666-6666', 'dr.susan@hospital.com'),
(9, 'Dr. Michael', 'Brown', 'Urology', '777-777-7777', 'dr.michael@hospital.com'),
(10, 'Dr. Lisa', 'Adams', 'Gynecology', '888-888-8888', 'dr.lisa@hospital.com');

-- Insert into Departments
INSERT INTO Departments VALUES 
(1, 'Cardiology', 'Dr. James Smith'),
(2, 'Neurology', 'Dr. Sarah Lee'),
(3, 'Orthopedics', 'Dr. David Kim'),
(4, 'Pediatrics', 'Dr. Laura Clark'),
(5, 'Oncology', 'Dr. Peter Walker'),
(6, 'Dermatology', 'Dr. Nancy Hill'),
(7, 'Gastroenterology', 'Dr. Robert Scott'),
(8, 'ENT', 'Dr. Susan White'),
(9, 'Urology', 'Dr. Michael Brown'),
(10, 'Gynecology', 'Dr. Lisa Adams');


INSERT INTO Appointments VALUES 
(1, 1, 1, '2024-08-01', '09:00:00'),
(2, 2, 2, '2024-08-02', '10:00:00'),
(3, 3, 3, '2024-08-03', '11:00:00'),
(4, 4, 4, '2024-08-04', '12:00:00'),
(5, 5, 5, '2024-08-05', '13:00:00'),
(6, 6, 6, '2024-08-06', '14:00:00'),
(7, 7, 7, '2024-08-07', '15:00:00'),
(8, 8, 8, '2024-08-08', '16:00:00'),
(9, 9, 9, '2024-08-09', '17:00:00'),
(10, 10, 10, '2024-08-10', '18:00:00');


INSERT INTO Medications VALUES 
(1, 1, 'Aspirin', '100mg', '2024-08-01', '2024-08-10'),
(2, 2, 'Ibuprofen', '200mg', '2024-08-02', '2024-08-12'),
(3, 3, 'Amoxicillin', '500mg', '2024-08-03', '2024-08-13'),
(4, 4, 'Paracetamol', '500mg', '2024-08-04', '2024-08-14'),
(5, 5, 'Ciprofloxacin', '250mg', '2024-08-05', '2024-08-15'),
(6, 6, 'Metformin', '500mg', '2024-08-06', '2024-08-16'),
(7, 7, 'Lisinopril', '10mg', '2024-08-07', '2024-08-17'),
(8, 8, 'Atorvastatin', '20mg', '2024-08-08', '2024-08-18'),
(9, 9, 'Omeprazole', '40mg', '2024-08-09', '2024-08-19'),
(10, 10, 'Simvastatin', '20mg', '2024-08-10', '2024-08-20');


/*-- Insert a new patient*/
INSERT INTO Patients (patient_id, first_name, last_name, dob, gender, phone_number, address) 
VALUES (11, 'Tom', 'Harris', '1970-12-12', 'Male', '999-999-9999', '1010 Oak St');

-- Update the phone number of a patient
UPDATE Patients 
SET phone_number = '000-000-0000' 
WHERE patient_id = 1;

-- Delete a patient record
DELETE FROM Patients 
WHERE patient_id = 11;

SELECT p.first_name, p.last_name, d.first_name AS doctor_first_name, d.last_name AS doctor_last_name 
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE d.doctor_id = 1;

SELECT a.appointment_id, p.first_name, p.last_name, d.first_name AS doctor_first_name, d.last_name AS doctor_last_name, a.appointment_time
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE a.appointment_date = '2024-08-05';

SELECT m.medication_name, m.dosage, m.start_date, m.end_date 
FROM Medications m
WHERE m.patient_id = 1;

SELECT COUNT(*) AS total_patients FROM Patients;

SELECT d.first_name, d.last_name, COUNT(a.appointment_id) AS total_appointments
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.first_name, d.last_name;


SELECT d.first_name, d.last_name 
FROM Doctors d
JOIN Departments dep ON d.specialty = dep.department_name
WHERE dep.department_name = 'Cardiology';


/*JOINS*/
SELECT a.appointment_id, p.first_name AS patient_first_name, p.last_name AS patient_last_name,
       d.first_name AS doctor_first_name, d.last_name AS doctor_last_name, a.appointment_date, a.appointment_time
FROM Appointments a
INNER JOIN Patients p ON a.patient_id = p.patient_id
INNER JOIN Doctors d ON a.doctor_id = d.doctor_id;

SELECT p.first_name, p.last_name, a.appointment_id, a.appointment_date, a.appointment_time
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id;

SELECT d.first_name, d.last_name, a.appointment_id, a.appointment_date, a.appointment_time
FROM Doctors d
RIGHT JOIN Appointments a ON d.doctor_id = a.doctor_id;

SELECT p.first_name AS patient_first_name, p.last_name AS patient_last_name,
       d.first_name AS doctor_first_name, d.last_name AS doctor_last_name
FROM Patients p
CROSS JOIN Doctors d;


DELIMITER $$

CREATE PROCEDURE GetDoctorAppointments(IN doctorID INT)
BEGIN
    SELECT a.appointment_id, p.first_name AS patient_first_name, p.last_name AS patient_last_name,
           a.appointment_date, a.appointment_time
    FROM Appointments a
    INNER JOIN Patients p ON a.patient_id = p.patient_id
    WHERE a.doctor_id = doctorID;
END $$

DELIMITER ;


CREATE VIEW PatientLastAppointment AS
SELECT p.patient_id, p.first_name, p.last_name, p.dob, p.gender, p.phone_number, p.address,
       MAX(a.appointment_date) AS last_appointment_date
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id
GROUP BY p.patient_id, p.first_name, p.last_name, p.dob, p.gender, p.phone_number, p.address;
SELECT * FROM PatientLastAppointment;

	
CREATE VIEW DoctorSchedule AS
SELECT d.doctor_id, d.first_name AS doctor_first_name, d.last_name AS doctor_last_name, 
       p.first_name AS patient_first_name, p.last_name AS patient_last_name, 
       a.appointment_date, a.appointment_time
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
JOIN Patients p ON a.patient_id = p.patient_id;

CREATE VIEW MedicationsView AS
SELECT m.medication_id, p.first_name AS patient_first_name, p.last_name AS patient_last_name,
       d.first_name AS doctor_first_name, d.last_name AS doctor_last_name,
       m.medication_name, m.dosage, m.start_date, m.end_date
FROM Medications m
JOIN Patients p ON m.patient_id = p.patient_id
JOIN Doctors d ON m.doctor_id = d.doctor_id;
SELECT * FROM MedicationsView;


CREATE VIEW DoctorByDepartment AS
SELECT d.doctor_id, d.first_name, d.last_name, dep.department_name
FROM Doctors d
JOIN Departments dep ON d.department_id = dep.department_id;
SELECT * FROM DoctorByDepartment;

CREATE VIEW UpcomingAppointments AS
SELECT a.appointment_id, p.first_name AS patient_first_name, p.last_name AS patient_last_name,
       d.first_name AS doctor_first_name, d.last_name AS doctor_last_name,
       a.appointment_date, a.appointment_time
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE a.appointment_date >= CURDATE();

