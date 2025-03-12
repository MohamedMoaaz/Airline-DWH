-- 1. How often they upgrade
SELECT
    fp.passenger_key,  dp.passenger_firstname, dp.passenger_lastname,
    COUNT(*) AS total_upgrades, -- Count of upgrades
    SUM(fp.points_redeemed) AS TP_redeemed_for_upgrades
FROM  fact_points fp
JOIN
    dim_services ds ON fp.service_key = ds.service_key
JOIN
    dim_passenger dp ON fp.passenger_key = dp.passenger_key
WHERE
    ds.service_type = 'Seat Upgrade' -- Filter for seat upgrade services
GROUP BY
    fp.passenger_key, dp.passenger_firstname, dp.passenger_lastname
ORDER BY
    total_upgrades DESC;
    
    
    
-- 2. How they earn and redeem their frequent flyer miles
SELECT
    fp.passenger_key, dp.passenger_firstname, dp.passenger_lastname,
    SUM(fp.points_earned) AS total_points_earned,
    SUM(fp.points_redeemed) AS total_points_redeemed,
    SUM(fp.points_expired) AS total_points_expired,
    (SUM(fp.points_earned) - SUM(fp.points_redeemed) - SUM(fp.points_expired)) AS points_remaining
FROM
    fact_points fp
JOIN
    dim_passenger dp ON fp.passenger_key = dp.passenger_key
GROUP BY
    fp.passenger_key, dp.passenger_firstname, dp.passenger_lastname
ORDER BY
    total_points_earned DESC;
     
-- 3. Whether they respond to special fare promotions
SELECT
    fp.passenger_key, dp.passenger_firstname, dp.passenger_lastname,
    COUNT(*) AS total_promotion_transactions, 
    SUM(fp.points_earned) AS TP_earned_during_promotions,
    SUM(fp.points_redeemed) AS TP_redeemed_during_promotions
FROM
    fact_points fp
JOIN
    dim_passenger dp ON fp.passenger_key = dp.passenger_key
WHERE
    fp.promotion_key IS NOT NULL
GROUP BY
    fp.passenger_key, dp.passenger_firstname, dp.passenger_lastname
ORDER BY
    total_promotion_transactions DESC;

-- Which services are most frequently used by passengers?
SELECT 
    s.SERVICE_TYPE,
    COUNT(f.SERVICE_KEY) AS Usage_Count
FROM Fact_Points f
JOIN dim_services s ON f.SERVICE_KEY = s.SERVICE_KEY
GROUP BY s.SERVICE_TYPE
ORDER BY Usage_Count DESC;
