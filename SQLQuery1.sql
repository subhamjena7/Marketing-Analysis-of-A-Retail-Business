-- SQL Query to categorize products based on their price

SELECT 
    ProductID,  
    ProductName,  
    Price,  
	-- Category, -- Selects the product category for each product

    CASE -- Categorizes the products into price categories: Low, Medium, or High
        WHEN Price < 50 THEN 'Low'  
        WHEN Price BETWEEN 50 AND 200 THEN 'Medium'  
        ELSE 'High'  
    END AS PriceCategory  -- Names the new column as PriceCategory

FROM 
    dbo.products;  