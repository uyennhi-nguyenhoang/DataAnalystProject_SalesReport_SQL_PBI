-- Extract necessary columns from DimCustomer table + Join with DimGeography table for City & Country columns

SELECT 
	c.[CustomerKey] 
		--,[GeographyKey]
		--,[CustomerAlternateKey]
		--,[Title]
	,c.[FirstName]                               AS [First Name] 
		--,[MiddleName]				      
	,c.[LastName]                                AS [Last Name]
	,c.[FirstName] + ' ' + c.[LastName]          AS [Full Name] 
		--,[NameStyle]
		--,[BirthDate]
		--,[MaritalStatus]
		--,[Suffix]
	,CASE WHEN [Gender] = 'M' Then 'Male' 
	   WHEN Gender = 'F' Then 'Female' 
	   END					     AS Gender 
		--,[EmailAddress]
		--,[YearlyIncome]
		--,[TotalChildren]
		--,[NumberChildrenAtHome]
		--,[EnglishEducation]
		--,[SpanishEducation]
		--,[FrenchEducation]
		--,[EnglishOccupation]
		--,[SpanishOccupation]
		--,[FrenchOccupation]
		--,[HouseOwnerFlag]
		--,[NumberCarsOwned]
		--,[AddressLine1]
		--,[AddressLine2]
		--,[Phone]
	,c.[DateFirstPurchase] 
		--,[CommuteDistance]
	,g.City                                      AS [Customer City]
	,g.EnglishCountryRegionName                  AS Country
FROM 
	[AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
	LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g 
	ON g.GeographyKey = c.GeographyKey 
ORDER BY 
	CustomerKey  
