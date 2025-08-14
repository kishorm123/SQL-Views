
-- Use the library database
USE librarydb;

-- ------------------------------
-- 1. CREATE VIEW with Complex SELECT
-- ------------------------------
-- View: vwBorrowingDetails
-- Shows member name, book title, borrow date, and return date
CREATE VIEW vwBorrowingDetails AS
SELECT m.membername, b.title, br.borrowdate, br.returndate
FROM borrowings br
JOIN members m ON br.memberid = m.memberid
JOIN books b ON br.bookid = b.bookid;

-- ------------------------------
-- 2. CREATE VIEW with Aggregation
-- ------------------------------
-- View: vwAuthorBookCount
-- Shows author name and number of books they have written
CREATE VIEW vwAuthorBookCount AS
SELECT a.name AS author_name, COUNT(b.bookid) AS total_books
FROM authors a
LEFT JOIN books b ON a.authorid = b.authorid
GROUP BY a.name;

-- ------------------------------
-- 3. Using Views for Abstraction
-- ------------------------------
-- Instead of exposing the full borrowings table, fetch borrowing details
SELECT * FROM vwBorrowingDetails;

-- ------------------------------
-- 4. Using Views for Security
-- ------------------------------
-- Only expose aggregated book count per author
SELECT * FROM vwAuthorBookCount;

-- Example: Get authors with more than 1 book
SELECT * FROM vwAuthorBookCount
WHERE total_books > 1;

-- ------------------------------
-- 5. Drop Views (Optional Cleanup)
-- ------------------------------
-- DROP VIEW vwBorrowingDetails;
-- DROP VIEW vwAuthorBookCount;
