SELECT 
    f.PassangerKey, 
    COUNT(DISTINCT f.TicketNumber) AS TotalFlights,
    SUM(f.OvernightStays) AS TotalOvernightStays,
    AVG(f.OvernightStays) AS AvgOvernightStays
FROM fact_Flight f
JOIN dim_Passenger_Profile pp 
    ON f.PassangerProfileKey = pp.PassangerProfileKey
WHERE pp.Loyalty <> 'Not Loyal'
GROUP BY f.PassangerKey
ORDER BY TotalFlights DESC;
----------------------------
SELECT 
    pp.FrequentFlyerTier, 
    fb.Class AS FareClass,
    COUNT(f.TicketNumber) AS TotalFlights, 
    AVG(f.FarePaid) AS AvgFarePaid
FROM fact_Flight f
JOIN dim_Passenger_Profile pp ON f.PassengerProfileKey = pp.PassengerProfileKey
JOIN dim_FairBase fb ON f.FareBasisKey = fb.FareBasisKey
WHERE pp.FrequentFlyerTier <> 'Not Loyal'
GROUP BY pp.FrequentFlyerTier, fb.Class
ORDER BY pp.FrequentFlyerTier DESC, TotalFlights DESC;
