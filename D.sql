USE HaLLo_Pharmacy

INSERT INTO SalesTransactions VALUES
('SL016','CU010','EM005','2015-01-15')

SELECT*FROM SalesTransactions

--UPDATE Quantity ON SalesTransactions
BEGIN TRAN
UPDATE SalesTransactions
SET TransactionDate= '2015-01-14'
WHERE SalesID = 'SL016'

SELECT*FROM SalesTransactions

--DELETE SalesTransactions
BEGIN TRAN
DELETE SalesTransactions
WHERE SalesID = 'SL016' AND CustomerID = 'CU010'

SELECT*FROM SalesTransactions

INSERT INTO PurchaseTransactions VALUES
('PC016','VN011','EM005','2021-04-13')

SELECT*FROM PurchaseTransactions

--UPDATE Quantity ON PurchaseTransactions
BEGIN TRAN
UPDATE PurchaseTransactions
SET VendorID= 'VN012'
WHERE VendorID = 'VN011'

SELECT*FROM PurchaseTransactions

--DELETE PurchaseTransactions
BEGIN TRAN
DELETE PurchaseTransactions
WHERE PurchaseID = 'PC016' AND EmployeeID = 'EM005'

SELECT*FROM PurchaseTransactions