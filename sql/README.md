# Library Database Schema

[SQL file](library-database.sql)

An introductory PostgreSQL schema with **ten tables** for books, physical copies, members, borrowings, and related records.

![Library tables and relationships](library-schema-preview.png)

## Design and main challenge

The key decision is separating a book title from its physical copies: two members can borrow different copies of the same title.

- **Books and copies:** one title can have several physical copies.
- **Borrowings:** connect a member to a specific copy and record borrowing and return dates.
- **Link tables:** allow multiple authors, scriptwriters, and keywords per book.

Primary keys identify records; foreign keys connect related tables.

## Scope

This sample demonstrates table structure and relationships. It includes no sample records, analysis queries, or application.

**To use:** run the first statement to create `library_database`, connect to that database, then run the `CREATE TABLE` statements. Creating a database does not switch the active connection.
