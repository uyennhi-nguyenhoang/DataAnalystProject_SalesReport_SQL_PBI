-- Remove unnecessary columns & rename columns from DimDate table

SELECT 
     [DateKey]
    ,[FullDateAlternateKey]       AS Date
      	--,[DayNumberOfWeek]	        
    ,[EnglishDayNameOfWeek]       AS Weekday
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


FROM 
	[AdventureWorksDW2019].[dbo].[DimDate]
WHERE 
        CalendarYear >= 2019
