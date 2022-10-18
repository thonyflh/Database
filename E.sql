--1
SELECT CU.CustomerID, CustomerName,
CONVERT(VARCHAR,TransactionDate,107) AS TransactionDate,
SUM(SalesQty) AS MedicineBought
FROM Customers CU JOIN SalesTransactions ST ON CU.CustomerID = ST.CustomerID
JOIN SalesDetails SD ON ST.SalesID = SD.SalesID
WHERE DAY(TransactionDate) BETWEEN 20 AND 30
AND CustomerGender = 'Female'
GROUP BY CU.CustomerID, CustomerName, TransactionDate

--2
SELECT RIGHT(EM.EmployeeID,3) AS EmployeeNumber, Em.EmployeeName,
COUNT(ST.CustomerID) AS CustomerServed
FROM Employees EM JOIN SalesTransactions ST 
ON EM.EmployeeID = ST.EmployeeID
JOIN Customers CU 
ON CU.CustomerID = ST.CustomerID
WHERE EmployeeName LIKE '%b%' AND EmployeeGender='Female'
GROUP BY EM.EmployeeID, EmployeeName

--3
SELECT CU.CustomerID, Cu.CustomerName, CONVERT(VARCHAR,CustomerDOB,106) AS DateOfBirth,
COUNT(ST.SalesID) AS TransactionCount, SUM(SalesQty * MedicinePrice) AS TotalPurchase
FROM Customers CU JOIN SalesTransactions ST ON CU.CustomerID = ST.CustomerID
JOIN SalesDetails SD ON ST.SalesID = SD.SalesID
JOIN Medicines ME ON SD.MedicineID = ME.MedicineID
WHERE MONTH(TransactionDate) BETWEEN 1 AND 6
AND EmployeeID IN ('EM004', 'EM006', 'EM008')
GROUP BY CU.CustomerID, CustomerName, CustomerDOB

--4
SELECT C.CustomerID, C.CustomerName, 
REPLACE(C.CustomerPhone, '0', '62') AS LocalPhoneNumber,
COUNT(ST.EmployeeID) AS TransactionDone, COUNT(SD.SalesQty) AS TotalMedicineBought
FROM Customers C JOIN SalesTransactions ST
ON C.CustomerID = ST.CustomerID
JOIN SalesDetails SD ON SD.SalesID = ST.SalesID
JOIN Employees E ON E.EmployeeID = ST.EmployeeID
JOIN PurchaseTransactions PT ON PT.EmployeeID = E.EmployeeID
JOIN Vendors V ON V.VendorID = PT.VendorID
WHERE DAY(ST.TransactionDate) BETWEEN 10 AND 20
AND V.VendorY > '2000'
GROUP BY  C.CustomerID, C.CustomerName, C.CustomerPhone

--5
SELECT RIGHT(M.MedicineID,3) AS MedicineID , UPPER(M.MedicineName) AS MedicineName,
CategoryName, CONCAT('Rp. ',M.MedicinePrice) AS Price, M.MedicineStock
FROM Medicines M JOIN Categories C 
ON M.CategoryID = C.CategoryID
WHERE M.MedicinePrice > 50000 AND M.MedicineStock <  (
        SELECT AVG(SalesQty)
        FROM SalesDetails
)

--6
SELECT REPLACE(E.EmployeeID, 'EM', 'EMPLOYEE') AS EmployeeCode, E.EmployeeName,
CONVERT(VARCHAR, ST.TransactionDate,101) AS TransactionDate, SD.MedicineName,
M.MedicinePrice, SD.SalesQty
FROM Employees E JOIN SalesTransactions ST
ON E.EmployeeID = ST.EmployeeID
JOIN SalesDetails SD ON SD.SalesID = ST.SalesID
JOIN Medicines M ON SD.MedicineID = M.MedicineID
WHERE DAY(ST.TransactionDate) = 2 AND E.EmployeeSalary < (
    SELECT AVG(EmployeeSalary)
    FROM Employees
)

--7
SELECT C.CustomerID, C.CustomerName, REPLACE(C.CustomerPhone, '0', '62') AS CustomerPhone,
CONVERT(VARCHAR, C.CustomerDOB, 107) AS DateOfBirth, CONCAT(COUNT(SD.SalesQty), ' item(s)') AS MedicineBought
FROM Customers C JOIN SalesTransactions ST ON ST.CustomerID = C.CustomerID
JOIN SalesDetails SD ON SD.SalesID = ST.SalesID
WHERE C.CustomerGender <> 'Male' AND SD.SalesQty > (
    SELECT AVG(SalesQty)
    FROM SalesDetails
)
GROUP BY C.CustomerID, C.CustomerName, C.CustomerPhone, C.CustomerDOB

--8
SELECT E.EmployeeID,  LEFT(E.EmployeeName, CHARINDEX(' ', E.EmployeeName) -1) As EmployeeName,
CONCAT('Rp. ', E.EmployeeSalary) AS Salary, CONVERT(VARCHAR, E.EmployeeDOB, 107) AS DateOfBirth,
COUNT(ST.SalesID) AS TransactionServed
FROM Employees E JOIN SalesTransactions ST 
ON E.EmployeeID = ST.EmployeeID
JOIN SalesDetails SD ON SD.SalesID = ST.SalesID
WHERE E.EmployeeName Like '% %' 
GROUP BY E.EmployeeID, E.EmployeeName, E.EmployeeSalary, E.EmployeeDOB
HAVING COUNT(SD.SalesQty) > (
    SELECT AVG(SalesQty)
    FROM SalesDetails
)

--9
CREATE VIEW VendorMaximumAvergaeQuantityViewer 
AS
SELECT DISTINCT(PT.VendorID), V.VendorName, 
CONCAT(AVG(PD.PurchaseQty), ' item(s)') AS AverageSuppliedQuantity,
CONCAT(MAX(PD.PurchaseQty), ' item(s)') AS MaximumSuppliedQuantity
FROM Vendors V JOIN PurchaseTransactions PT
ON PT.VendorID = V.VendorID 
JOIN PurchaseDetails PD 
ON PD.PurchaseID = PT.PurchaseID
WHERE V.VendorName LIKE '%a%'
GROUP BY PD.MedicineID, PD.PurchaseID, PT.VendorID, V.VendorName
HAVING MAX(PD.PurchaseQty) > 5

SELECT * FROM VendorMaximumAvergaeQuantityViewer


--10
CREATE VIEW VendorSupplyViewer 
AS
SELECT RIGHT(V.VendorID, 3) AS VendorID, V.VendorName, V.VendorAddres, 
CONCAT('Rp. ',SUM(M.MedicinePrice * PD.PurchaseQty)) AS TotalSuppliedValue,
CONCAT(COUNT(PD.MedicineID), ' medicine(s)') AS MedicineTypeSupplied
FROM Vendors V JOIN PurchaseTransactions PT
ON PT.VendorID = V.VendorID 
JOIN PurchaseDetails PD 
ON PD.PurchaseID = PT.PurchaseID
JOIN Medicines M
ON M.MedicineID = PD.MedicineID
GROUP BY V.VendorID, V.VendorName, V.VendorAddres
HAVING SUM(M.MedicinePrice * PD.PurchaseQty) > 150000
AND SUM(PD.PurchaseQty) > 2

SELECT * FROM VendorSupplyViewer

SELECT * FROM SalesDetails
