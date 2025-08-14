# SQL Views

This repository contains SQL examples for **creating and using views** in a Library Management System database.

## 📂 File Included
- `library_views.sql`
  - Creates views using complex `SELECT` queries with joins and aggregations.
  - Demonstrates using views for **abstraction** and **security**.

## 🗃️ Views Created
1. **vwBorrowingDetails** – Displays member name, book title, borrow date, and return date.
2. **vwAuthorBookCount** – Shows each author and the number of books they have written.

## 💡 Usage
1. Ensure the `librarydb` schema and tables exist.
2. Run `library_views.sql` to create the views and see usage examples.
3. Use the views in place of direct table queries for controlled data access.
