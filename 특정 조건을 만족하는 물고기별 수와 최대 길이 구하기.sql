SELECT 
    n as FISH_COUNT,
    l as MAX_LENGTH,
    t as FISH_TYPE
FROM
    (SELECT 
        fish_type as t, 
        AVG(CASE WHEN length > 10 THEN length ELSE 10 END) as a,
        MAX(length) as l,
        COUNT(ID) as n
    FROM fish_info
    GROUP BY fish_type) AS t1
WHERE 
    t1.a > 33
ORDER BY 
    FISH_TYPE ASC