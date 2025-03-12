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
    COUNT(ci.INTERACTION_ID) AS HighSeverityInteractions
FROM DWH_Project.fact_customer_interaction ci
JOIN DWH_Project.dim_AirCraft ac ON ci.AIRCRAFT_KEY = ac.AircraftKey
JOIN DWH_Project.dim_interaction i ON ci.INTERACTION_KEY = i.INTERACTION_KEY
WHERE i.Severity = 'High'
GROUP BY ac.AircraftKey
ORDER BY HighSeverityInteractions DESC
LIMIT 1;

-- 3. What is the average passenger satisfaction score for each interaction type?
SELECT
    i.INTERACTION_TYPE,
    AVG(CASE
        WHEN ci.PASSENGER_SATISFACTION = 'Neutral' THEN 3
        WHEN ci.PASSENGER_SATISFACTION = 'Satisfied' THEN 5
        WHEN ci.PASSENGER_SATISFACTION = 'Dissatisfied' THEN 1
        ELSE NULL end) AS AvgSatisfaction
FROM DWH_Project.fact_customer_interaction ci
JOIN DWH_Project.dim_interaction i ON ci.INTERACTION_ID = i.INTERACTION_KEY
GROUP BY i.INTERACTION_TYPE
ORDER BY AvgSatisfaction DESC;
