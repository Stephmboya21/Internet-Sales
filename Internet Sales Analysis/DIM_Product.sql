SELECT 
	 p.[ProductKey]
     ,p.[ProductAlternateKey] AS ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS ProductName
	  ,pc.EnglishProductCategoryName AS ProductCategory
	  ,ps.EnglishProductSubcategoryName AS SubCategory
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color] AS ProductColor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] AS ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] AS ProductLine
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName]
      --,[LargePhoto]
      ,p.[EnglishDescription] AS ProductDescription
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
      ,ISNULL(p.[Status], 'Outdated') AS ProductStatus
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
	LEFT JOIN AdventureWorksDW2019.dbo.DimProductSubcategory AS ps
		ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
	LEFT JOIN AdventureWorksDW2019.dbo.DimProductCategory AS pc
		ON ps.ProductCategoryKey = pc.ProductCategoryKey

  ORDER BY p.ProductKey
