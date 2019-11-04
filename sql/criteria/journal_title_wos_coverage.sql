SELECT 
  ROUND((SUM(CASE WHEN SOURCETITLE IS NOT NULL THEN 1 ELSE 0 END)/COUNT(*))*100, 2) AS PCT_COVERAGE 
FROM 
  WOS_B_2019.ITEMS t1
INNER JOIN
  WOS_B_2019.SOURCES t2
ON
  t1.FK_SOURCES = t2.PK_SOURCES
  AND t1.DOCTYPE IN ('Article', 'Review')
  AND t1.PUBYEAR >= 2014
  AND t1.PUBYEAR <= 2016