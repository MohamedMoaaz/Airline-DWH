CREATE TABLE fact_customer_interaction (
    passanger_key NUMBER,
    passanger_profile_key NUMBER,
    aircraft_key NUMBER,
    origin_airport_key NUMBER,
    destination_airport_key NUMBER,
    issued_date_key NUMBER,
    closed_date_key NUMBER,
    crew_key NUMBER,
    interaction_key NUMBER,
    employee_key NUMBER,
    interaction_id NUMBER,
    status VARCHAR2(50),
    passenger_satisfaction VARCHAR2(50),
    channel_key NUMBER,
    issued_time TIMESTAMP,
    closed_time TIMESTAMP
);
