CREATE DATABASE HaLLo_Pharmacy

USE HaLLo_Pharmacy

CREATE TABLE Categories(
	CategoryID VARCHAR(12) PRIMARY KEY CHECK (CategoryID LIKE ('CT[0-9][0-9][0-9]')),
	CategoryName VARCHAR(25) CHECK (CategoryName IN ('Amidopyrine','Phenacetin','Methaqualone'))NOT NULL
)
SELECT*FROM Categories

CREATE TABLE Medicines(
	MedicineID VARCHAR(12) PRIMARY KEY CHECK (MedicineID LIKE ('MD[0-9][0-9][0-9]')),
	CategoryID VARCHAR(12) FOREIGN KEY REFERENCES Categories(CategoryID),
	MedicineName VARCHAR(25) NOT NULL,
	MedicinePrice VARCHAR(20) NOT NULL CHECK (MedicinePrice BETWEEN 5000 and 100000),
	MedicineDescription VARCHAR(255) NOT NULL,
	MedicineStock INT NOT NULL
)
SELECT*FROM Medicines

CREATE TABLE Vendors(
	VendorID VARCHAR(12) PRIMARY KEY CHECK (VendorID LIKE ('VN[0-9][0-9][0-9]')),
	VendorName VARCHAR(30) NOT NULL CHECK (LEN(VendorName) >3),
	VendorPhone VARCHAR(13) NOT NULL,
	VendorEmail VARCHAR(25) NOT NULL CHECK (VendorEmail LIKE '%.com'),
	VendorAddres VARCHAR (255) NOT NULL,
	VendorY VARCHAR(4) NOT NULL
)
SELECT*FROM Vendors

CREATE TABLE Employees(
	EmployeeID VARCHAR(12) PRIMARY KEY CHECK (EmployeeID LIKE ('EM[0-9][0-9][0-9]')),
	EmployeeName VARCHAR(25) NOT NULL,
	EmployeeEmail VARCHAR(35) NOT NULL CHECK (EmployeeEmail LIKE '%@hallo.com'),
	EmployeePhone VARCHAR(13) NOT NULL,
	EmployeeAddress VARCHAR(255) NOT NULL,
	EmployeeDOB DATE NOT NULL,
	EmployeeGender VARCHAR(12) NOT NULL CHECK (EmployeeGender='Male' OR EmployeeGender='Female'),
	EmployeeSalary INT NOT NULL
)
SELECT*FROM Employees

CREATE TABLE PurchaseTransactions(
	PurchaseID VARCHAR(12) PRIMARY KEY CHECK (PurchaseID LIKE ('PC[0-9][0-9][0-9]')),
	VendorID VARCHAR(12) FOREIGN KEY REFERENCES Vendors(VendorID),
	EmployeeID VARCHAR(12) FOREIGN KEY REFERENCES Employees(EmployeeID),
	TransactionDate DATE NOT NULL
)
SELECT*FROM PurchaseTransactions

CREATE TABLE PurchaseDetails(
	PurchaseID VARCHAR(12) FOREIGN KEY REFERENCES PurchaseTransactions(PurchaseID),
	MedicineID VARCHAR(12) FOREIGN KEY REFERENCES Medicines(MedicineID),
	MedicineName VARCHAR(25) NOT NULL,
	PurchaseQty INT NOT NULL
)
SELECT*FROM PurchaseDetails

CREATE TABLE Customers(
	CustomerID VARCHAR(12) PRIMARY KEY CHECK (CustomerID LIKE ('CU[0-9][0-9][0-9]')),
	CustomerName VARCHAR(255) NOT NULL,
	CustomerDOB DATE NOT NULL,
	CustomerPhone VARCHAR(13) NOT NULL,
	CustomerEmail VARCHAR(35) NOT NULL CHECK (CustomerEmail LIKE '%@hallo.com'),
	CustomerGender VARCHAR(255) NOT NULL CHECK (CustomerGender='Male' OR CustomerGender='Female'),
	CustomerAddress VARCHAR(255) NOT NULL,
	CustomerPassword VARCHAR(20) NOT NULL
)
SELECT*FROM Customers

CREATE TABLE SalesTransactions(
	SalesID VARCHAR(12) PRIMARY KEY CHECK (SalesID LIKE ('SL[0-9][0-9][0-9]')),
	CustomerID VARCHAR(12) FOREIGN KEY REFERENCES Customers(CustomerID),
	EmployeeID VARCHAR(12) FOREIGN KEY REFERENCES Employees(EmployeeID),
	TransactionDate DATE NOT NULL
)
SELECT*FROM SalesTransactions

CREATE TABLE SalesDetails(
	SalesID VARCHAR(12) FOREIGN KEY REFERENCES SalesTransactions(SalesID),
	MedicineID VARCHAR(12) FOREIGN KEY REFERENCES Medicines(MedicineID),
	MedicineName VARCHAR(25) NOT NULL,
	SalesQty INT NOT NULL
)
SELECT*FROM SalesDetails