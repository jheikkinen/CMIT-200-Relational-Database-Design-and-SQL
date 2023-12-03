with SQL_CTE as (
Select *,
	count(Country) Over (Partition BY Country ) AS CountryDups
	FROM TABLE_1)	
	Select * From SQL_CTE
	Where CountryDups >1;