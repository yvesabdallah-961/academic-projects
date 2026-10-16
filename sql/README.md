# Library Database Schema

[Open the SQL schema file](library-database.sql)

This introductory PostgreSQL exercise models a small library with ten tables for book titles, physical copies, members, and borrowings.

![Library tables and relationships](../screenshots/library-database-schema.png)

## How the tables fit together

The design separates a book title from its physical copies. A library can own several copies of the same title, and each copy can be borrowed separately.

- **Books and copies:** one title can have several physical copies.
- **Borrowings:** connect a member to a specific copy and record borrowing and return dates.
- **Link tables:** connect books to multiple authors, scriptwriters, and keywords.
- **Keys:** primary keys identify records; foreign keys connect related tables.

## Scope and limitations

This is a small schema example. It has no sample records, analysis queries, or application. The many-to-many link tables still need composite primary keys for a more complete design.

## Run the schema

Run the first statement to create `library_database`, connect to that database, then run the remaining `CREATE TABLE` statements. Creating a database does not switch the active connection.
