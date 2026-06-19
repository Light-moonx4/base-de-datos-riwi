CREATE TABLE author_book (
    author_id INT,
    book_id INT,

    CONSTRAINT pk_author_book
        PRIMARY KEY (author_id, book_id),

    CONSTRAINT fk_author
        FOREIGN KEY (author_id)
        REFERENCES authors(id),

    CONSTRAINT fk_book
        FOREIGN KEY (book_id)
        REFERENCES books(id)
);
CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    numberphone CHAR(10),
    email VARCHAR(250) NOT NULL
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    numberphone CHAR(10),
    email VARCHAR(250) NOT NULL
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    gender VARCHAR(250) NOT NULL,
    price DECIMAL(10,2),
    book_publication DATE
);

CREATE TABLE loans (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    loan_date DATE,
    return_date DATE,

    CONSTRAINT fk_user
        FOREIGN KEY (user_id)
        REFERENCES users(id),

    CONSTRAINT fk_book_loan
        FOREIGN KEY (book_id)
        REFERENCES books(id)
);

CREATE TABLE author_book (
    author_id INT,
    book_id INT,

    CONSTRAINT pk_author_book
        PRIMARY KEY (author_id, book_id),

    CONSTRAINT fk_author
        FOREIGN KEY (author_id)
        REFERENCES authors(id),

    CONSTRAINT fk_book
        FOREIGN KEY (book_id)
        REFERENCES books(id)
);