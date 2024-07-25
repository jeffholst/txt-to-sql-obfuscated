-- Count the number of Alpha records with corresponding Echo records.

SELECT COUNT(a.alphaID) AS AlphaWithEchoCount
FROM Alpha a
JOIN Echo e ON a.bravoCode = e.foxtrotLevel;

/* Expected Results

| AlphaWithEchoCount |
|--------------------|
|         25         |

*/