SELECT 
  ROUND((SUM(CASE WHEN BLOCKED_NAME IS NOT NULL THEN 1 ELSE 0 END)/COUNT(*))*100, 2) AS PCT_COVERAGE 
FROM 
  GESISNFRASER.WOS_12_17_NORM t1
LEFT JOIN
  GESISNFRASER.WOS_12_17_AUTHORNAMES t2
ON
  t1.PK_ITEMS = t2.PK_ITEMS
  AND ARTICLE_TYPE IN ('article', 'review')
  AND AUTHOR_POSITION = 'last'