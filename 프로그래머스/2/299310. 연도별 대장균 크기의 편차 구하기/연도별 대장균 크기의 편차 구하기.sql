SELECT YEAR(e1.DIFFERENTIATION_DATE) YEAR, 
(e2.YEAR_MAX - e1.SIZE_OF_COLONY) YEAR_DEV, 
e1.ID
FROM ECOLI_DATA e1
LEFT JOIN
(SELECT YEAR(DIFFERENTIATION_DATE) YEAR, MAX(SIZE_OF_COLONY) YEAR_MAX FROM ECOLI_DATA 
GROUP BY YEAR) e2 ON YEAR(e1.DIFFERENTIATION_DATE) = e2.YEAR
ORDER BY YEAR, YEAR_DEV;