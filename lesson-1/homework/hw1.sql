Easy
  
Task 1. Define the following terms: data, database, relational database, and table.
Data:
Data refers to raw, unorganized facts, figures, or symbols that represent something or any information. It can be numbers, text, images, or even audio recordings. For example, a student's name, date of birth, entrance exam scores and so on.
Database:
A database is a structured collection of data, organized for efficient storage and retrieval. A database is like a well-organized filing cabinet for data. It provides the structure and tools to store, manage, and retrieve information efficiently. Databases are used to store data in a way that makes it easy to access, update, and analyze.
Relational Database:
A relational database is a specific type of database that organizes data into tables with predefined relationships between them. Relational databases take the concept of a database a step further by organizing data into tables with defined relationships between them. These relationships allow for efficient querying and analysis of related data. For example, a customer table might be related to an orders table based on a customer ID, allowing you to easily see all orders placed by a specific customer. 
Table:
A table is a collection of data organized into rows and columns, used to represent records and attributes within a relational database. In a relational database, a table is a fundamental structure for organizing data. It's like a spreadsheet, with rows representing individual records and columns representing specific attributes of those records. For example, a customer table might have columns for customer ID, name, address, and phone number.

Task 2. List five key features of SQL Server.
Five key features of SQL Server are:
•	Relational Database Management System (RDBMS):
SQL Server is a robust RDBMS designed to manage and store data in a structured, relational format, using tables with rows and columns.
•	High Availability and Disaster Recovery:
Features like Always On Availability Groups and Failover Cluster Instances ensure continuous operation and data protection in case of hardware or software failures.
•	Security and Compliance:
SQL Server offers comprehensive security features, including data encryption, access control, vulnerability assessment, and compliance tools to protect sensitive information.
•	Intelligent Query Processing and Performance:
It includes advanced features such as intelligent query processing, in-memory OLTP, and Query Store to optimize query performance and enhance database efficiency.
•	Scalability and Flexibility:
SQL Server can be scaled to handle large volumes of data and user loads, and it supports various deployment options, including on-premises, cloud (Azure SQL Database), and containerized environments like Kubernetes.

Task 3. What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
There are two possible modes: Windows Authentication mode and mixed mode. 
Windows Authentication mode enables Windows Authentication and disables SQL Server Authentication. 
Mixed mode enables both Windows Authentication and SQL Server Authentication. Windows Authentication is always available and can't be disabled.

Medium

Task 4. Create a new database in SSMS named SchoolDB.
Using SSMS GUI:
Open SQL Server Management Studio and connect to your SQL Server instance.
In the Object Explorer, right-click on the Databases folder.
Select New Database...
In the New Database dialog, enter SchoolDB as the database name.
Click OK to create the database.

Using SQL Query: CREATE DATABASE SchoolDB;

Task 5. Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).

CREATE TABLE Students (
    StudentID int primary key,
    Name varchar(50),
    Age int
);

Task 6. Describe the differences between SQL Server, SSMS, and SQL.
1. SQL Server is a relational database management system (RDBMS) developed by Microsoft. It stores, manages, and retrieves data. It handles databases, executes SQL queries, manages security, backups, and other database operations. Examples are: Microsoft SQL Server 2019, SQL Server 2022.
2. SSMS (SQL Server Management Studio) is a graphical user interface (GUI) tool for managing SQL Server instances and is used by database administrators and developers to connect to SQL Server, write and execute SQL queries, manage databases, configure security, and monitor performance. For example, to create databases, write SQL code, and view results visually.
3. SQL (Structured Query Language) is a programming language used to communicate with and manipulate databases which is used to write queries to create, read, update, and delete data (CRUD operations) in a database. Example: SELECT * FROM Students; or CREATE TABLE Students(...)

Hard

Task 7. Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
1. DQL is a Data Query Language and is used to query and retrieve data from the database. Main command is SELECT. Example:
SELECT * FROM Students;
2. DML is a Data Manipulation Language and is used to manipulate data inside tables (insert, update, delete). Common commands include:
-INSERT — Add new data
-UPDATE — Modify existing data
-DELETE — Remove data
Examples are:
INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Asilya', 20);
UPDATE Students SET Age = 21 WHERE StudentID = 1;
DELETE FROM Students WHERE StudentID = 1;
3. DDL is a Data Definition Language and is used to define and modify database structures like tables, schemas, and indexes. Common commands include:
-CREATE — Create tables or databases
-ALTER — Modify existing table structure
-DROP — Delete tables or databases
-TRUNCATE — Remove all rows from a table (faster than DELETE)
Examples are:
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
ALTER TABLE Students ADD Email VARCHAR(100);
DROP TABLE Students;
TRUNCATE TABLE Students;
4. DCL is a Data Control Language and is used to control access and permissions on the database. Common commands include:
-GRANT — Give user permissions
-REVOKE — Remove user permissions
Examples are:
GRANT SELECT, INSERT ON Students TO User1;
REVOKE INSERT ON Students FROM User1;
5. TCL is a Transaction Control Language and is used to manage transactions in the database to ensure data integrity. Common commands include:
-COMMIT — Save all changes made in the current transaction
-ROLLBACK — Undo changes made in the current transaction
-SAVEPOINT — Set a point within a transaction to roll back to
Examples are:
BEGIN TRANSACTION;
UPDATE Students SET Age = 22 WHERE StudentID = 1;
-- If everything is good
COMMIT;
-- Or if something goes wrong
ROLLBACK;
-- Creating a savepoint
SAVEPOINT BeforeUpdate;
UPDATE Students SET Age = 23 WHERE StudentID = 1;
ROLLBACK TO BeforeUpdate;

Task 8. Write a query to insert three records into the Students table.
INSERT INTO Students (StudentID, Name, Age)
VALUES 
    (1, 'Asilya', 25),
    (2, 'Bobur', 20),
    (3, 'Charos', 21);

Task 9. Restore AdventureWorksDW2022.bak file to your server. (write its steps to submit) You can find the database from this link :https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak
I would restore the AdventureWorksDW2022.bak file to my SQL Server using the following steps:
-Open SSMS and connect to the server.
-Copy the .bak file (from the link https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak) to the default backup folder or to an any accessible folder.
-Use the Restore Database dialog from the Databases context menu.
-Select the .bak file from the folder where it was copied.
-Verify the destination and file paths in the Options tab.
-Click OK to restore.



