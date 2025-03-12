--Identifies the top 10 most booked flight routes (origin to destination) among frequent flyers.

SELECT 
    a1.Airport_name AS OriginAirport,
    a2.Airport_name AS DestinationAirport,
    COUNT(*) AS TripCount
FROM fact_Flight f
JOIN dim_Passenger_Profile pp ON f.PassengerProfileKey = pp.PassengerProfileKey
JOIN dim_AirPort a1 ON f.OriginAirportKey = a1.AirPortKey
JOIN dim_AirPort a2 ON f.DestinationAirportKey = a2.AirPortKey
WHERE pp.FrequentFlyerTier IS NOT NULL
GROUP BY a1.Airport_name, a2.Airport_name
ORDER BY TripCount DESC
LIMIT 10;
--------------------------------------------------------------------------------------------------------------------------------------------
--Analyzes how different tiers of frequent flyers (Gold, Platinum, etc.) book flights by fare class (Economy, Business, First Class).

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
--------------------------------------------------------------------------------------------------------------------------------------------
--Tracks frequent flyers' total flights and overnight stays.

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
--------------------------------------------------------------------------------------------------------------------------------------------
--Calculates the percentage distribution of frequent flyers in the Gold, Platinum, Aluminum, and Titanium tiers.

SELECT 
    pp.FrequentFlyerTier,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER () AS Percentage
FROM dim_Passenger_Profile pp
WHERE pp.FrequentFlyerTier IN ('Gold', 'Platinum', 'Aluminum', 'Titanium')
GROUP BY pp.FrequentFlyerTier;


