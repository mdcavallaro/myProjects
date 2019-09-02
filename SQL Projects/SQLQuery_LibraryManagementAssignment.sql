--Create Database
CREATE DATABASE LibraryManagementSystemProject;

--Create Tables
USE LibraryManagementSystemProject

-- Library_branch
CREATE TABLE library_branch (
	BranchID int NOT NULL PRIMARY KEY,
	BranchName varchar(255),
	Address varchar(255)
);

-- Task 1: There is a library branch called 'Sharpstown' and one called 'Central'.
-- Task 2: There are 4 branches in the library_branch.
INSERT INTO library_branch
VALUES 
('1', 'Sharpstown', '901 Bobwire Road'),
('2', 'Central', '147 Montopolis Blvd'),
('3', 'East', '208 Eastside Drive'),
('4', 'West', '708 Westside Drive');



-- PUBLISHER Table
CREATE TABLE publisher (
	PublisherName varchar(255) NOT NULL PRIMARY KEY,
	Address varchar(255),
	Phone varchar(255)
);

INSERT INTO publisher
VALUES
('Penguin Random House', '102 Arctic Circle', '456-234-6423'),
('Hachette Livre', 'Chopped Liver Road', '907-233-7643'),
('Princeton Architectural Press', 'Starch Lane', '721-402-1292'),
('Wiley', 'Coyote Drive', '827-323-1235'),
('Random House', 'Mystery Way', '333-555-2121'),
('Hachette', 'Chopped Drive', '294-234-5312'),
('Penguin', 'Contrast Avenue', '838-432-3145'),
('HarperCollins', 'Marine Drive', '213-785-8465'),
('Springer Nature', 'Pleasant Lane', '513-752-3125');

-- BOOKS table
CREATE TABLE books (
	BookID int NOT NULL PRIMARY KEY,
	Title varchar(255),
	PublisherName varchar(255) NOT NULL FOREIGN KEY REFERENCES publisher(PublisherName)
);

-- There are at least 20 books in the BOOK table.
INSERT INTO books
VALUES 
('1', 'The Lost Tribe', 'Penguin Random House'),
('2', 'The Defining Decade', 'Hachette Livre'),
('3', 'Type On Screen', 'Princeton Architectural Press'),
('4', 'Advanced Drawing of Scrolls', 'Wiley'),
('5', 'The Design Of Dissent', 'Hachette Livre'),
('6', 'Gemstone Settings', 'Penguin Random House'),
('7', 'Be Here Now', 'Penguin Random House'),
('8', 'Notes From Underground', 'Penguin Random House'),
('9', 'By Night In Chile', 'Random House'),
('10', 'Resistance, Rebellion, and Death', 'Hachette'),
('11', 'On The Road', 'Hachette'),
('12', 'A Million Little Pieces', 'Penguin'),
('13', 'Total Recall', 'Hachette'),
('14', 'The Subtle Art Of Not Giving A Fuck', 'HarperCollins'),
('15', 'Civil Disobedience', 'HarperCollins'),
('16', 'Unfuck Your Brain', 'Springer Nature'),
('17', 'Breaking Open the Head', 'Random House'),
('18', 'Invisible Man', 'Hachette Livre'),
('19', 'Drawing on the Right Side of the Brain', 'HarperCollins'),
('20', 'The Way of the Superior Man', 'HarperCollins'),
('21', 'It', 'Penguin'),
('22', 'The Shining', 'Penguin'),
('23', 'In Search of Lost Time', 'HarperCollins'),
('24', 'Ulysses', 'HarperCollins'),
('25', 'Don Quixote', 'HarperCollins'),
('26', 'The Great Gatsby', 'HarperCollins'),
('27', 'Moby Dick', 'HarperCollins'),
('28', 'One Hundred Years of Solitude', 'HarperCollins'),
('29', 'War and Peace', 'HarperCollins'),
('30', 'Hamlet', 'HarperCollins'),
('31', 'Lolita', 'Hachette Livre'),
('32', 'The Odyssey', 'Hachette Livre'),
('33', 'The Brothers Karamazov', 'Hachette Livre'),
('34', 'The Adventures of Huckleberry Finn', 'Hachette Livre'),
('35', 'Madame Bovary', 'Penguin Random House'),
('36', 'The Catcher in the Rye', 'Penguin Random House'),
('37', 'The Divine Comedy', 'Penguin Random House'),
('38', 'Crime and Punishment', 'Penguin Random House'),
('39', 'Alices Adventures in Wonderland', 'Penguin Random House'),
('40', 'Wuthering Heights', 'Penguin Random House'),
('41', 'To the Lighthouse', 'Penguin Random House'),
('42', 'Pride and Prejudice', 'Penguin Random House'),
('43', 'The Sound and the Fury', 'Penguin Random House'),
('44', 'Anna Karenina', 'HarperCollins'),
('45', 'The Iliad', 'HarperCollins'),
('46', 'Heart of Darkness', 'HarperCollins'),
('47', 'Catch-22', 'HarperCollins'),
('48', 'Nineteen Eighty Four', 'HarperCollins');

-- Borrower Table
CREATE TABLE borrower (
	CardNo int NOT NULL PRIMARY KEY,
	Name varchar(255),
	Address varchar(255),
	Phone varchar(255)
);

-- There are at least 8 borrowers in the BORROWER table
INSERT INTO borrower
VALUES 
('1', 'Jon Smith', '101 Main', '323-765-9089'),
('2', 'Sarah White', '907 Cuernavaca', '532-954-2961'),
('3', 'Sean Wyatt', '12 Drury Lane', '444-754-2828'),
('4', 'Tim Coe', 'HWY 66', '456-678-2346'),
('5', 'John Atkins', '8 Khabele Lane', '893-320-5175'),
('6', 'Camille Dollins', '45 Main', '443-214-8492'),
('7', 'Leigh Strattner', '72 Hawthorne', '907-452-6777'),
('8', 'Danielle Zayas', '901 Valentino Way', '413-452-7890'),
('9', 'Donald Jarvis', '710 Metalworking Drive', '390-756-0206'),
('10', 'David Rosenberg', '102 Mountain Way', '630-128-9037'),
('11', 'Bobby King', '420 Dragoncrete', '512-532-2114');

CREATE TABLE book_authors (
	BookID int NOT NULL FOREIGN KEY REFERENCES books(BookID),
	AuthorName varchar(255)
);

--There are at least 10 authors in the book_authors table.
INSERT INTO book_authors
VALUES 
('1', 'Harry Henderson'),
('2', 'Meg Jay PhD'),
('3', 'Ellen Lupton'),
('4', 'Ron Smith'),
('5', 'Milton Glaser'),
('6', 'Anastasia Young'),
('7', 'Ram Dass'),
('8', 'Fyodor Dostoevsky'),
('9', 'Roberto Bolano'),
('10', 'Albert Camus'),
('11', 'Jack Kerouac'),
('12', 'James Frey'),
('13', 'Philip K. Dick'),
('14', 'Mark Manson'),
('15', 'Henry David Thoreau'),
('16', 'Faith Harper PhD'),
('17', 'Daniel Pinchbeck'),
('18', 'Ralph Ellison'),
('19', 'Betty Edwards'),
('20', 'David Deida'),
('21', 'Stephen King'),
('22', 'Stephen King'),
('23', 'Marcel Proust'),
('24', 'James Joyce'),
('25', 'Miguel de Cervantes'),
('26', 'F. Scott Fitzgerald'),
('27', 'Herman Melville'),
('28', 'Gabriel Garcia Marquez'),
('29', 'Leo Tolstoy'),
('30', 'William Shakespeare'),
('31', 'Vladimir Nabokov'),
('32', 'Homer'),
('33', 'Fyodor Dostoyevsky'),
('34', 'Mark Twain'),
('35', 'Gustave Flaubert'),
('36', 'J.D. Salinger'),
('37', 'Dante Alighieri'),
('38', 'Fyodor Dostoyevsky'),
('39', 'Lewis Carroll'),
('40', 'Emily Bronte'),
('41', 'Virginia Woolf'),
('42', 'Jane Austen'),
('43', 'William Faulkner'),
('44', 'Leo Tolstoy'),
('45', 'Homer'),
('46', 'Joseph Conrad'),
('47', 'Joseph Heller'),
('48', 'George Orwell');



-- BOOK_LOANS table
CREATE TABLE book_loans (
	BookID int NOT NULL FOREIGN KEY REFERENCES books(BookID),
	BranchID int NOT NULL FOREIGN KEY REFERENCES library_branch(BranchID),
	CardNo int NOT NULL FOREIGN KEY REFERENCES borrower(CardNo),
	DateOut date,
	DateDue date
);

/* And at least 2 of those borrowers have more than 5 books loaned to them. */
/* There are at least 50 loans in the book_loans table */

INSERT INTO book_loans
VALUES 
('1', '1', '1', '2019-08-02', '2019-09-03'),
('3', '1', '1', '2019-08-11', '2019-09-12'),
('5', '1', '1', '2019-07-12', '2019-08-13'),
('7', '1', '1', '2019-08-16', '2019-09-17'),
('9', '1', '1', '2019-07-18', '2019-08-19'),
('10', '2', '1', '2019-07-23', '2019-08-24'),
('2', '2', '2', '2019-08-16', '2019-09-17'),
('4', '2', '2', '2019-08-01', '2019-09-02'),
('6', '2', '2', '2019-07-23', '2019-08-24'),
('8', '2', '2', '2019-08-11', '2019-09-12'),
('10', '2', '2', '2019-08-19', '2019-09-20'),
('11', '1', '2', '2019-08-17', '2019-09-18'),
('1', '1', '3', '2019-08-19', '2019-09-20'),
('2', '2', '3', '2019-07-26', '2019-08-27'),
('3', '1', '3', '2019-08-01', '2019-09-02'),
('4', '2', '3', '2019-08-18', '2019-09-19'),
('5', '1', '3', '2019-07-29', '2019-08-30'),
('6', '2', '4', '2019-08-20', '2019-09-21'),
('7', '1', '4', '2019-07-18', '2019-08-19'),
('8', '2', '4', '2019-07-19', '2019-08-20'),
('9', '1', '4', '2019-07-19', '2019-08-20'),
('10', '2', '4', '2019-08-03', '2019-09-04'),
('11', '1', '4', '2019-08-17', '2019-09-18'),
('12', '2', '4', '2019-08-13', '2019-09-14'),
('13', '1', '5', '2019-08-14', '2019-09-15'),
('14', '2', '5', '2019-08-14', '2019-09-15'),
('15', '1', '5', '2019-07-28', '2019-08-29'),
('16', '2', '5', '2019-07-19', '2019-08-20'),
('17', '1', '5', '2019-07-22', '2019-08-23'),
('18', '2', '5', '2019-07-14', '2019-08-15'),
('19', '1', '6', '2019-07-24', '2019-08-25'),
('20', '2', '6', '2019-07-29', '2019-08-30'),
('21', '2', '6', '2019-08-12', '2019-09-13'),
('22', '2', '6', '2019-08-01', '2019-09-02'),
('23', '3', '6', '2019-08-14', '2019-09-15'),
('24', '3', '6', '2019-08-14', '2019-09-15'),
('22', '2', '7', '2019-08-14', '2019-09-15'),
('23', '3', '7', '2019-07-19', '2019-08-20'),
('24', '3', '7', '2019-08-09', '2019-09-10'),
('25', '3', '7', '2019-08-09', '2019-09-10'),
('26', '3', '7', '2019-08-20', '2019-09-21'),
('27', '3', '8', '2019-07-27', '2019-08-28'),
('28', '3', '8', '2019-07-28', '2019-08-29'),
('29', '3', '8', '2019-08-11', '2019-09-12'),
('30', '3', '8', '2019-08-20', '2019-09-21'),
('29', '3', '9', '2019-07-22', '2019-08-23'),
('30', '3', '9', '2019-08-03', '2019-09-04'),
('35', '4', '9', '2019-08-14', '2019-09-15'),
('36', '4', '9', '2019-08-14', '2019-09-15'),
('41', '4', '10', '2019-08-14', '2019-09-15');


/* book_copies table  */
CREATE TABLE book_copies (
	BookID int NOT NULL FOREIGN KEY REFERENCES books(BookID),
	BranchID int NOT NULL FOREIGN KEY REFERENCES library_branch(BranchID),
	Number_Of_Copies varchar(255)
);


-- Each library branch has at least 10 book titles, and at least two copies of each of those titles.
INSERT INTO book_copies
VALUES
('1', '1', '4'),
('2', '2', '4'),
('3', '1', '4'),
('4', '2', '4'),
('5', '1', '3'),
('6', '2', '5'),
('7', '1', '8'),
('8', '2', '6'),
('9', '1', '6'),
('10', '2', '4'),
('11', '1', '7'),
('12', '2', '4'),
('13', '1', '9'),
('14', '2', '12'),
('15', '1', '8'),
('16', '2', '7'),
('17', '1', '23'),
('18', '2', '9'),
('19', '1', '6'),
('20', '2', '11'),
('21', '2', '25'),
('22', '2', '20'),
('23', '3', '15'),
('24', '3', '15'),
('25', '3', '10'),
('26', '3', '15'),
('27', '3', '10'),
('28', '3', '12'),
('29', '3', '10'),
('30', '3', '10'),
('31', '3', '12'),
('32', '3', '10'),
('33', '3', '10'),
('34', '4', '10'),
('35', '4', '15'),
('36', '4', '10'),
('37', '4', '10'),
('38', '4', '10'),
('39', '4', '10'),
('40', '4', '10'),
('41', '4', '10'),
('42', '4', '10'),
('43', '4', '10'),
('44', '4', '10'),
('45', '4', '10'),
('46', '4', '10'),
('47', '4', '10'),
('48', '4', '10');


/* Create Stored Procedures */

--1. How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
SELECT book_copies.Number_Of_Copies, library_branch.BranchName, books.Title
FROM ((book_copies
INNER JOIN library_branch ON book_copies.BranchID = library_branch.BranchID)
INNER JOIN books ON book_copies.BookID = books.BookID)
WHERE BranchName='Sharpstown' AND Title='The Lost Tribe';


--2. How many copies of the book titled "The Lost Tribe" are owned by each library branch?
SELECT book_copies.Number_Of_Copies, library_branch.BranchName, books.Title
FROM ((book_copies
INNER JOIN library_branch ON book_copies.BranchID = library_branch.BranchID)
INNER JOIN books ON book_copies.BookID = books.BookID)
WHERE Title='The Lost Tribe';

--3. Retrieve the names of all borrowers who do not have any books checked out.
SELECT borrower.Name, book_loans.DateDue, books.Title
FROM borrower
FULL OUTER JOIN book_loans ON borrower.CardNo=book_loans.CardNo
FULL OUTER JOIN books ON book_loans.BookID=books.BookID
WHERE DateDue IS NULL AND Title IS NULL;


--4. For each book loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title,
--   the borrowers name, and the borrowers address.
SELECT book_loans.DateDue, library_branch.BranchName, books.Title, borrower.Name, borrower.Address 
FROM (((book_loans
INNER JOIN library_branch ON book_loans.BranchID = library_branch.BranchID)
INNER JOIN books ON book_loans.BookID = books.BookID)
INNER JOIN borrower ON book_loans.CardNo = borrower.CardNo)
WHERE BranchName='Sharpstown' AND DateDue='2019-08-30';


--5. For each Library branch, retrieve the branch name and the total number of books loaned out from that branch.
SELECT COUNT(BookID), library_branch.BranchName
FROM book_loans
INNER JOIN library_branch ON book_loans.BranchID = library_branch.BranchID
GROUP BY BranchName;


--6. Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out.
SELECT COUNT(book_loans.CardNo), borrower.Name, borrower.Address
FROM book_loans
INNER JOIN borrower ON book_loans.CardNo = borrower.CardNo
GROUP BY borrower.Name, borrower.Address
HAVING COUNT(book_loans.CardNo) > 5;


--7. For each book authored by "Stephen King", retrieve the title and number of copies owned by the library branch whose name is "Central"
SELECT books.Title, book_copies.Number_Of_Copies, library_branch.BranchName, book_authors.AuthorName
FROM (((books
INNER JOIN book_copies ON books.BookID = book_copies.BookID)
INNER JOIN library_branch ON book_copies.BranchID = library_branch.BranchID)
INNER JOIN book_authors ON books.BookID = book_authors.BookID)
WHERE AuthorName='Stephen King' AND BranchName='Central';