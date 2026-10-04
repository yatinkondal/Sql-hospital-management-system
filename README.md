# Hospital Management System | SQL Project

## Project Overview

The Hospital Management System is a SQL-based database project designed to manage and analyze patient information and hospital appointment records.

The project demonstrates how SQL can be used to perform database operations, retrieve meaningful information, analyze patient demographics, monitor doctor workloads, and generate department-wise reports.

## Project Aim

To design and work with a relational database using SQL to manage hospital patient and appointment records and extract meaningful insights through structured queries.

## Objectives

* Create and populate relational database tables.
* Perform CRUD operations (Create, Read, Update, Delete).
* Retrieve patient and appointment information using SQL queries.
* Combine multiple tables using JOIN operations.
* Analyze patient demographics using aggregate functions.
* Identify doctor workloads and department-wise statistics.
* Apply subqueries to solve advanced database questions.

## Technologies Used

* MySQL
* MySQL Workbench
* SQL
* Relational Database Management System (RDBMS)

## Database Structure

**Database Name:** `cmc`

The project consists of two core tables:

### Patients

Stores patient-related information.

| Column         | Description                             |
| -------------- | --------------------------------------- |
| Patient_ID     | Unique patient identifier (Primary Key) |
| Patient_Name   | Patient's name                          |
| Age            | Patient's age                           |
| Gender         | Patient's gender                        |
| Admission_Date | Date of admission                       |

### Appointments

Stores appointment-related information.

| Column           | Description                                 |
| ---------------- | ------------------------------------------- |
| Appointment_ID   | Unique appointment identifier (Primary Key) |
| Patient_ID       | References the Patients table (Foreign Key) |
| Doctor_Name      | Name of the attending doctor                |
| Department       | Hospital department                         |
| Appointment_Date | Scheduled appointment date                  |

### Relationship

One patient can have multiple appointments.

`Patients (1) → Appointments (Many)`

## SQL Concepts Applied

### Basic SQL

* SELECT
* INSERT
* UPDATE
* DELETE
* DISTINCT
* WHERE
* ORDER BY

### Intermediate SQL

* INNER JOIN
* LEFT JOIN
* Aggregate Functions: COUNT, AVG, MAX
* GROUP BY
* HAVING

### Advanced SQL

* Subqueries
* Multi-table analysis
* Conditional filtering
* Department-wise reporting
* Doctor workload analysis

## Project Workflow

1. Designed the relational database structure.
2. Created and populated the Patients and Appointments tables.
3. Performed data insertion, updates, and deletion operations.
4. Retrieved patient and appointment records using SQL.
5. Applied JOINs to combine related information.
6. Used aggregate functions and grouping for statistical analysis.
7. Applied subqueries to solve advanced business questions.
8. Generated reports related to patient demographics, doctors, and departments.

## Key Analysis Areas

* Total number of male and female patients.
* Identification of the oldest patient.
* Doctor with the highest number of appointments.
* Patients visiting multiple departments.
* Patients without scheduled appointments.
* Average patient age across departments.
* Doctor-wise patient distribution.
* Department-wise appointment analysis.

## Skills Demonstrated

* SQL Query Writing
* Relational Database Design
* CRUD Operations
* Data Retrieval and Manipulation
* Table Relationships
* Joins and Subqueries
* Aggregate Reporting
* Analytical Problem Solving

## Project Outcome

This project strengthened my practical understanding of SQL and relational database management by applying queries to a healthcare-related dataset.

It demonstrates the ability to structure data, retrieve relevant information, perform analytical operations, and generate reports that can support hospital administration and operational decision-making.

## Project Files

* SQL query and solution file
* Hospital Management System project documentation
* Database or dataset files

## Conclusion

The Hospital Management System project demonstrates how SQL can be applied to organize healthcare records and extract useful operational insights through structured database queries.
