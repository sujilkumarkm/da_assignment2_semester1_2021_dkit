/* The reason to use a moving average for your metrics is to make it easier to spot trends. 
Cumulative moving average */

SELECT ad.co_date, ad.co_count,
       AVG(ad.co_count)
            OVER(ORDER BY ad.co_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS avg_co_ytd
FROM env_data ad;