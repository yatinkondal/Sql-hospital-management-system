create database pgi_hospital;
use pgi_hospital;
set sql_safe_updates=0;

 INSERT INTO patients VALUES
(
'P101', 'Chris Johnson', 54, 'Male', '2024-08-20'
);
---------------
UPDATE appointments
SET
appointment_date = '2024-09-15'
WHERE
appointment_id = 'A003';
-----------------------
SELECT
p.Patient_name, a.Doctor_name,
a.Appointment_date
FROM
patients AS p
INNER JOIN appointments AS a
ON p.patient_id = a.patient_id;
-----------------------
SELECT
a.Appointment_id, p.Patient_name
FROM
patients AS p
RIGHT JOIN appointments AS a
ON p.patient_id = a.patient_id;
----------------------------------
SELECT
Gender, COUNT(patient_id) AS Number
FROM
patients
GROUP BY
gender;
 ---------------------------------
 SELECT DISTINCT Patient_name FROM patients;
SELECT DISTINCT Doctor_name FROM appointments;
--------------------------------
SELECT
Patient_name, Age
FROM
patients
WHERE
age = (SELECT MAX(age) FROM patients);
-----------------------------
UPDATE appointments
SET
department = 'Radiology'
WHERE
doctor_name = 'Matthew Russell';
----------------------------
DELETE FROM appointments
WHERE
department = 'Neurology';
----------------------
UPDATE appointments
SET
department = 'Radiology'
WHERE
patient_id IN (
SELECT patient_id
FROM patients
WHERE age > 60
);
------------------------
SELECT
Doctor_name
FROM
appointments
GROUP BY
doctor_name
ORDER BY
COUNT(appointment_id) DESC
LIMIT 1;
----------------------------
SELECT
 p.patient_id, p.patient_name,
 COUNT(DISTINCT a.department) AS
 Appointments
FROM
 patients AS p
 INNER JOIN appointments AS a
 ON p.patient_id = a.patient_id
GROUP BY
 p.patient_id, p.patient_name
HAVING
 COUNT(DISTINCT a.department) > 1;
 ---------------------------------
 SELECT
Doctor_name, MAX(appointment_date) AS
Recent_date
FROM
appointments
GROUP BY
doctor_name;
--------------------------------
SELECT
p.Patient_name
FROM
patients AS p
LEFT JOIN appointments AS a
ON p.patient_id = a.patient_id
GROUP BY
p.patient_name
HAVING
COUNT(a.appointment_date) = 0;
------------------------------
SELECT
a.Department, ROUND(AVG(p.age), 0) AS Avg_age
FROM
patients AS p
INNER JOIN appointments AS a
ON p.patient_id = a.patient_id
GROUP BY
a.department;
----------------------------
SELECT
a.Doctor_name, COUNT(DISTINCT p.patient_id) AS
Count_of_UniquePatients
FROM
patients AS p
INNER JOIN appointments AS a
ON p.patient_id = a.patient_id
GROUP BY
a.doctor_name;
--------------------------
SELECT
p.Patient_name, COUNT(a.appointment_id) AS
No_of_appointments
FROM
patients AS p
INNER JOIN appointments AS a
ON p.patient_id = a.patient_id
GROUP BY
p.patient_name
ORDER BY
COUNT(a.appointment_id) DESC
LIMIT 1;
---------------------------
SELECT
Department
FROM
appointments
GROUP BY
department
ORDER BY
COUNT(appointment_id) DESC
LIMIT 1;
-----------------------
SELECT
doctor_name,
ROUND((COUNT(appointment_id) * 100) /
(SELECT COUNT(*) FROM appointments), 1) AS
Percentage
FROM
appointments
GROUP BY
doctor_name;