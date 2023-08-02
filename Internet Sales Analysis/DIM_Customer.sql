SELECT 
	c.[CustomerKey] AS CustomerKey,
     -- ,[GeographyKey]
     -- ,[CustomerAlternateKey]
     -- ,[Title]
     c.[FirstName] AS FirstName
     -- ,[MiddleName]
      ,c.[LastName] AS LastName
	  ,c.FirstName + ' ' + c.LastName AS FullName
     -- ,[NameStyle]
      ,DATEDIFF(YEAR, BirthDate, '2021/02/11') AS Age -- we've used this date because the project was given on that date
	 -- ,DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age - this can be used when looking for current age
      --,[MaritalStatus]
      --,[Suffix]
      ,case c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
     -- ,[TotalChildren]
     -- ,[NumberChildrenAtHome]
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
      ,c.[DateFirstPurchase] AS DateFirstPurchase
      --,[CommuteDistance]
	  ,g.City AS CustomerCity
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN AdventureWorksDW2019.dbo.DimGeography AS g
	ON c.GeographyKey = g.GeographyKey	
  ORDER BY CustomerKey 
