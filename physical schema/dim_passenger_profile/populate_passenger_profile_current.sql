INSERT INTO dim_passenger_profile (profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, updated_date)
VALUES (0, 'Not loyal', 'None', 'None', TO_DATE('2024-05-15', 'YYYY-MM-DD'));

-- Profile 1
INSERT INTO dim_passenger_profile (profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, updated_date)
VALUES (1, 'Gold', 'JFK', 'Under 100,000 miles', TO_DATE('2024-06-15', 'YYYY-MM-DD'));

-- Profile 2
INSERT INTO dim_passenger_profile (profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, updated_date)
VALUES (2, 'Silver', 'LHR', 'Under 100,000 miles', TO_DATE('2024-08-15', 'YYYY-MM-DD'));

-- Profile 3
INSERT INTO dim_passenger_profile (profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, updated_date)
VALUES (3, 'Platinum', 'YYZ', '100,000-499,999 miles', TO_DATE('2024-06-15', 'YYYY-MM-DD'));

-- Profile 4
INSERT INTO dim_passenger_profile (profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, updated_date)
VALUES (4, 'Bronze', 'SYD', 'Under 100,000 miles', TO_DATE('2024-05-15', 'YYYY-MM-DD'));

-- Profile 5
INSERT INTO dim_passenger_profile (profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, updated_date)
VALUES (5, 'Gold', 'FRA', '100,000-499,999 miles', TO_DATE('2024-05-15', 'YYYY-MM-DD'));

-- Profile 6
INSERT INTO dim_passenger_profile (profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, updated_date)
VALUES (6, 'Silver', 'CDG', '100,000-499,999 miles', TO_DATE('2024-05-15', 'YYYY-MM-DD'));

-- Profile 7
INSERT INTO dim_passenger_profile (profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, updated_date)
VALUES (7, 'Platinum', 'NRT', '1,000,000-1,999,999 miles', TO_DATE('2024-05-15', 'YYYY-MM-DD'));

-- Profile 8
INSERT INTO dim_passenger_profile (profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, updated_date)
VALUES (8, 'Bronze', 'DXB', 'Under 100,000 miles', TO_DATE('2024-05-15', 'YYYY-MM-DD'));

-- Profile 9
INSERT INTO dim_passenger_profile (profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, updated_date)
VALUES (9, 'Gold', 'JFK', '100,000-499,999 miles', TO_DATE('2024-05-15', 'YYYY-MM-DD'));

-- Profile 10
INSERT INTO dim_passenger_profile (profile_key, frequent_flyer_tier, home_airport, lifetime_mileage_tier, updated_date)
VALUES (10, 'Silver', 'LHR', 'Under 100,000 miles', TO_DATE('2024-05-15', 'YYYY-MM-DD'));
