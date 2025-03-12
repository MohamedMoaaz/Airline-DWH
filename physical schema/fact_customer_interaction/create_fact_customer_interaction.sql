CREATE TABLE DWH_Project.fact_customer_interaction (
    passanger_key INT64,
    passanger_profile_key INT64,
    aircraft_key INT64,
    origin_airport_key INT64,
    destination_airport_key INT64,
    issued_date_key INT64,
    closed_date_key INT64,
    crew_key INT64,
    interaction_key INT64,
    employee_key INT64,
    interaction_id INT64,
    status STRING,
    passenger_satisfaction STRING,
    channel_key INT64,
    issued_time TIMESTAMP,
    closed_time TIMESTAMP
);
