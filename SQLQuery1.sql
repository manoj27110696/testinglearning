
Drop proc All_countries

Create Proc All_countries
( @Countries Char(100)

)
AS
select * from Application.Countries
where countryname=trim(@Countries)

select * from Application.Countries
where countryname=trim(@Countries)

/*
CREATE PROC What_DB_is_this     
AS   
SELECT DB_NAME() AS ThisDB;


CREATE PROC What_DB_is_that @ID int   
AS    
SELECT DB_NAME(@ID) AS ThatDB;   


*/

exec All_countries '    India         '

CREATE TABLE #LocalTempTable(
CountryID int,
CountryName varchar(50), 
countryType varchar(150),
StateProvinceID int
)
INSERT INTO #LocalTempTable
select A.CountryID,CountryName,CountryType,B.StateProvinceID from Application.Countries A join [Application].[StateProvinces] B
on A.CountryID=B.CountryID


 
create index IX_CountryID on #LocalTempTable (CountryID);
CREATE INDEX IX_CountryName ON #LocalTempTable (CountryName);

Select * from #LocalTempTable B
join Application.Cities C on C.StateProvinceID=B.StateProvinceID 


