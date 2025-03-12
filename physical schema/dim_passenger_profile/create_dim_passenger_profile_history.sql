CREATE TABLE DWH_Project.dim_passenger_profile_history (
    profile_history_key INT64,
    profile_key INT64,
    frequent_flyer_tier STRING,
    home_airport STRING,
    lifetime_mileage_tier STRING,
    start_date DATE,
    end_date DATE
);
