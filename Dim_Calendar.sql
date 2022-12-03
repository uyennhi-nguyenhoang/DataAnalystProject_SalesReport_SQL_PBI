-- Remove unnescessary columns & rename columns
-- A cool tip is MonthShort, so that it'll be shown short in visualization!
-- Note to self: he did the same as Coursera teacher who used -- to eliminate unused columns
---- instead of typing out columns by columns. this can keep u aware of all the columns u have


SELECT 
	 [DateKey]
    ,[FullDateAlternateKey]       AS Date
      --,[DayNumberOfWeek]	        
     ,[EnglishDayNameOfWeek]      AS Weekday
      --,[SpanishDayNameOfWeek]	  
      --,[FrenchDayNameOfWeek]	  
      --,[DayNumberOfMonth]		  
      --,[DayNumberOfYear]		  
    ,[WeekNumberOfYear]           AS WeekNo 
    ,[EnglishMonthName]           AS Month
    ,LEFT([EnglishMonthName],3)   AS MonthShort
	  --,[SpanishMonthName]		  
      --,[FrenchMonthName]		  
    ,[MonthNumberOfYear]          AS MonthNo
    ,[CalendarQuarter]            AS Quarter
    ,[CalendarYear]               AS Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
	, CAST(MonthNumberOfYear AS varchar) + '/' + CAST(CalendarYear AS varchar) AS [Month & Year]
	, 'Qtr' + CAST(CalendarQuarter AS varchar) + ' ' + CAST(CalendarYear AS varchar) AS [Quarter & Year]
FROM 
	[AdventureWorksDW2019].[dbo].[DimDate]
