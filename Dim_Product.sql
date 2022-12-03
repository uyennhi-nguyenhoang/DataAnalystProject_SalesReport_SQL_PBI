--Clean DimProduct & Join with DimProductSubcategory + DimProductCategory
SELECT 
	 p.[ProductKey] 
	,p.[ProductAlternateKey]
	,p.[ProductSubcategoryKey]
		--,[WeightUnitMeasureCode]
		--,[SizeUnitMeasureCode]
	,p.[EnglishProductName]           AS [Product Name]
	,ps.EnglishProductSubcategoryName AS Subcategory        -- Joined with DimProductSubcategory
	,pc.EnglishProductCategoryName    AS [Product Category] -- Joined with DimProductCategory
		--,[SpanishProductName]
		--,[FrenchProductName]
		--,[StandardCost]
		--,[FinishedGoodsFlag]
	,p.[Color]						  AS [Product Color]
		--,[SafetyStockLevel]
		--,[ReorderPoint]
		--,[ListPrice]
	,p.[Size]						  AS [Product Size]
		--,[SizeRange]
		--,[Weight]
		--,[DaysToManufacture]
	,p.[ProductLine]				  AS [Product Line]
	,p.[DealerPrice]				  AS [Dealer Price]
		--,[Class]
		--,[Style] 
	,p.[ModelName]				      AS [Model Name]	
		--,[LargePhoto]
	,p.[EnglishDescription]			  AS [Product Description]
		--,[FrenchDescription]
		--,[ChineseDescription]
		--,[ArabicDescription]
		--,[HebrewDescription]
		--,[ThaiDescription]
		--,[GermanDescription]
		--,[JapaneseDescription]
		--,[TurkishDescription]
		--,[StartDate]
		--,[EndDate]
	,ISNULL(p.[Status], 'Outdated')	    AS Status

FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] p
	LEFT JOIN dbo.DimProductSubcategory ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
	