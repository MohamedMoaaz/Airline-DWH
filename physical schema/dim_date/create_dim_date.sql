CREATE TABLE DWH_Project.dim_date (
    DateKey         INT64,       -- Surrogate Key in YYYYMMDD format
    Full_date       DATE,        -- Actual Date
    DayNumber       INT64,       -- Day of the month (1-31)
    DayName         STRING,      -- Name of the day (e.g., 'Monday')
    monthName       STRING,      -- Name of the month (e.g., 'March')
    yearNo          INT64,       -- Year (e.g., 2025)
    season          STRING,      -- Season (e.g., 'Winter', 'Spring')
    quarter         INT64        -- Quarter (1-4)
);
