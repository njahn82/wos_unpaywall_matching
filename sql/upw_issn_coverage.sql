SELECT 
  ROUND((SUM(CASE WHEN JOURNAL_ISSNS IS NOT NULL THEN 1 ELSE 0 END)/COUNT(*))*100, 2) AS PCT_COVERAGE 
FROM 
  GESISNFRASER.UPW_14_NORM
WHERE
  ARTICLE_TYPE = 'journal-article'
