SELECT 
    LOWER(TRIM(TITLE)) AS ARTICLE_TITLE, COUNT(*) AS N
FROM 
    GWDGAHOBERT.UPW_APR19_MATCHINGTEST_14
WHERE
    GENRE = 'journal-article'
    AND TITLE IS NOT NULL
GROUP BY LOWER(TRIM(TITLE))
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC
FETCH FIRST 100 ROWS ONLY