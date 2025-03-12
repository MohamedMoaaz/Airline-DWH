CREATE TABLE DWH_Project.dim_country_specific_date (
    date_key INT64,
    country_key INT64,
    country_name STRING,
    civil_name STRING,
    civil_holiday_flag STRING,
    civil_holiday_name STRING,
    religious_holiday_flag STRING,
    religious_holiday_name STRING,
    weekday_indicator STRING,
    season_name STRING
);
