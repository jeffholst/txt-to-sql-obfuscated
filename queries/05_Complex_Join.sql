-- Find alphaID, echoID, kiloID, and papaID where deltaValue is greater than 50 and romeoFlag is TRUE.

SELECT a.alphaID, e.echoID, k.kiloID, p.papaID
FROM Alpha a
JOIN Echo e ON a.bravoCode = e.foxtrotLevel
JOIN Kilo k ON e.echoID = k.mikeReference
JOIN Papa p ON k.novemberRate = p.quebecValue
WHERE a.deltaValue > 50.00 AND p.romeoFlag = 1;

/* Expected Results

| alphaID |  echoID |  kiloID |  papaID |
|---------|---------|---------|---------|
|    5    |    5    |    5    |    5    |
|    7    |    7    |    7    |    7    |
|    9    |    9    |    9    |    9    |
|   15    |   15    |   15    |   15    |
|   17    |   17    |   17    |   17    |
|   23    |   23    |   23    |   23    |
|   25    |   25    |   25    |   25    |

*/