-- Get the alphaID and hotelAmount for entries with hotelAmount greater than 1500.

SELECT a.alphaID, e.hotelAmount
FROM Alpha a
JOIN Echo e ON a.bravoCode = e.foxtrotLevel
WHERE e.hotelAmount > 1500.00;

/* Expected Results

| alphaID |  hotelAmount |
|---------|--------------|
|    16   |      1600    |
|    17   |      1700    |
|    18   |      1800    |
|    19   |      1900    |
|    20   |      2000    |
|    21   |      2100    |
|    22   |      2200    |
|    23   |      2300    |
|    24   |      2400    |
|    25   |      2500    |

*/