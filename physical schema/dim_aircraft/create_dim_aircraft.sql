CREATE TABLE DWH_Project.dim_aircraft (
    aircraft_key            INT64,       -- Surrogate Key
    aircraft_model          STRING,      -- Aircraft model name
    aircraft_manufacturer   STRING,      -- Manufacturer name
    aircraft_capacity       INT64,       -- Total seating capacity
    aircraft_enginetype     STRING,      -- Engine type
    aircraft_status         STRING,      -- Active, Retired, etc.
    economy_seats_range     STRING,      -- Example: "150-200"
    business_seats_range    STRING,      -- Example: "30-50"
    firstclass_seats_range  STRING,      -- Example: "10-20"
    max_miles               INT64,       -- Maximum range in miles
    max_speed               INT64        -- Maximum speed in mph/kmph
);
