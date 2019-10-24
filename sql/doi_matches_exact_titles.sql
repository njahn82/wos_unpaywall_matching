SELECT 
    ROUND(SUM(CASE WHEN t1.ARTICLE_TITLE = t2.ARTICLE_TITLE THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS PCT_EXACT_TITLE_MATCHES
FROM
    UPW_14_NORM t1
INNER JOIN
    WOS_12_17_NORM t2
ON
    t1.DOI = t2.DOI AND
    t1.ARTICLE_TYPE = 'journal-article' AND
    t2.ARTICLE_TYPE IN ('article', 'review')