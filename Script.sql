create table authors(
id serial primary key,
name varchar(250)not null,
numberphone char(10),
email varchar(250)not null
);
create table users(
id serial primary key,
name varchar(250)not null,
numberphone char(10),
email varchar(250)not null,
account_id int4,
constraint fk_account
	foreign key (account_id)
	references loans(user_account_id)
);
create table books(
id serial primary key,
name varchar(250)not null,
gender varchar(250)not null,
book_publication date,
loan_id int4,
constraint fk_loans
	foreign key (loan_id)
	references loans(id)
);
create table editorial(
author_id int,
constraint fk_author
	foreign key (author_id)
	references authors(id),
	books_id int,
constraint fk_book
	foreign key (book_id)
	references books(id)
);
create table loans(
user_account_id int,
constraint fk_account_loan
	foreign key (user_account_id)
	references users(account_id),
loan_book_id int,
constraint fk_loans_book
	foreign key (loan_book_id)
	references books (loan_id)

);