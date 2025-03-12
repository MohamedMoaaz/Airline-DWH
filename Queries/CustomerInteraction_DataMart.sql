-- 1. What are the top 5 airports with the highest number of customer interactions?
SELECT
    a.AirportKey,
    COUNT(ci.InteractionId) AS InteractionCount
FROM fact_CustomerInteraction ci
JOIN dim_airport a ON ci.OriginAirportKey = a.AirportKey
GROUP BY a.AirportKey
ORDER BY InteractionCount DESC
LIMIT 5;

-- 2. Which aircraft has the highest number of customer interactions with a severity level of 'High'?
SELECT
    ac.AircraftKey,
    COUNT(ci.InteractionId) AS HighSeverityInteractions
FROM fact_CustomerInteraction ci
JOIN dim_aircraft ac ON ci.AircraftKey = ac.AircraftKey
JOIN dim_interaction i ON ci.InteractionKey = i.InteractionKey
WHERE i.Severity = 'High'
GROUP BY ac.AircraftKey
ORDER BY HighSeverityInteractions DESC
LIMIT 1;

-- 3. What is the average passenger satisfaction score for each interaction type?
SELECT
    i.InteractionType,
    AVG(ci.PassengerSatisfaction) AS AvgSatisfaction
FROM fact_CustomerInteraction ci
JOIN dim_interaction i ON ci.InteractionKey = i.InteractionKey
GROUP BY i.InteractionType
ORDER BY AvgSatisfaction DESC;
