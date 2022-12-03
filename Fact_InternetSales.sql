--Clean FactInternetSales table
SELECT 
	 [ProductKey]
	,[OrderDateKey]
	,[DueDateKey]
	,[ShipDateKey]
	,[CustomerKey]
		--,[PromotionKey]
		--,[CurrencyKey]
		--,[SalesTerritoryKey]
	,[SalesOrderNumber]
		--,[SalesOrderLineNumber]
		--,[RevisionNumber]
	,[OrderQuantity]
		--,[UnitPrice]
		--,[ExtendedAmount]
		--,[UnitPriceDiscountPct]
		--,[DiscountAmount]
		--,[ProductStandardCost]
		--,[TotalProductCost]
	,[SalesAmount]   AS [Sales Amount]
		--,[TaxAmt]
		--,[Freight]
		--,[CarrierTrackingNumber]
		--,[CustomerPONumber]
		--,[OrderDate]
		--,[DueDate]
		--,[ShipDate]
FROM 
	[AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE
	-- LEFT(OrderDateKey,4) >= YEAR(GETDATE()) -2	:Ensure we always only bring 2 years of date from extraction
	LEFT(OrderDateKey,4) >= 2019
ORDER BY 
	OrderDateKey 