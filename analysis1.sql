/* Using 'sliding window' previous time steps as input variables and use the next time step as the output variable. */

SELECT *,
        array_agg(co_count)
                OVER (ORDER BY co_date ROWS
                         BETWEEN 7 PRECEDING AND 7 FOLLOWING),
        avg(co_count)
                OVER (ORDER BY co_date ROWS
                         BETWEEN 7 PRECEDING AND 7 FOLLOWING)
FROM env_data;