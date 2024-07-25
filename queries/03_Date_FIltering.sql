-- Find the kiloID and papaID where oscarDate is between '2024-03-05' and '2024-03-15'.

SELECT k.kiloID, p.papaID
FROM Kilo k
JOIN Papa p ON k.novemberRate = p.quebecValue
WHERE k.oscarDate BETWEEN '2024-03-05' AND '2024-03-15';

/* Expected Results

| kiloID |  papaID |
|--------|---------|
|    5   |     5   |
|    6   |     6   |
|    7   |     7   |
|    8   |     8   |
|    9   |     9   |
|   10   |    10   |
|   11   |    11   |
|   12   |    12   |
|   13   |    13   |
|   14   |    14   |
|   15   |    15   |

*/