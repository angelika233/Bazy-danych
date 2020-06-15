
BEGIN
SELECT AVG(HREPR.Rate) AS STAWKA FROM AdventureWorks2017.HumanResources.EmployeePayHistory HREPR;
SELECT HRE.*, HREPR.Rate FROM AdventureWorks2017.HumanResources.EmployeePayHistory HREPR, AdventureWorks2017.HumanResources.Employee HRE 
WHERE HREPR.BusinessEntityID=HRE.BusinessEntityID AND HREPR.Rate < (SELECT AVG(HREPR.Rate) FROM AdventureWorks2017.HumanResources.EmployeePayHistory HREPR)
END;

CREATE FUNCTION date @nr INT)
RETURNS TABLE AS
RETURN(
	SELECT SSOH.ShipDate as data_zamowienia FROM AdventureWorks2017.Sales.SalesOrderHeader SSOH
WHERE SSOH.SalesOrderID = @nr
);


CREATE PROCEDURE info @produkt nvarchar(50) 

AS BEGIN
SELECT PP.ProductID, PP.ProductNumber, PP.SellEndDate FROM  AdventureWorks2017.Production.Product PP 
WHERE PP.Name=@produkt;
END;

CREATE FUNCTION credit_card(
	@order  INT
)
RETURNS TABLE AS
RETURN (
SELECT SCC.CardNumber FROM AdventureWorks2017.Sales.CreditCard SCC
INNER JOIN AdventureWorks2017.Sales.SalesOrderHeader SSOH 
ON SCC.CreditCardID = SSOH.CreditCardID 
AND @order = SSOH.SalesOrderID);

CREATE PROCEDURE div
(@num1 INT =1 , 
@num2 INT = 1)
AS
DECLARE @result FLOAT;
DECLARE @err AS NVARCHAR(500);

IF @num1 < @num2 
BEGIN
	SET @err = 'Niewłaściwie zdefiniowałeś dane wejściowe';
	RAISERROR(@err,16,1);
	RETURN;
END;
ELSE 
BEGIN
	SET @result = @num1/@num2;
	SELECT @result as iloraz;
	RETURN;
END;

