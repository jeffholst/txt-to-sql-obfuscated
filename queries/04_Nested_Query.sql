-- Get the echoID and hotelAmount for the highest hotelAmount where golfStatus is TRUE.

SELECT e.echoID, e.hotelAmount
FROM Echo e
WHERE e.hotelAmount = (SELECT MAX(hotelAmount) FROM Echo WHERE golfStatus = 1);

/* Expected Results

| echoID |  hotelAmount |
|--------|--------------|
|   25   |     2500     |

*/