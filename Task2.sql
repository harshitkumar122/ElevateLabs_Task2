CREATE DATABASE IF NOT EXISTS LibraryDB;
USE LibraryDB;

DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS Loans;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Authors;
DROP TABLE IF EXISTS Members;

CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address TEXT
);

CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    bio TEXT
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150),
    author_id INT,
    description TEXT,
    published_year INT,
    stock_quantity INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    book_id INT,
    loan_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    loan_id INT,
    payment_date DATE,
    amount_paid DECIMAL(10, 2),
    payment_method VARCHAR(50),
    FOREIGN KEY (loan_id) REFERENCES Loans(loan_id)
);

INSERT INTO Members (name, email, phone, address) VALUES 
('Alice Sharma', 'alice@example.com', '9876543210', 'Delhi'),
('Bob Verma', 'bob@example.com', NULL, 'Mumbai'),
('Charlie Khan', NULL, '9998887776', 'Bangalore'),
('Daisy Roy', 'daisy@example.com', '8889990000', NULL);

INSERT INTO Authors (name, bio) VALUES 
('R.K. Narayan', 'Famous Indian novelist'),
('George Orwell', NULL),
('J.K. Rowling', 'Author of Harry Potter series');

INSERT INTO Books (title, author_id, description, published_year, stock_quantity) VALUES 
('Malgudi Days', 1, 'Short stories set in fictional town Malgudi', 1943, 5),
('1984', 2, NULL, 1949, 3),
('Harry Potter', 3, 'Wizarding world adventures', 1997, 10),
('Animal Farm', 2, 'Political satire', 1945, 4);

INSERT INTO Loans (member_id, book_id, loan_date, return_date) VALUES
(1, 1, '2024-06-10', '2024-06-20'),
(2, 2, '2024-06-11', NULL),
(3, 4, '2024-06-12', '2024-06-22');

INSERT INTO Payments (loan_id, payment_date, amount_paid, payment_method) VALUES
(1, '2024-06-15', 50.00, 'Cash'),
(2, '2024-06-16', NULL, 'UPI'),
(3, '2024-06-17', 30.00, NULL);

UPDATE Members SET phone = '9123456789' WHERE member_id = 2 AND phone IS NULL;
UPDATE Members SET email = 'charlie.khan@example.com' WHERE member_id = 3 AND email IS NULL;
UPDATE Books SET description = 'Dystopian political novel' WHERE book_id = 2 AND description IS NULL;
UPDATE Payments SET amount_paid = 40.00 WHERE payment_id = 2 AND amount_paid IS NULL;
UPDATE Payments SET payment_method = 'Card' WHERE payment_id = 3 AND payment_method IS NULL;

DELETE FROM Loans WHERE loan_id = 3;
DELETE FROM Payments WHERE loan_id = 3;
DELETE FROM Members WHERE member_id = 3 AND email IS NULL;
DELETE FROM Books WHERE book_id = 2 AND stock_quantity IS NULL;
