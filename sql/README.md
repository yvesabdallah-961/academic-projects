# Library Database Schema

[Open the SQL schema file](library-database.sql)

This is an introductory PostgreSQL database-design exercise with ten tables for books, physical copies, members, borrowings, and related records.

![Library tables and relationships](../screenshots/library-database-schema.png)

## How the tables fit together

The main design choice is separating a book title from its physical copies. A library can own several copies of the same title, and each copy can be borrowed separately.

- **Books and copies:** one title can have several physical copies.
- **Borrowings:** connect a member to a specific copy and record borrowing and return dates.
- **Link tables:** connect books to multiple authors, scriptwriters, and keywords.
- **Primary and foreign keys:** identify records and connect related tables.

## Scope

This is a small design sample. It shows a relational table structure, but does not include sample records, analysis queries, or an application.

## Run the schema

Run the first statement to create `library_database`, connect to that database, then run the remaining `CREATE TABLE` statements. Creating a database does not switch the active connection.

The [machine-learning course report](../reports/machine-learning-course-report.pdf) is separate coursework and does not describe this SQL exercise.
