SELECT *, 
        array_agg(co_count) 
                OVER (ORDER BY co_date ROWS
                         BETWEEN 1 PRECEDING AND 1 FOLLOWING),
        avg(co_count) 
                OVER (ORDER BY co_date ROWS
                         BETWEEN 1 PRECEDING AND 1 FOLLOWING)
FROM env_data;