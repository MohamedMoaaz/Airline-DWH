-- Profile histoy 1
INSERT INTO dim_passenger_profile (profile_history_key, profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, start_date, end_date)
VALUES (1, 1, 'Platinum', 'JFK', 'Under 100,000 miles', TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'));

-- Profile histoy 2
INSERT INTO dim_passenger_profile (profile_history_key, profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, start_date, end_date)
VALUES (2, 2, 'Gold', 'LHR', 'Under 100,000 miles', TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-08-15', 'YYYY-MM-DD'));

-- Profile histoy 3
INSERT INTO dim_passenger_profile (profile_history_key,profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, start_date, end_date)
VALUES (3, 3, 'Silver', 'YYZ', '100,000-499,999 miles', TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-06-15', 'YYYY-MM-DD'));

