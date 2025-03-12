CREATE TABLE dim_passenger_profile_history (
    profile_history_key NUMBER,
    profile_key NUMBER,
    frequent_flyer_tier VARCHAR2(50),
    home_airport VARCHAR2(100),
    lifetime_mileage_tier VARCHAR2(50),
    start_date Date,
    end_date Date
);
