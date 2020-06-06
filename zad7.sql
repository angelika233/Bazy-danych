pg_dump -U postgres -Fc firma > firma02.sql
pg_restore -U postgres -d firma "C:\Program Files\PostgreSQL\12\bin\firma02.sql"

BACKUP DATABASE AdventureWorks2017 TO DISK = 'C:\Users\angel\OneDrive\Pulpit\Studia\Bazy_danych\MS_backup.bak' WITH FORMAT;

CREATE VIEW 

log_dep AS SELECT hmd.Name, hme.LoginID FROM [AdventureWorks2017].[HumanResources].[Department] hmd JOIN  
[AdventureWorks2017].[HumanResources].[EmployeeDepartmentHistory] hmedh ON hmd.DepartmentID = hmedh.DepartmentID
JOIN [AdventureWorks2017].[HumanResources].[Employee] hme ON hme.BusinessEntityID = hmedh.BusinessEntityID;
