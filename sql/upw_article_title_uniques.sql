SELECT 
  ROUND((COUNT (DISTINCT ARTICLE_TITLE) / COUNT(*))*100, 2) AS PCT_UNIQUE
FROM 
  GESISNFRASER.UPW_14_NORM
WHERE
  ARTICLE_TYPE = 'journal-article'