SELECT SUBSTRING(PRODUCT_CODE, 1, 2) CATEGORY, COUNT(*) PRODUCTS
FROM PRODUCT
GROUP BY CATEGORY
ORDER BY CATEGORY;