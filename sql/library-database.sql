-- Library database schema
CREATE DATABASE library_database;

CREATE TABLE book (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    isbn VARCHAR(30),
    publication_year INT
);

CREATE TABLE author (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE scriptwriter (
    scriptwriter_id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE book_author (
    -- A book can have multiple authors, and an author can write multiple books.
    book_id INT REFERENCES book(book_id),
    author_id INT REFERENCES author(author_id)
);

CREATE TABLE book_scriptwriter (
    -- Links books to scriptwriters.
    book_id INT REFERENCES book(book_id),
    scriptwriter_id INT REFERENCES scriptwriter(scriptwriter_id)
);

CREATE TABLE copy (
    copy_id SERIAL PRIMARY KEY,
    book_id INT REFERENCES book(book_id)
);

CREATE TABLE member (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE borrowing (
    -- Records which member borrowed a copy and the relevant dates.
    borrowing_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES member(member_id),
    copy_id INT REFERENCES copy(copy_id),
    borrow_date DATE,
    return_date DATE
);

CREATE TABLE keyword (
    keyword_id SERIAL PRIMARY KEY,
    keyword VARCHAR(255)
);

CREATE TABLE book_keyword (
    -- A book can have multiple keywords.
    book_id INT REFERENCES book(book_id),
    keyword_id INT REFERENCES keyword(keyword_id)
);
